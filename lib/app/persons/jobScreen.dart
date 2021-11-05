// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/app/dashboard/constants.dart';
import 'package:flutter_course/app/home/Models/job.dart';
import 'package:url_launcher/url_launcher.dart';

class JobScreen extends StatelessWidget {
  Job job;
  JobScreen({@required this.job});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Job Detail"),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(
                          "${job.title}",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Job Description",
                          style: TextStyle(color: Colors.green)
                          // fontSize: 18,
                          // fontWeight: FontWeight.bold
                          ,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "${job.description}",
                        style: TextStyle(
                            color: ksecond,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        //maxLines: 3,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Company name : ',
                              style: TextStyle(color: Colors.green))),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "${job.company_name}",
                        style: TextStyle(
                            color: ksecond,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Address : ',
                              style: TextStyle(color: Colors.green))),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "${job.address}",
                        style: TextStyle(
                            color: ksecond,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Salary : ',
                              style: TextStyle(color: Colors.green))),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "${job.salary}",
                        style: TextStyle(
                            color: ksecond,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Contact No :',
                              style: TextStyle(color: Colors.green))),
                      Row(
                        children: [
                          Text(
                            '${job.contact_no}',
                            style: TextStyle(
                                color: ksecond,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          new IconButton(
                            icon: Icon(
                              Icons.phone,
                              color: Colors.green,
                              size: 30,
                            ),
                            onPressed: () => launch("tel:${job.contact_no}"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
