import 'package:flutter/material.dart';

void main(){
  dartFundamentals();
  runApp(MyApp());
}

void dartFundamentals(){
  String name = 'Tony Stark';
  int age = 20;
  String year  = "BSIT - 3";
  bool ifStudent = true;

  //List
  List<String> subjects = ["CC103", "WS101", "IPT101"];

  //Map
  Map<String, double> grades = {"CC103": 1.5, "WS101": 1.4, "IPT101": 1.9};

  //For Loop
  for(int i = 1; i <= 5; i++){
    print("This is For Loop: $i" );
  }

  //While Loop
  int x = 1;
  while(x <= 5){
    print("This is While Loop: $x");
    x++;
  }

  //Final and Const
  final school = "Buangan College";
  const pi = 3.1416;

  //This is to print the outputs of the variables
  print("Name: $name, Age: $age, Year and Course: $year, Is Student: $ifStudent");
  print("Subjects: $subjects");
  print("Grades: $grades");
  print("School: $school, Pi: $pi");
}

                              //END OF PART 2 


//This is the UI Implementation

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prelim App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Home Page with Static UI
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prelim App"),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Steps to Set Up Flutter & Dart:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                '''1. Install Flutter SDK in the website
                \n2. Install Dart SDK and extract in dev folder
                \n3. Use VS Code to make app
                \n4. Run flutter doctor
                \n5. Create project: flutter create project_name using Terminal
                \n6. Open folder
                \n7. Run: flutter run''',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Flutter - framework.\n Dart - programming language.",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[700], 
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: 0, 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
