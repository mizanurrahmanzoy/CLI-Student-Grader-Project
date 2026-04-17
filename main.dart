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


}
