import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Storagescreenstate extends StatefulWidget {
  const Storagescreenstate({super.key});

  @override
  State<Storagescreenstate> createState() => _StoragescreenstateState();
}

class _StoragescreenstateState extends State<Storagescreenstate> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  void saveuser() {
    String name = nameController.text.trim();
    String email = emailcontroller.text.trim();
    if (name != "" && email != "") {
      Map<String, dynamic> userdata = {"name": name, "email": email};
      nameController.clear();
      emailcontroller.clear();
      FirebaseFirestore.instance.collection("users").add(userdata);
      log("User created!");
    } else {
      log("please fill all the fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
            ),
            TextField(
              controller: emailcontroller,
            ),
            TextButton(
              onPressed: () {
                saveuser();
              },
              child: const Text('save'),
            ),
            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("users").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasData && snapshot.data != null) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data?.docs.length,
                        itemBuilder: (context, index) {
                          Map<String, dynamic> userdata =
                              snapshot.data!.docs[index].data()
                                  as Map<String, dynamic>;
                          return ListTile(
                            title: Text(
                              userdata['name'],
                            ),
                            subtitle: Text(
                              userdata['email'],
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return const Text('No data available');
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
