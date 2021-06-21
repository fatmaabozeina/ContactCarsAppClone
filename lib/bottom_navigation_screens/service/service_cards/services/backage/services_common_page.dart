import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/main_text_field.dart';

class ServicesCommonBody extends StatelessWidget {
  ServicesCommonBody({
    @required this.listOfWidgets,
  });

  final List<Widget> listOfWidgets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: MainTextField(
            icon: Icon(
              Icons.search,
              color: Color(0xFF064D9F),
            ),
            hintLabel: 'بحث',
            isAlignedLeft: false,
            alignment: TextAlign.right,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: listOfWidgets.length,
            itemBuilder: (context, index) {
              return listOfWidgets.elementAt(index);
            },
          ),
        ),
      ],
    );
  }
}
