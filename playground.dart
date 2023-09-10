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
  var array = ["pikachu", "charmander", "bulbasur", "squirtle"];//By type inference assign List
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

  //Arrays, Collects and so on

  //List are mutables and also can be assign a type
  List <String> names=["Goku", "Picolo", "Vegeta"];

  //To copy a List
  List names2 = [...names];

  //Change the first List
  names[1]= "Trunks";

  //print the second list and assert that is not a reference of the first List
  for(String i in names2){
    print(i);
  }
  
  //Dart also acept sets like python, also can be declared: var hashmap= Map();
  var hashmap= {}; //If you declare like this is going to be a hashmap
  var set= <String>{}; //In you do it like this is a set
  Set properSet={}; //Also this one is a set

  hashmap["test"]= "it worked"; //I am adding something to the hasmap

  print(hashmap["test"]);

  //Functions

  //Arrow function
  print(arrowFuncSquare(2));

  //Name parameters
  printNameParameters(name2: "Rebe", name1: "Yamil");
  
}

//Class
class Num{
  var num=100;
}

//FUNCTIONS

//arrow function
dynamic arrowFuncSquare (var num) => num*num;

//function using name parameters
void printNameParameters ({name1, name2})=> print("$name1 meets $name2");