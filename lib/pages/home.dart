import 'package:flutter/material.dart';
import 'package:organizer/pages/filter.dart';
import 'package:organizer/party/party.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> parties = <Widget>[];

  _MyHomePageState() {
    for (var i = 0; i < Party.mock.length; i++) {
      Party party = Party.mock[i];

      parties.add(party);
    }
  }

  void _addParty() {
    setState(() {
      parties.add(parties.last);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            child: Text('Фильтры'),
            onPressed: () {
              Navigator.pushNamed(context, Filters.routeName);
            },
          ),
        ],
      ),
    )];
    list.addAll(parties);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: [
          Expanded(
              child: ListView(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            children: list,
          )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addParty,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
