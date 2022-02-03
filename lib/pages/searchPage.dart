import 'package:dating_app/pages/homePage.dart';
import "package:flutter/material.dart";

class searchPage extends StatefulWidget {

  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  final weathertext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Search Page'),
        leading: const Icon(Icons.wb_sunny_rounded,
        size: 30,
        color: Colors.orange),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children:  [
                Expanded(
                  child: TextFormField(
                    controller: weathertext,
                    decoration:  InputDecoration(
                      labelText: "Enter city",
                      hintText: "Input city here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  homePage(weathertext : weathertext.text),
                  )
                  );
                  },
                child: const Text('Enter',
                style: TextStyle(
                  fontSize:19
                ),
                )
            )
          ],
        ),
      ),
    );
  }
}
