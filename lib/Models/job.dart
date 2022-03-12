class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;
  Job(
    this.company,
    this.logoUrl,
    this.isMark,
    this.title,
    this.location,
    this.time,
    this.req,
  );
  static List<Job> generateJobs() {
    return [
      Job(
          'Google LLC,',
          'assets/images/google_logo.png',
          true,
          'Principle Product Design',
          '417, Marion, New York\nUnited States',
          'Full Time', [
        'job Requirement 1',
        'job Requirement 2',
        'job Requirement 3',
        'job Requirement 4',
        'job Requirement 5',
      ]),
      Job(
          'Airbnb inc,',
          'assets/images/airbnb_logo.png',
          false,
          'Principle Product Design',
          '417, Marion, New York\nUnited States',
          'Full Time', [
        'job Requirement 1',
        'job Requirement 2',
        'job Requirement 3',
        'job Requirement 4',
        'job Requirement 5',
      ]),
      Job(
          'Linkedin,',
          'assets/images/linkedin_logo.png',
          true,
          'Principle Product Design',
          '417, Marion, New York\nUnited States',
          'Full Time', [
        'job Requirement 1',
        'job Requirement 2',
        'job Requirement 3',
        'job Requirement 4',
        'job Requirement 5',
      ]),
      Job(
          'Google LLC,',
          'assets/images/google_logo.png',
          false,
          'Principle Product Design',
          '417, Marion, New York\nUnited States',
          'Full Time', [
        'job Requirement 1',
        'job Requirement 2',
        'job Requirement 3',
        'job Requirement 4',
        'job Requirement 5',
      ]),
      Job(
          'Airbnb inc,',
          'assets/images/airbnb_logo.png',
          true,
          'Principle Product Design',
          '417, Marion, New York\nUnited States',
          'Full Time', [
        'job Requirement 1',
        'job Requirement 2',
        'job Requirement 3',
        'job Requirement 4',
        'job Requirement 5',
      ]),
      Job(
          'Linkedin,',
          'assets/images/linkedin_logo.png',
          false,
          'Principle Product Design',
          '417, Marion, New York\nUnited States',
          'Full Time', [
        'job Requirement 1',
        'job Requirement 2',
        'job Requirement 3',
        'job Requirement 4',
        'job Requirement 5',
      ]),
    ];
  }
}
