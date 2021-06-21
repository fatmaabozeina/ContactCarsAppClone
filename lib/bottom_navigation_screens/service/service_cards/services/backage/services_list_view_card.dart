import 'package:flutter/material.dart';
import 'package:new_contact_car/common_files/titles.dart';
import 'trial.dart';
import 'services_common_page.dart';

class ServicesListViewCardModel extends StatelessWidget {
  final title;
  final subTitle;
  final onPressed;
  final image;
  final icon;
  ServicesListViewCardModel({
    this.title,
    this.subTitle,
    this.icon,
    this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              trailing: Expanded(
                child: (Image(
                  image: AssetImage(image),
                )),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Titles(title: title),
                  Icon((Icons.local_gas_station))
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Titles(title: subTitle), Icon(Icons.keyboard)],
              ),
              isThreeLine: true,
            ),
            Divider(
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
              thickness: 1,
            ),
            TextButton(
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      icon,
                      color: Color(0xFF064D9F),
                    ),
                    Titles(
                      title: 'التفاصيل',
                      font: 20.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Titles(
                  title: '01145678902',
                ),
                Titles(
                  title: 'تلفون:',
                ),
                Icon(Icons.phone_enabled)
              ],
            ),
          ],
        ));
  }
}
