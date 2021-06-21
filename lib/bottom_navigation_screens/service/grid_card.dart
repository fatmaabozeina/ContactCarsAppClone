import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';

class ServiceGridCard extends StatelessWidget {
  final label;
  final image;
  final onTap;
  ServiceGridCard({this.label, this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 40,
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
                Titles(
                  title: label,
                  font: 20.0,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
