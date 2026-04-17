import 'dart:io';

void main() {
  // Student Data Map
  Map<dynamic, dynamic> studentList = {
    "Fatima": {
      "scores": [85, 90, 78, 92],
      "subjects": {"Math", "Science", "History", "Literature"},
      "bonus": null,
      "comments": null,
    },
  };

  Map<String, dynamic> studentData = {
    "name": "Fatima",
    "scores": [85, 90, 78, 92],
    "subjects": ["Math", "Science", "History", "Literature"],
    "bonus": null,
    "comments": null,
  };

  // Subject List
  final Set<String> subjects = {"Math", "Science", "History", "Literature"};

  // Options Menu
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

  var running = true;
  do {
    const String name = "===== Student Grader v1.0 =====";
    print(name);
    options.forEach((key, value) => print("$key. $value"));
    stdout.write("\nChoose an option: ");
    String? option = stdin.readLineSync();

    switch (option) {
      // Option 1: Add Student
      case "1":
        print("Option 1: Add Student");
        stdout.write("Enter student name: ");
        String studentName = stdin.readLineSync()!;

        studentList[studentName] = {
          "scores": [],
          "subjects": [...subjects],
          "bonus": null,
          "comments": null,
        };

        print("Student '$studentName' added successfully.");

      case "2":
        print("Option 2: Record Score");
        for (int i = 0; i < studentList.length; i++) {
          print("${i + 1}. ${studentList.keys.elementAt(i)}");
        }
        stdout.write("Select a student by number: ");
        String? studentOption = stdin.readLineSync();
        int studentIndex = int.parse(studentOption!) - 1;

        print("Subjects for ${studentList.keys.elementAt(studentIndex)}:");

        studentList[studentList.keys.elementAt(studentIndex)]["subjects"].forEach((subject) {
          print("- $subject");
        
        });
        
        // studentList[studentList.keys.elementAt(studentIndex)]["scores"].add(95); 
        print("Score recorded successfully.");
        

      case "3":
        print("Option 3: Add Bonus Points");
        break;
      case "4":
        print("Option 4: Add Comment");
        break;
      case "5":
        print("Option 5: View All Students");
        break;
      case "6":
        print("Option 6: View Report Card");
        break;
      case "7":
        print("Option 7: Class Summary");
        break;
      case "8":
        print("Exiting...");
        running = false;
      default:
        print("Invalid option. Please try again.");
    }
  } while (running);
}
