import 'package:corona_tracker/i18n/appLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import '../globals.dart' as globals;

class StatusScreen extends StatelessWidget {

  var api_instance = DefaultApi();

  Future<String> getUserCount() async {
    String userCount = "0";
    await api_instance.getUsers().then((List<User> users) {
      //print("got back " + users.length.toString() + " users");
      userCount = users.length.toString();
    }).catchError((error) {
      print("error getting all users");
    });
    return userCount;
  }

  Future<String> getUsersCuredCount() async {
    int userCount = 0;
    await api_instance.getUsers().then((List<User> users) {
      for(User u in users) {
        if (u.healthHistory.last.medicalState == MedicalStateEnum.CURED.toString())
          userCount++;
      }
    }).catchError((error) {
      print("error getting all cured users");
    });
    return userCount.toString();
  }

  Future<String> getUsersInfectedCount() async {
    int userCount = 0;
    await api_instance.getUsers().then((List<User> users) {
      for(User u in users) {
        if (u.healthHistory.last.medicalState == MedicalStateEnum.INFECTED.toString())
          userCount++;
      }
    }).catchError((error) {
      print("error getting all infected users");
    });
    return userCount.toString();
  }

  Future<CurrentHealthState> getCurrentHealthstate() async {
    CurrentHealthState healthState = CurrentHealthState();
    healthState.text = "Gesund";
    healthState.color = Colors.green[500];
    await api_instance.getUsers().then((List<User> users) {
      for(User u in users) {
        if(u.token == globals.deviceId) {
          if(u.healthHistory.last.medicalState.isNotEmpty)
            healthState.text = u.healthHistory.last.medicalState;
        }
      }
    }).catchError((error) {
      print("error getting healt state of current user");
    });

    if(healthState.text == MedicalStateEnum.INFECTED.toString()) {
      healthState.color = Colors.red[500];
    } else if(healthState.text == MedicalStateEnum.TREATMENT.toString()) {
      healthState.color = Colors.orange[500];
    } else if(healthState.text == MedicalStateEnum.UNKNOWN.toString()) {
      healthState.color = Colors.black12;
    } else if(healthState.text == MedicalStateEnum.CURED.toString()) {
      healthState.color = Colors.green[500];
    }
    return healthState;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).StatusScreen_AppBarTitleText),
      ),
      body: Center(
        child: ListView(
          children: [
            new Container(
              child: Image.asset(
                'assets/images/corona_tracker_homescreen_teaser.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                //StatusUsers
                Column(
                  children: //StatusUsers
                  [
                    Icon(
                      Icons.people,
                      color: Colors.blueGrey,
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Benutzer',
                      style: TextStyle(
                          fontSize: 34,
                          decoration: TextDecoration.underline,
                      ),

                    ),
                    FutureBuilder(
                      initialData: "",
                      future: getUserCount(),
                      builder: (context, data) {
                        return Text(
                          data.data.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                        ));
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.green[500],
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Status',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 34,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    FutureBuilder(
                      initialData: "",
                      future: getCurrentHealthstate(),
                      builder: (context, data) {
                        return Text(
                            data.data.text,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                              color: data.data.color,
                            ));
                      },
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    Icon(
                      Icons.healing,
                      color: Colors.green[500],
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Geheilt',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.green[500],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    FutureBuilder(
                      initialData: "",
                      future: getUsersCuredCount(),
                      builder: (context, data) {
                        return Text(
                            data.data.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                              color: Colors.green[500],
                            ));
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.red[500],
                      size: 50.0,
                    ),
                    // TODO i18n
                    Text(
                      'Infiziert',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.red[500],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    FutureBuilder(
                      initialData: "",
                      future: getUsersInfectedCount(),
                      builder: (context, data) {
                        return Text(
                            data.data.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                              color: Colors.red[500],
                            ));
                      },
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class StatusUsers extends StatefulWidget {
  @override
  StatusUsersState createState() {
    return StatusUsersState();
  }
}

class StatusUsersState extends State<StatusUsers> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.healing,
          color: Colors.green[500],
          size: 50.0,
        ),
        // TODO i18n
        Text(
          'Geheilt',
          style: TextStyle(
            //fontWeight: FontWeight.bold,
            fontSize: 34,
            color: Colors.green[500],
            decoration: TextDecoration.underline,
          ),
        ),
        // TODO API CALL
        Text(
          '12446',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34,
            color: Colors.green[500],
          ),
        ),
      ],
    );
  }
}

class CurrentHealthState {
  String text;
  Color color;
}