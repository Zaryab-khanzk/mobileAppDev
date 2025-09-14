class Instructor{
  String name;
  String bio;
  List<String> expertise;

Instructor(this.name, this.bio, [this.expertise = const []]);

void addExpertise(String newskill){
  expertise.add(newskill);
}

void display(){
  print("Name: $name");
  print("Bio: $bio");
  print("Expertise: ${expertise.join(", ")}");
}
}
void main() {
  var myInstructor = Instructor("Alice", "Flutter Developer", ["Dart"]);
  myInstructor.addExpertise("Firebase");
  myInstructor.display();
}
