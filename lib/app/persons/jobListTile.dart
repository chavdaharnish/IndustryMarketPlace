import 'package:flutter/material.dart';
import 'package:flutter_course/app/dashboard/constants.dart';
import 'package:flutter_course/app/home/Models/job.dart';

import 'jobScreen.dart';

class JobListTile extends StatelessWidget {
  const JobListTile({Key key, @required this.job, this.onTap})
      : super(key: key);
  final Job job;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => JobScreen(job: job))),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          borderRadius: BorderRadius.circular(9.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300], blurRadius: 5.0, offset: Offset(0, 3))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(15.0),
                //   child: Image.asset(
                //     'assets/images/logo.jpg',
                //     height: 71,
                //     width: 71,
                //   ),
                // ),
                // SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "${job.title}",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Company name : ${job.company_name}",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .apply(color: Colors.black),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 9),
            Text(
              "Salary :  Rs.${job.salary}",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .apply(fontWeightDelta: 2, color: ksecond),
            )
          ],
        ),
      ),
    );
  }
}
