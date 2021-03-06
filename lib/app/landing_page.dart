import 'package:flutter/material.dart';
import 'package:flutter_course/app/dashboard/dashboard.dart';
import 'package:flutter_course/app/services/auth.dart';
import 'package:flutter_course/app/services/database.dart';
import 'package:flutter_course/app/signin/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  LandingPage({@required this.auth});
  final Auth auth;

  @override
  Widget build(BuildContext context) {
    //final auth = Provider.of<AuthBase>(context, listen: false);

    return StreamBuilder<User>(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User user = snapshot.data;
            if (user == null) {
              return signInPage(
                auth: auth,
              );
            }
            return Provider<Database>(
              create: (_) => FirestoreDatabase(uid: user.uid),
              child: Dashboard(
                auth: auth,
              ),
            );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
