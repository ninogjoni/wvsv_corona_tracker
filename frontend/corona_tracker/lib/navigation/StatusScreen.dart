import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status'),
      ),
      body: Center(
        child: Column(
//          mainAxisAlignment:
//            MainAxisAlignment.spaceAround,
          children: [
            new Container(
              child:
              Image.asset(
                'assets/images/corona_tracker_homescreen_teaser.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
            ),
            Column(
              children: [
                Icon(
                    Icons.healing,
                    color: Colors.green[500],
                    size: 100.0 ,
                ),
                Text(
                  'Anzahl der Geheilten',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34
                  )),
                //TODO API CALL
                Text(
                    '13022',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34
                    )
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.people,
                  color: Colors.blueGrey,
                  size: 100.0 ,
                ),
                Text(
                    'Anzahl der Benutzer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34
                    )),
                //TODO API CALL
                Text(
                    '13022',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34
                    )
                ),
              ],
            ),
          ],
        )

//        child: Center (
//          child: Text(
//            'Anzahl der Geheilten',
//            textDirection: TextDirection.ltr,
//            style: TextStyle(
//              fontSize: 32,
//              color: Colors.black87,
//            ),
//          ),
//        ),
      ),
    );
  }
}