import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dialogBox extends StatelessWidget{
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  dialogBox({super.key , required this.controller,
        required this.onSave,
        required this.onCancel
  });
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add New Task",
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: onSave, child: Text("Save")),
                
                ElevatedButton(onPressed: onCancel, child: Text("Cancel"))
              ],
            )
          ],
        ),
      ),
    );
  }
  
}