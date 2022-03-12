import 'package:flutter/material.dart';
import 'package:job_finder_app/Models/job.dart';

class JobLocation extends StatelessWidget {
  final Job Location;
  JobLocation(this.Location);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          size: 20,
          color: Colors.amber,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          Location.location,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
