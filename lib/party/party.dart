import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Party extends StatelessWidget {
  late String title;
  late String description;
  late String place;
  late List<dynamic> images;
  late DateTime dateTime;
  late int peopleAmount;

  Party(String title, description, place, dynamic images, DateTime dateTime,
      int peopleAmount) {
    this.title = title;
    this.description = description;
    this.place = place;
    this.images = images;
    this.dateTime = dateTime;
    this.peopleAmount = peopleAmount;
  }

  static List<Party> mock = [
    Party(
      "Вечеринка у Децела дома",
      "Будет крутая туса, обязательно приходите",
      "Красноармейская 6",
      [
        NetworkImage(
            'https://i.pinimg.com/originals/b8/3c/7a/b83c7a24b27c7aa63f4485a0e71def2f.jpg')
      ],
      DateTime.parse("2021-10-30 20:00:00Z"),
      50,
    ),
    Party(
      "Вписка-Барбариска",
      "С меня хата, с вас бухло",
      "Верхние дубки 12",
      [
        NetworkImage(
            'https://static.bash.today/assets/blog/postcontents/display/5afdce4a2fb1e.jpg')
      ],
      DateTime.parse("2021-10-30 22:00:00Z"),
      10,
    ),
    Party(
      "ДР",
      "Отмечаем мой др, жесткий FC/DC. Зажжём!",
      "Запрудье 22",
      [
        NetworkImage(
            'https://avatars.mds.yandex.net/get-zen_doc/111343/pub_5d4905f26f5f6f00ad039cc0_5d49171531878200ae1ea33e/scale_2400')
      ],
      DateTime.parse("2021-10-31 18:00:00Z"),
      20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                    child: Text(
                      description,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
                    child: Row(
                      children: [
                        Icon(MdiIcons.mapMarker),
                        Text(
                          place,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Row(
                      children: [
                        Icon(MdiIcons.calendar),
                        Text(DateFormat.yMd().format(dateTime)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MdiIcons.clock),
                        Text(DateFormat.Hm().format(dateTime)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MdiIcons.account),
                        Text(peopleAmount.toString()),
                      ],
                    ),
                  ]),
                ],
              ),
              Image(
                image: images[0],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
