import 'package:flutter/material.dart';
import '../models/destination.dart';
import 'card_dest_image.dart';

class TopDestination extends StatelessWidget {
  const TopDestination({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination("images/four.jpg", "Telaga", "120", "Bandung"),
      Destination("images/three.jpg", "Sungai", "100", "Ciliwung"),
      Destination("images/two.jpg", "Mumabi", "100", "Talwia"),
    ];

    return SizedBox(
      height: 75,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          var dest = destinations[index];
          return CardDestImage(
              image: dest.image, location: dest.location, name: dest.name);
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
