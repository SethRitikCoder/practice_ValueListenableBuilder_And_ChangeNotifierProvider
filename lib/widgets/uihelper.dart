import 'package:flutter/material.dart';

class Uihelper {
  static Widget custombutton({
    required VoidCallback callback,
    required String buttonName,
  }) {
    return MaterialButton(
      onPressed: () {
        callback();
      },

      color: Colors.blueGrey.shade400,
      textColor: Colors.white,
      splashColor: Colors.blue.shade100,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        gapPadding: 5.0,
      ),
      elevation: 3.0,
      focusColor: Colors.blueGrey,
      minWidth: 50,
      child: Text(buttonName),
    );
  }

  static Widget customIconElevatedButton({
    required VoidCallback callback,
    required String buttonName,
    required Icon icon,
  }) {
    return ElevatedButton.icon(
      onPressed: () {
        callback();
      },
      label: Text(buttonName),
      icon: icon,
      style: ElevatedButton.styleFrom(
        iconColor: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        textStyle: TextStyle(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(width: 2, color: Colors.black),
        ),
      ),
    );
  }

   void showdialogue(
    BuildContext context, {
    required String title,
    required String content1,
    required String content2,
    required VoidCallback callback,
    required String buttonName,
  }) {
    showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: ListBody(
            children: [Text(content1), SizedBox(height: 10), Text(content2)],
          ),
          actions: [
            FilledButton(
              onPressed: () {
                callback();
              },
              child: Text(buttonName),
            ),
          ],
        );
      },
    );
  }
}
