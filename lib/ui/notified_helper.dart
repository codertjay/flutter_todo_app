import 'package:flutter/material.dart';
import 'package:flutter_todo_app/ui/themes.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String? label;

  const NotifiedPage({Key? key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.grey,
          ),
        ),
        title: Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.2),
          child: Text(
            label!.toString().split("|")[0],
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _noteBackground(label),
          ),
          child: Center(
            child: Text(
              label!.toString().split("|")[1],
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }

  Color _noteBackground(label) {
    print(label);
    if (label!.toString().split("|")[2] == '0') {
      return bluishClr;
    } else if (label!.toString().split("|")[2] == '1') {
      return pinkClr;
    } else if (label!.toString().split("|")[2] == '2') {
      return yellowClr;
    }
    return bluishClr;
  }
}
