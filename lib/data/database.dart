import 'package:hive_flutter/hive_flutter.dart';

class todoDatabase{
  List toDoList = [];

  //refrenece our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever opening the app
  void createInitialData(){
    toDoList = [["Make Tutorial" , false],
      ["Do excercise" , false]];
  }

  //load the data from the database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateData(){
    _myBox.put("TODOLIST", toDoList);
  }
}