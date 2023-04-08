import 'package:flutter/material.dart';
import '../utils/styles.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          style: p1,
          cursorColor: accent,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: small),
              hintText: "Search Destination",
              hintStyle: p1,
              fillColor: white,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              prefixIcon: Icon(
                Icons.search,
                color: text,
                size: 22,
              )),
        )),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: accent, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.swap_horiz,
            color: white,
          ),
        )
      ],
    );
  }
}
