import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/home/Widgets/JobItem.dart';

import '../../../Models/job.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 25,
      ),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => JobItem(jobList[index])),
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: jobList.length),
    );
  }
}
