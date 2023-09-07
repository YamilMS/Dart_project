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

  var numberFromClass= Num(); //instance of the class null that is after the main class
  var checkForNull = numberFromClass?.num ?? "null value"; //This means: numberFromClass?.num check if is null or not
                                                           // ?? check if null, if not return the value otherwise return the string
  print(checkForNull);

  var numberNull = null;
  print(numberNull ??= 100); //check if it is null and if it is assign 100 to the variable
  print(numberNull);

  //Dart can use ternary operator and switch statements the same as JavaScript

  //in the line 34 we make numberNull an integer so the if will be executed
  if(numberNull is int){
    print("numberNull is an integer");
  } else{
    print("numberNull is not an integer");
  }
  print("");
  //LOOPS
  var array = ["pikachu", "charmander", "bulbasur", "squirtle"];
  for(var i=0; i<array.length; i++){
    var element= array[i];
    print("$element is index $i");
  }

  print("");

  for(var j in array){
    if(j == "bulbasur"){
      break;
    }
    print(j);
  }


  
}

class Num{
  var num=100;
}
