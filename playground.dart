//import "dart:core";
import "dart:io"; //To use input-output

main(){
  var firstName= "Yamil"; //variable that can have any type
  String lastName = "Melian"; // variable with a type
  print(firstName + " " + lastName);

  stdout.writeln("What is your name?");//get input from user
  String? name= stdin.readLineSync();//read input from user and store in variable
  print("The user name is $name");

  String literalString =r"This string is a raw string so you would see this: \n";
  String multiLine= """This string
                    will have
                    multiples lines""";
  print(literalString + " " + multiLine);
  
  int one =int.parse("1");
  double onePointOne= double.parse("1.1");
  print(one);
  print(onePointOne);

  int number= 1;
  String numberStr= number.toString();
  print(numberStr);

  var numberFromClass= Num();
  var checkForNull = numberFromClass?.num ?? "null value"; //This means: numberFromClass?.num check if is null or not
                                                           // ?? check if null, if not return the value otherwise return the string
  print(checkForNull);
  
}

class Num{
  var num=100;
}
