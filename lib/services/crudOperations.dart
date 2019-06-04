import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class crudMedthods {
  bool isLoggedIn() {
    if (FirebaseAuth.instance.currentUser() != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> setData(myData) async {
    if (isLoggedIn()) {

            FirebaseUser user = await FirebaseAuth.instance.currentUser();
      Firestore.instance.collection('users').document('${user.uid}').setData(myData).catchError((e) {
        print(e);
      });


    } else {
      print('You need to be logged in');
    }
  }

  getData() async {
    return await Firestore.instance.collection('testcrud').snapshots();
  }

  updateData(selectedDoc, newValues) {
    Firestore.instance
        .collection('users')
        .document(selectedDoc)
        .updateData(newValues)
        .catchError((e) {
      print(e);
    });
  }

  deleteData(docId) {
    Firestore.instance
        .collection('users')
        .document(docId)
        .delete()
        .catchError((e) {
      print(e);
    });
  }
}