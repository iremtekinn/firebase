import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class FirestoreService extends GetxService {
  Future<FirestoreService> init() async {
    return this;
  }

// Veri yazma
  writeBlog(topic, content) {
    Map<String, dynamic> blogData = {"topic": topic, "content": content};

    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("users");
    collectionReference.add(blogData);
  }

// Veri okuma
  Stream<QuerySnapshot> readBlog() {
    var ref = FirebaseFirestore.instance.collection("users").snapshots();
    return ref;
  }

  // Veri silme
  void deleteBlog(id){
    FirebaseFirestore.instance.collection("users").doc(id).delete();
  }
  }
  