import 'package:flutter/material.dart';
import 'package:job_finder_app/Models/job.dart';
import 'package:job_finder_app/Widgets/JobLocation.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  JobItem(this.job, {this.showTime = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(job.logoUrl),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    job.company,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
              Icon(
                job.isMark ? Icons.bookmark : Icons.bookmark_outline_outlined,
                color: job.isMark
                    ? Theme.of(context).backgroundColor
                    : Colors.grey,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            job.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              JobLocation(job),
              if (showTime)
                Icon(
                  Icons.access_time_outlined,
                  size: 20,
                  color: Colors.amber,
                ),
              if (showTime)
                Text(
                  job.time,
                ),
            ],
          )
        ],
      ),
    );
  }
}
