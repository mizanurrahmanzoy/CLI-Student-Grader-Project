void main() {
  // Student Data Map
  Map<String, dynamic> studentData = {
    "name": "Fatima",
    "scores": [85, 90, 78, 92],
    "subjects": ["Math", "Science", "History", "Literature"],
    "bonus": null,
    "comments": null,
  };

  const String name = "===== Student Grader v1.0 =====";
  print("Hello $name");

  // Subject List
  final Set<String> subjects = {"Math", "Science", "History", "Literature"};

  // Option
  Map<int, String> options = {
    1: "Add Student",
    2: "Record Score",
    3: "Add Bonus Points",
    4: "Add Comment",
    5: "View All Students",
    6: "View Report Card",
    7: "Class Summary",
    8: "Exit",
  };

  var i = 0;
  do {
    options.forEach((key, value) => print("$key. $value"));
    print("\nChoose an option:");
    




    i++;
  } while (i < 1);
}
