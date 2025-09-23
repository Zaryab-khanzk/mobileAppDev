
class Instructor {
  String name;
  String email;

  Instructor(this.name, this.email);

  void displayInfo() {
    print("Instructor: $name, Email: $email");
  }
}


class Course {
  String title;
  String description;
  Instructor instructor;
  List<Student> enrolledStudents = [];

  Course(this.title, this.description, this.instructor);

  void enrollStudent(Student student) {
    enrolledStudents.add(student);
    print("${student.name} enrolled in $title");
  }

  void displayCourseInfo() {
    print("Course: $title");
    print("Description: $description");
    instructor.displayInfo();
    print("Enrolled Students:");
    for (var student in enrolledStudents) {
      print(" - ${student.name}");
    }
  }
}

class Student {
  String name;
  String email;

  Student(this.name, this.email);

  void displayInfo() {
    print("Student: $name, Email: $email");
  }
}


void main() {
  
  Instructor inst1 = Instructor("zaryab khan", "khan@seekho.pk");
  Instructor inst2 = Instructor("Sara Ahmed", "sara.ahmed@seekho.pk");

  Course flutterCourse = Course("Flutter Development", "Learn to build mobile apps with Flutter", inst1);
  Course pythonCourse = Course("Python Programming", "Master Python from basics to advanced", inst2);

  

  Student std1 = Student("Zaryab Khan", "zaryab@example.com");
  Student std2 = Student("Ahmed Raza", "ahmed@example.com");
  Student std3 = Student("Fatima Noor", "fatima@example.com");

  
  flutterCourse.enrollStudent(std1);
  flutterCourse.enrollStudent(std2);
  pythonCourse.enrollStudent(std3);

  print("\n--- Course Details ---");
  flutterCourse.displayCourseInfo();
  print("");
  pythonCourse.displayCourseInfo();
}
