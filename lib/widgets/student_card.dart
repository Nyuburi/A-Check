import 'package:a_check/models/school.dart';
import 'package:a_check/pages/student/student_page.dart';
import 'package:a_check/themes.dart';
import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({Key? key, required this.student, this.studentClass})
      : super(key: key);

  final Student student;
  final SchoolClass? studentClass;

  @override
  Widget build(BuildContext context) {
    final textColor = Themes.main.colorScheme.onPrimaryContainer;

    void onTap() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => StudentPage(
                    studentId: student.id,
                    studentClass: studentClass,
                  )));
    }

    Future<Color?> colorByAbsent() async {
      if (studentClass == null) {
        return null;
      }

      final absences =
          (await student.getPALEValues(studentClass!.id))['absent']!;
      final limit = studentClass!.maxAbsences;
      final warning = (limit / 2).ceil();

      if (absences >= limit) {
        return Colors.red[200];
      } else if (absences >= warning) {
        return Colors.amber[200];
      } else {
        return null;
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: FutureBuilder(
        future: colorByAbsent(),
        builder: (context, snapshot) => Card(
          color: snapshot.data != null ? snapshot.data! : Themes.main.colorScheme.primaryContainer,
          elevation: 0.5,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      student.fullName.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    Text(
                      student.id,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: textColor),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
