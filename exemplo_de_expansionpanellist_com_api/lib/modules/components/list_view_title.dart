import 'package:flutter/material.dart';

Widget listViewTitle({
  required BuildContext context,
  required titulo,
  fontSize,
  height,
}) {
  return Container(
    width: MediaQuery.of(context).size.width - 30,
    height: height ?? 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.lightGreenAccent.shade700,
        width: 3,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: fontSize ?? 30.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
