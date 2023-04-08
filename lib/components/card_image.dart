import 'package:flutter/material.dart';
import 'package:new_app/utils/styles.dart';

class CardImage extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String location;

  const CardImage(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 250,
        margin: EdgeInsets.only(right: medium),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(0, 0, 0, 0.6),
                Colors.transparent,
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Padding(
            padding: EdgeInsets.only(left: small, bottom: medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 68,
                        height: 36,
                        decoration: BoxDecoration(
                            color: accentLight,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text("\$$price", style: pPrice),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: pBold,
                    ),
                    Text(
                      location,
                      style: pLocation,
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
