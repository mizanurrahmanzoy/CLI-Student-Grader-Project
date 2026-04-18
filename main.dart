import 'dart:io';

void main() {
  // Student Data Map
  Map<dynamic, dynamic> studentList = {
    "Fatima": {
      "scores": [85, 90, 78, 92],
      "subjects": ["Math", "Science", "History", "Literature"],
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
      // Option 2:
      case "2":
        // show list of students with numbered order to select student
        print("Option 2: Record Score");
        for (int i = 0; i < studentList.length; i++) {
          print("${i + 1}. ${studentList.keys.elementAt(i)}");
        }
        stdout.write("Select a student by number: ");
        String? studentOption = stdin.readLineSync();
        String selectedStudent = studentList.keys.elementAt(
          int.parse(studentOption!) - 1,
        );
        // After select student show the subject list
        var subjectList = studentList[selectedStudent]["subjects"];
        for (int i = 0; i < subjectList.length; i++) {
          print("${i + 1} - ${subjectList[i]}");
        }
        // choice subject for record score
        stdout.write("Select the any subject: ");
        String? selectSub = (stdin.readLineSync());
        // print for input score
        stdout.write(
          "Input the score for ${subjectList[int.parse(selectSub!) - 1]}: ",
        );
        String? inputScore = stdin.readLineSync();
        //validate the score between 0 and 100
        while (int.parse(inputScore!) > 100 && int.parse(inputScore) < 0) {
          stdout.write("Wrong Score input again: ");
          inputScore = stdin.readLineSync();
          subjectList[int.parse(selectSub) - 1] = inputScore;
        }
        print("Score recorded successfully.");

      case "3":
        // Add bonus to Students
        print("Option 3: Add Bonus Points");
        // show list of students with numbered order to select student
        for (int i = 0; i < studentList.length; i++) {
          print("${i + 1}. ${studentList.keys.elementAt(i)}");
        }
        stdout.write("Select a student by number: ");
        String? studentOption = stdin.readLineSync();
        String selectedStudent = studentList.keys.elementAt(
          int.parse(studentOption!) - 1,
        );
        // After select student show the bonus add option

        if (studentList[selectedStudent]["bonus"] != null) {
          print("Bonus already exists for ${selectedStudent}.");
        } else {
          stdout.write("Enter bonus points to add: ");
          String? bonusValue = stdin.readLineSync();
          studentList[selectedStudent]["bonus"] ??= [int.parse(bonusValue!)];
          print("Bonus added successfully.");
        }
      case "4":
        print("Option 4: Add Comment");
        // Add comment to Students
        // show list of students with numbered order to select student
        for (int i = 0; i < studentList.length; i++) {
          print("${i + 1}. ${studentList.keys.elementAt(i)}");
        }
        stdout.write("Select a student by number: ");
        String? studentOption = stdin.readLineSync(); 
        String selectedStudent = studentList.keys.elementAt(
          int.parse(studentOption!) - 1,
        );
        stdout.write("Enter comment for ${selectedStudent}: ");
        String? comment = stdin.readLineSync();
        if (comment == null || comment.isEmpty) {
          String display = studentList[selectedStudent]["comments"]?.toUpperCase() ?? "No comment provided\n";
          print(display);
          continue;
        }
        studentList[selectedStudent]["comments"] ??= comment;
        print("Comment added successfully.");

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
