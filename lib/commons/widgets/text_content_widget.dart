import 'package:flutter/material.dart';

Widget buildTextContent(String title, bool isBold,
    {Color? colorWord, double? fontSize}) {
  return Container(
    alignment: Alignment.centerLeft,
    child: Wrap(
      children: [
        Text(
          title,
          style: TextStyle(
              color: colorWord ?? Colors.white,
              fontSize: fontSize ?? 17,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      ],
    ),
  );
}