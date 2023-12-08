import 'package:a_check/globals.dart';
import 'package:a_check/pages/forms/class_form_page.dart';
import 'package:a_check/pages/dashboard/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => HomeView(this);

  void addClass() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ClassFormPage()));
  }

  void logOut() async {
    await FirebaseAuth.instance.signOut();

    snackbarKey.currentState!.showSnackBar(const SnackBar(content: Text("You have logged out.")));
  }
}
