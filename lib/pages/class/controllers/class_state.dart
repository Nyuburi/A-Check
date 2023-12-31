import 'dart:async';

import 'package:a_check/globals.dart';
import 'package:a_check/models/school.dart';
import 'package:a_check/pages/auto_attendance/auto_attendance_page.dart';
import 'package:a_check/pages/take_attendance/face_recognition_page.dart';
import 'package:a_check/pages/class/class_page.dart';
import 'package:a_check/utils/csv_helpers.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClassState extends State<ClassPage> {
  late SchoolClass schoolClass;
  late List<AttendanceRecord> classRecords;
  late StreamSubscription classesStream, attendancesStream;

  @override
  void initState() {
    super.initState();

    schoolClass = widget.schoolClass;

    classesStream = classesRef.doc(schoolClass.id).snapshots().listen((event) {
      if (context.mounted) {
        setState(() {
          schoolClass = event.data!;
        });
      }
    });

    attendancesStream = attendancesRef
        .whereClassId(isEqualTo: widget.schoolClass.id)
        .snapshots()
        .listen((event) {
      if (context.mounted) {
        setState(() => classRecords = event.docs.map((e) => e.data).toList()
          ..sort(
            (a, b) => a.dateTime.compareTo(b.dateTime),
          ));
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    classesStream.cancel();
    attendancesStream.cancel();
  }

  @override
  Widget build(BuildContext context) => ClassView(this);

  void backButtonPressed() {
    Navigator.pop(context);
  }

  void takeAttendance() {
    if (schoolClass.studentIds.isEmpty) {
      snackbarKey.currentState!
          .showSnackBar(const SnackBar(content: Text("You have no students!")));
      return;
    }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                FaceRecognitionPage(schoolClass: schoolClass)));
  }

  void exportDialog() async {
    final DateTimeRange? result = await showDateRangePicker(
        context: context,
        firstDate: classRecords.first.dateTime,
        lastDate: classRecords.last.dateTime);
    if (result == null) return;

    final Map<DateTime, List<AttendanceRecord>> map = {};
    for (var s in classRecords) {
      if (s.dateTime.isAfter(result.start) && s.dateTime.isBefore(result.end)) {
        final date =
            DateTime(s.dateTime.year, s.dateTime.month, s.dateTime.day);

        if (!map.containsKey(date)) {
          map[date] = [];
        }

        map[date]!.add(s);
      }
    }
    await exportRecords(map);
  }

  Future<void> exportRecords(
      Map<DateTime, List<AttendanceRecord>> records) async {
    final now = DateTime.now();
    final records = Map.fromEntries(
        (await schoolClass.getAttendanceRecords()).entries.toList()
          ..sort(
            (a, b) => a.key.compareTo(b.key),
          ));
    Map<String, List<AttendanceRecord>> map = {};

    for (var entry in records.entries) {
      for (var record in entry.value) {
        final id = record.studentId;
        if (!map.containsKey(id)) {
          map[id] = [];
        }

        try {
          // check if this record exists
          // will throw StateError if it doesnt exist
          // otherwise, do nothing
          map[id]?.firstWhere((element) =>
              DateUtils.isSameDay(element.dateTime, record.dateTime));
        } on StateError {
          // add new record
          map[id]!.add(record);
        }
      }
    }

    final header = [
      "ID",
      "Last Name",
      "First Name",
      "Middle Name",
      for (var date in records.keys) DateFormat.yMd().format(date).toString()
    ];
    final List<List<dynamic>> data = [];

    for (var entry in map.entries) {
      final student = (await studentsRef.doc(entry.key).get()).data!;
      final row = <dynamic>[
        student.id,
        student.lastName,
        student.firstName,
        student.lastName
      ];

      for (var record in entry.value) {
        row.add(record.status.toString());
      }

      data.add(row);
    }

    await CsvHelpers.exportToCsvFile(
            fileName: "${schoolClass.id}-${now.toString()}",
            header: header,
            data: data)
        .then((filePath) {
      snackbarKey.currentState!.showSnackBar(SnackBar(
          content: Text(
              "Successfully exported class attendance records as CSV file to $filePath!")));
    });
  }

  void autoAttendance() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AutoAttendancePage(
            schoolClass: schoolClass,
          ),
        ));
  }
}
