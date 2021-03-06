import 'package:flutter/material.dart';
import 'package:flutter_course/app/common_widgets/profile_menu.dart';
import 'package:flutter_course/app/home/Models/product.dart';
import 'package:flutter_course/app/home/product/home_page.dart';
//import 'package:flutter_course/app/ui/screens/home.dart';
import 'package:flutter_course/app/dashboard/localshops.dart';
//import 'logout.dart';
//import 'machinery.dart';
import 'package:flutter_course/app/services/database.dart';
import 'person.dart';
import 'package:flutter_course/app/services/auth.dart';

import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  Dashboard({@required this.auth});
  final AuthBase auth;

  Future<void> signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
        //appBar: AppBar(title: Text('Dashboard'),),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('HomePage'),
          elevation: 10,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              // Container(
              //   // Here the height of the container is 30% of our total height
              //   height: size.height * .30,
              //   decoration: BoxDecoration(
              //     color: Color(0xFF26A69A),
              //   ),
              // ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("\nWelcome! What are you looking for?\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21.0,
                            fontWeight: FontWeight.w900,
                          )),

                      ProfileMenu(
                        text: "Person in Need of Job",
                        icon: "assets/person.svg",
                        press: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Provider<Database>(
                                create: (_) => FirestoreDatabase(uid: user.uid),
                                child: Person());
                          }))
                        },
                      ),
                      ProfileMenu(
                        text: "Machinery",
                        icon: "assets/machinery.svg",
                        press: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Provider<Database>(
                                create: (_) => FirestoreDatabase(uid: user.uid),
                                child: HomePage(
                                  auth: auth,
                                ),
                              );
                            }),
                          )
                        },
                      ),
                      ProfileMenu(
                        text: "Local Shops",
                        icon: "assets/shops.svg",
                        press: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Provider<Database>(
                                  create: (_) =>
                                      FirestoreDatabase(uid: user.uid),
                                  child: Localshop());
                            }),
                          )
                        },
                      ),
                      ProfileMenu(
                        text: "Logout",
                        icon: "assets/logout.svg",
                        press: () => {
                          signOut(), /*{
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Logout();
                              }),*/
                        },
                      ),
                      // Expanded(
                      //   child: GridView.count(
                      //     crossAxisCount: 2,
                      //     childAspectRatio: .85,
                      //     crossAxisSpacing: 20,
                      //     mainAxisSpacing: 20,
                      //     children: <Widget>[
                      //       Catagory(
                      //         title: "Machinery",
                      //         svgSrc: "assets/machinery.svg",
                      //         press: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(builder: (context) {
                      //               return Provider<Database>(
                      //                 create: (_) =>
                      //                     FirestoreDatabase(uid: user.uid),
                      //                 child: HomePage(
                      //                   auth: auth,
                      //                 ),
                      //               );
                      //             }),
                      //           );
                      //         },
                      //       ),
                      //       Catagory(
                      //         title: "Person in Need of Job",
                      //         svgSrc: "assets/person.svg",
                      //         press: () {
                      //           Navigator.push(context,
                      //               MaterialPageRoute(builder: (context) {
                      //             return Provider<Database>(
                      //                 create: (_) =>
                      //                     FirestoreDatabase(uid: user.uid),
                      //                 child: Person());
                      //           }));
                      //         },
                      //       ),
                      //       Catagory(
                      //         title: "Local Shops",
                      //         svgSrc: "assets/shops.svg",
                      //         press: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(builder: (context) {
                      //               return Provider<Database>(
                      //                   create: (_) =>
                      //                       FirestoreDatabase(uid: user.uid),
                      //                   child: Localshop());
                      //             }),
                      //           );
                      //         },
                      //       ),
                      //       Catagory(
                      //         title: "Logout",
                      //         svgSrc: "assets/logout.svg",
                      //         press: () =>
                      //             signOut(), /*{
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(builder: (context) {
                      //               return Logout();
                      //             }),*/
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
