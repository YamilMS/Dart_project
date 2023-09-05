//import "dart:core";
import "dart:io"; //To use input-output

main(){
  var firstName= "Yamil"; //variable that can have any type
  String lastName = "Melian"; // variable with a type
  print(firstName + " " + lastName);

  stdout.writeln("What is your name?");//get input from user
  String? name= stdin.readLineSync();//read input from user and store in variable
  print("The user name is $name");
}