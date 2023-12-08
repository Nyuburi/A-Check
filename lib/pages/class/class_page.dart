import 'package:a_check/models/school_class.dart';
import 'package:a_check/pages/class/controllers/class_state.dart';
import 'package:a_check/themes.dart';
import 'package:a_check/utils/abstracts.dart';
import 'package:a_check/widgets/attendance_record_card.dart';
import 'package:a_check/widgets/student_card.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({Key? key, required this.classId}) : super(key: key);
  final String classId;

  @override
  State<ClassPage> createState() => ClassState();
}

class ClassView extends WidgetView<ClassPage, ClassState> {
  ClassView(state, {Key? key}) : super(state, key: key);

  final headerTextColor = Themes.main.colorScheme.onPrimary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DefaultTabController(
          length: 2,
          child: FirestoreBuilder(
            ref: classesRef.doc(widget.classId),
            builder: (context, snapshot, child) =>
                buildBody(context, snapshot, child),
          )),
      floatingActionButton: buildFab(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      actions: [
        PopupMenuButton(
          tooltip: "Edit or Delete Class",
          elevation: 1,
          itemBuilder: (context) => [
            PopupMenuItem(
              onTap: state.editClass,
              child: const Text("Edit class"),
            ),
            PopupMenuItem(
                onTap: state.deleteClass, child: const Text("Delete class")),
          ],
        )
      ],
    );
  }

  Widget buildFab() {
    return FloatingActionButton.extended(
      label: const Text("Take attendance"),
      icon: const Icon(Icons.checklist),
      tooltip: "Take Attendance",
      onPressed: state.takeAttendance,
    );
  }

  Widget buildBody(BuildContext context,
      AsyncSnapshot<SchoolClassDocumentSnapshot> snapshot, Widget? child) {
    if (snapshot.connectionState == ConnectionState.active) {
      if (snapshot.hasData) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            buildHeader(snapshot.data!.data!),
            buildTabBar(),
            Expanded(child: buildTabBarView(snapshot.data!.data!))
          ],
        );
      } else {
        return const Center(
          child: Text("Failed to get class information..."),
        );
      }
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  Widget buildTabBar() {
    return Material(
      color: Themes.main.colorScheme.primary,
      child: TabBar(
        indicatorColor: Themes.main.colorScheme.primaryContainer,
        labelColor: headerTextColor,
        tabs: const [
          Tab(text: "Student List", icon: Icon(Icons.group),),
          Tab(text: "Attendance Records", icon: Icon(Icons.list))
        ],
      ),
    );
  }

  Widget buildTabBarView(SchoolClass schoolClass) {
    return TabBarView(
      children: [
        buildStudentsListView(schoolClass),
        buildReportsListView(schoolClass)
      ],
    );
  }

  Widget buildHeader(SchoolClass schoolClass) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Themes.main.colorScheme.primary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                schoolClass.name,
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: headerTextColor,
                ),
              ),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Text(
                  schoolClass.section,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: headerTextColor,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              schoolClass.getSchedule(),
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: headerTextColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Themes.main.colorScheme.secondary),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${schoolClass.studentIds.length.toString()} student${schoolClass.studentIds.length > 1 ? "s" : ""}",
                    style:
                        TextStyle(color: Themes.main.colorScheme.onSecondary),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildStudentsListView(SchoolClass schoolClass) {
    return FutureBuilder(
        future: schoolClass.getStudents(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return const Center(
                  child: Text("No enrolled students!"),
                );
              }

              return ListView(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  children: snapshot.data!
                      .map((e) => StudentCard(
                            student: e,
                            studentClass: schoolClass,
                          ))
                      .toList());
            } else {
              return const Center(
                child: Text("Failed to get students of class"),
              );
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget buildReportsListView(SchoolClass schoolClass) {
    return FutureBuilder(
      future: schoolClass.getAttendanceRecords(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final records = snapshot.data!;

          return ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            children: records.entries
                .map((e) => AttendanceRecordCard(
                    dateTime: e.key, attendanceRecords: e.value))
                .toList(),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
