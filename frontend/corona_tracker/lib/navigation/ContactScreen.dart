import 'package:corona_tracker/navigation/CreditsScreen.dart';
import 'package:corona_tracker/navigation/StatusScreen.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:corona_tracker/models/ContactEntry.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

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
  List<ContactEntry> contacts = List<ContactEntry>();
  List<ContactEntry> contactItems = List<ContactEntry>();
  TextEditingController editingController = TextEditingController();
  bool _saving = false;
  String selectionToggleText = "Alle nicht auswählen";

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    setState(() {
      _saving = true;
    });
    Iterable<Contact> _contacts;

    final PermissionHandler _permissionHandler = PermissionHandler();
    var result = await _permissionHandler.requestPermissions([PermissionGroup.contacts]);

    if (result[PermissionGroup.contacts] == PermissionStatus.granted) {
      // Platform messages may fail, so we use a try/catch PlatformException.
      try {
        _contacts = await ContactsService.getContacts();
        //print(_contacts.length);
        for (Contact c in _contacts) {
          List<String> phoneNumbersOfContact = List<String>();

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

          for(int i = 0; i < phoneNumbersOfContact.length; i++) {
            ContactEntry contactEntry = ContactEntry(true, c.displayName, phoneNumbersOfContact[i]);
            contacts.add(contactEntry);
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
      contactItems.addAll(contacts);
      _saving = false;
    });
  }

  void filterSearchResults(String query) {
    List<ContactEntry> dummySearchList = List<ContactEntry>();
    dummySearchList.addAll(contacts);
    if(query.isNotEmpty) {
      List<ContactEntry> dummyListData = List<ContactEntry>();
      dummySearchList.forEach((item) {
        if(item.name.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        contactItems.clear();
        contactItems.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        contactItems.clear();
        contactItems.addAll(contacts);
      });
    }
  }

  void uploadContacts() {
    for(int i = 0; i < contactItems.length; i++) {
      if(contactItems[i].checked)
        print("uploading: " + contactItems[i].name);

      // hier hashen: contact_items[i].phoneNumber
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ModalProgressHUD(
          child: Container(
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
                              for(int i = 0; i < contactItems.length; i++) {
                                contactItems[i].checked = false;
                              }
                            }
                            else if(selectionToggleText == "Alle auswählen") {
                              selectionToggleText = "Alle nicht auswählen";
                              for(int i = 0; i < contactItems.length; i++) {
                                contactItems[i].checked = true;
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
                      itemCount: contactItems.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          title: Text('${contactItems[index].name}'),
                          subtitle: Text('${contactItems[index].phoneNumber}'),
                          value: contactItems[index].checked,
                          onChanged: (val) {
                            setState(() {
                              if(contactItems[index].checked)
                                contactItems[index].checked = false;
                              else
                                contactItems[index].checked = true;
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
        inAsyncCall: _saving,),
      floatingActionButton: FloatingActionButton(
        onPressed: uploadContacts,
        tooltip: 'Hochladen',
        child: Icon(Icons.cloud_upload),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}