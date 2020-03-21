import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

class ContactScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Freunde';
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ContactScreenForm(),
    );
  }

}

// Create a Form widget.
class ContactScreenForm extends StatefulWidget {
  @override
  ContactScreenFormState createState() {
    return ContactScreenFormState();
  }
}

class ContactScreenFormState extends State<ContactScreenForm> {
  List<List<String>> contacts = List<List<String>>();
  List<List<String>> contact_items = List<List<String>>();
  TextEditingController editingController = TextEditingController();
  bool currentlyAllSelected = true;
  String selectionToggleText = "Alle nicht auswählen";

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    Iterable<Contact> _contacts;

    final PermissionHandler _permissionHandler = PermissionHandler();
    var result = await _permissionHandler.requestPermissions([PermissionGroup.contacts]);

    if (result[PermissionGroup.contacts] == PermissionStatus.granted) {
      // Platform messages may fail, so we use a try/catch PlatformException.
      try {
        _contacts = await ContactsService.getContacts();
        print(_contacts.length);
        for (Contact c in _contacts) {
          print(c.displayName);
          List<String> phoneNumbersOfContact = List<String>();
          phoneNumbersOfContact.add("TRUE");
          phoneNumbersOfContact.add(c.displayName);

          for (Item phone in c.phones.toList()) {
            String phoneNumber = phone.value.replaceAll(" ", "");
            if (phoneNumbersOfContact.isEmpty) {
              phoneNumbersOfContact.add(phoneNumber);
            } else {
              if (!phoneNumbersOfContact.contains(phoneNumber)) {
                phoneNumbersOfContact.add(phoneNumber);
              }
            }
          }

          for(int i = 2; i < phoneNumbersOfContact.length; i++) {
            List<String> nameWithNumber = List<String>();
            nameWithNumber.add(phoneNumbersOfContact[0]); // check value
            nameWithNumber.add(phoneNumbersOfContact[1]); // name
            nameWithNumber.add(phoneNumbersOfContact[i]); // number
            contacts.add(nameWithNumber);
          }
        }
      } on Exception {
        print("Error obtaining contacts");
      }
    } else {
      print("ERROR: need permission to read contacs");
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      contact_items.addAll(contacts);
    });
  }

  void filterSearchResults(String query) {
    List<List<String>> dummySearchList = List<List<String>>();
    dummySearchList.addAll(contacts);
    if(query.isNotEmpty) {
      List<List<String>> dummyListData = List<List<String>>();
      dummySearchList.forEach((item) {
        if(item[1].toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        contact_items.clear();
        contact_items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        contact_items.clear();
        contact_items.addAll(contacts);
      });
    }
  }

  void uploadContacts() {
    for(int i = 0; i < contact_items.length; i++) {
      if(contact_items[i][0] == "TRUE")
        print("uploading: " + contact_items[i][1]);

      // hier hashen: contact_items[i][2]
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {
                        filterSearchResults(value);
                      },
                      controller: editingController,
                      decoration: InputDecoration(
                          labelText: "Suchen",
                          hintText: "Suchen",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: <Widget>[
                      //unSelectAllButton
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            if(selectionToggleText == "Alle nicht auswählen") {
                              selectionToggleText = "Alle auswählen";
                              for(int i = 0; i < contact_items.length; i++) {
                                contact_items[i][0] = "FALSE";
                              }
                            }
                            else if(selectionToggleText == "Alle auswählen") {
                              selectionToggleText = "Alle nicht auswählen";
                              for(int i = 0; i < contact_items.length; i++) {
                                contact_items[i][0] = "TRUE";
                              }
                            }

                          });
                        },
                        child: Text(selectionToggleText),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: contact_items.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          title: Text('${contact_items[index][1]}'),
                          subtitle: Text('${contact_items[index][2]}'),
                          value: contact_items[index][0] == "TRUE" ? true : false,
                          onChanged: (val) {
                            setState(() {
                              if(contact_items[index][0] == "TRUE")
                                contact_items[index][0] = "FALSE";
                              else
                                contact_items[index][0] = "TRUE";
                            });
                          },
                          //selected: true,
                        );
                      },
                    ),
                  ),
                ]
            )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: uploadContacts,
        tooltip: 'Hochladen',
        child: Icon(Icons.cloud_upload),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}