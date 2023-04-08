import 'package:flutter/material.dart';
import 'package:new_app/utils/styles.dart';

class CardDestImage extends StatelessWidget {
  final String name;
  final String image;
  final String location;

  const CardDestImage(
      {super.key,
      required this.name,
      required this.image,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 75,
      margin: EdgeInsets.only(right: 36),
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 69,
            height: 69,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          SizedBox(width: xsmall),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: heading4),
              Text(
                location,
                style: p3,
              )
            ],
          )
        ],
      ),
    );
  }
}
