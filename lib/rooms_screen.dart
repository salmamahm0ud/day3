import 'package:flutter/material.dart';

class RoomDetails extends StatelessWidget {
  final String? image;

  const RoomDetails({this.image});

  @override
  Widget build(BuildContext context) {
    final room = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('${room['image']}'),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            //-------------------------------------

            //title
            Text(
              '${room['type']}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                '${room['description']}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
