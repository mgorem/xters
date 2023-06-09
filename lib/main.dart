import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: XtersCard(),
    debugShowCheckedModeBanner: false,
  ));
}

class XtersCard extends StatefulWidget {
  const XtersCard({Key? key}) : super(key: key);

  @override
  State<XtersCard> createState() => _XtersCardState();
}

class _XtersCardState extends State<XtersCard> {

  int xterLevel = 0;
  String xterEmail = "xterorem@xter.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Xter ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            xterLevel++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/orem-cartoon.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),

            Text(
              "Orem",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),

            const Text(
              "CURRENT XTER LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0,),

            Text(
              "$xterLevel",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0,),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0,),
                Text("$xterEmail",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

