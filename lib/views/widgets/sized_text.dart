import 'package:flutter/material.dart';

class SizedText {
  static getSizedText(BuildContext context, String content,
      double reduceWidthBy, double fontSize, Color color,
      {FontWeight? weight, bool? wrapText = true, int? maxLines = 2}) {
  return  SizedBox(
      width: MediaQuery.of(context).size.width - reduceWidthBy,
      child: Text(
        content,
        overflow: TextOverflow.ellipsis,
        softWrap: wrapText,
        maxLines: maxLines,
        style: TextStyle(fontSize: fontSize, color: color, fontWeight: weight),
      ),
    );
  }
}
