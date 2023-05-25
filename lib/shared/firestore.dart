// Class for Firestore
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cereus/models/cereusplant.dart';
import 'dart:async';

class FirestoreData {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  // Create functions to fetch data
  Future<List<CereusPlant>?> getPlants() async {
    try {
      CollectionReference plantCollection = db.collection("plants");
      List<CereusPlant> myPlants = List.empty(growable: true);

      // fetch data
      QuerySnapshot snapshot = await plantCollection.get();
      List<QueryDocumentSnapshot> plantList = snapshot.docs;

      for (DocumentSnapshot snap in plantList) {
        // transform the data
        CereusPlant temp = CereusPlant(
          snap.get("description"),
          // snap.get("family"),
          snap.get("imageUrl"),
          // snap.get("kingdom"),
          snap.get("localName"),
          // snap.get("scientificName")
        );
        myPlants.add(temp);
      }
      // print(plantList);

      return myPlants;
    } catch (error) {
      // print(error);
      return null;
    }
  }
}
