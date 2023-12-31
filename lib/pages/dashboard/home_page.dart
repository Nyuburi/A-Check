import 'package:a_check/main.dart';
import 'package:a_check/models/school.dart';
import 'package:a_check/pages/dashboard/controllers/home_state.dart';
import 'package:a_check/themes.dart';
import 'package:a_check/utils/abstracts.dart';
import 'package:a_check/widgets/class_card.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomeState();
}

class HomeView extends WidgetView<HomePage, HomeState> {
  const HomeView(state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTopRow(),
        Expanded(
          child: buildClassGrid(),
        ),
      ],
    );
  }

  Widget buildClassGrid() {
    return StreamBuilder(
      stream: classesRef
          .whereTeacherId(isEqualTo: auth.currentUser?.id)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            final classes = snapshot.data!.docs.map((e) => e.data).toList();

            if (classes.isEmpty) {
              return const Center(
                child: Text("You do not have any classes!"),
              );
            }

            return GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 8,
              children: classes.map((e) => ClassCard(schoolClass: e)).toList(),
            );
          } else {
            return const Center(
              child: Text("Failed to get class list"),
            );
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Padding buildTopRow() {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Image(
                image: AssetImage("assets/images/small_logo_blue.png"),
                height: 56),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "A-Check",
                style: TextStyle(
                    color: Themes.main.colorScheme.primary,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              FirestoreBuilder(
                ref: schoolRef,
                builder: (context, snapshot, child) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        snapshot.hasData
                            ? "${snapshot.data!.data!.name} (${snapshot.data!.data!.officeName})"
                            : "",
                        style: const TextStyle(
                          color: Color(0xff8b9094),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Welcome, ${auth.currentUser?.name}",
                        style: const TextStyle(
                          color: Color(0xff8b9094),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
