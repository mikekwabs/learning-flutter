import "package:flutter/material.dart";
import "../models/destination.dart";
import "card_image.dart";

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination(
          "images/one.jpg", "Japan Temple", "120", "Osaka Street, japan"),
      Destination(
          "images/two.jpg", "Capura Mero", "100", "Tokyo Street, japan"),
      Destination("images/three.jpg", "Telaga", "80", "Bandung, japan"),
    ];
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return CardImage(
              image: dest.image,
              name: dest.name,
              price: dest.price,
              location: dest.location);
        },
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
