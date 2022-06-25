import 'package:flutter/material.dart';
import 'package:optimus/resources/resources.dart';
import 'package:optimus/views/widgets/sized_text.dart';

class Posts {
  static getPost(
      BuildContext context, String title, String description, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colours.secondaryBG,
            borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Image(
                width: 100,
                height: 100,
                fit: BoxFit.fitHeight,
                image: AssetImage('assets/images/$image'),
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedText.getSizedText(
                    context, title, 150, 16, Colours.primaryFont),
                Gaps.vGap10,
                SizedText.getSizedText(
                    context, description, 150, 10, Colours.primaryFont)
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class CommonPostWidget {}

class ApartmentPostWidget {}

class RoomatesPostWidget {}
