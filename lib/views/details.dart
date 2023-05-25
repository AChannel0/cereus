import 'package:flutter/material.dart';
import 'package:cereus/models/cereusplant.dart';

class PlantsScreen extends StatefulWidget {
  const PlantsScreen(CereusPlant item, {Key? key, this.plantDetails})
      : super(key: key);
  final CereusPlant? plantDetails;

  @override
  _PlantsScreenState createState() => _PlantsScreenState();
}

class _PlantsScreenState extends State<PlantsScreen> {
  get plantDetails => null;

// class PlantsScreen extends StatelessWidget {
//   final CereusPlant? plantDetails;

//   const PlantsScreen({this.plantDetails});

  @override
  Widget build(BuildContext context) {
    // CereusPlant get plantDetails => widget.plantDetails;
    return Scaffold(
      appBar: AppBar(
        title: Text(plantDetails!.localName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(plantDetails!.imageUrl),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              plantDetails!.description,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Text(
          //     plantDetails!.kingdom,
          //     style: const TextStyle(fontSize: 16),
          //   ),
          // ),
        ],
      ),
    );
  }
}
