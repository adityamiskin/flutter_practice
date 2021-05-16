import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: TextField(
              maxLines: null,
              style: GoogleFonts.notoSans(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              decoration: InputDecoration.collapsed(
                hintText: "Add a Task",
                hintStyle: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
              autocorrect: true,
              cursorHeight: 25,
              cursorColor: Colors.white,
              cursorWidth: 1,
              autofocus: true,
              textAlign: TextAlign.left,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_upward),
                  iconSize: 20,
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
