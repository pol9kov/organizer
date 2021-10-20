import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Filters extends StatefulWidget {
  static const String routeName = "/filters";

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  DateTime _Date = DateTime.now();
  final DateFormat formatter = DateFormat.yMd();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Фильтры")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Количество людей",
              style: Theme.of(context).textTheme.headline5,
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'от'),
                )),
                Expanded(
                    child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'до',
                  ),
                )),
              ],
            ),
            Text(
              "Дата",
              style: Theme.of(context).textTheme.headline5,
            ),
            ElevatedButton(
              child: Text(formatter.format(_Date)),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2222))
                    .then((date) {
                  if (date != null) {
                    setState(() {
                      _Date = date;
                    });
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
