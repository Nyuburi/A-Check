import 'package:a_check/models/school.dart';
import 'package:a_check/widgets/student_attendance_record_card.dart';
import 'package:flutter/material.dart';

class SARCState extends State<StudentAttendanceRecordCard> {
  AttendanceStatus? status;

  void onRadioChanged(AttendanceStatus? value) async {
    setState(() {
      status = value;
    });

    if (value != null) {
      widget.record.status = value;

      if (widget.isLocal == false) {
        await attendancesRef.doc(widget.record.id).update(status: status!);
      }
    }
  }

  @override
  void initState() {
    super.initState();

    status = widget.record.status;
  }

  @override
  Widget build(BuildContext context) => SARCView(this);
}
