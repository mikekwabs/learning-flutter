import 'package:flutter/material.dart';
import 'package:new_app/utils/styles.dart';
import '../components/card.dart';
import '../components/heading.dart';
import '../components/label_section.dart';
import '../components/search.dart';
import '../components/top_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: medium, top: 50, right: medium),
          child: Column(
            children: [
              HeadingSection(),
              SizedBox(
                height: medium,
              ),
              SearchSection(),
              SizedBox(
                height: medium,
              ),
              LabelSection(style: heading1, text: "Recommended"),
              SizedBox(
                height: medium,
              ),
              CardView(),
              SizedBox(height: medium),
              LabelSection(style: heading1, text: "Top Destination"),
              SizedBox(height: medium),
              TopDestination(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            selectedItemColor: accent,
            unselectedItemColor: icon,
            elevation: 0,
            backgroundColor: white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: "",
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.bookmark_outline),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: ""),
            ]),
      ),
    );
  }
}
