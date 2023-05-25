import 'package:cereus/models/cereusplant.dart';
import 'package:flutter/material.dart';
import 'package:cereus/views/app_drawer.dart';
// import 'package:cereusfirebase/views/text_layout.dart';
import 'package:cereus/views/details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CereusPlant> _collection = [
    CereusPlant(
        'EPIPHYLLUM OXYPETALUM',
        'Also known as the Queen of the Night, is a night-blooming cactus with fragrant white flowers that only bloom once a year.',
        '../assets/1.png')
  ];
  // final List<Map<String, dynamic>> _collectionItems = [
  //   {
  //     'name': 'EPIPHYLLUM OXYPETALUM',
  //     'image': '../assets/1.png',
  //     'description':
  //         'Also known as the Queen of the Night, is a night-blooming cactus with fragrant white flowers that only bloom once a year.'
  //   },
  //   {
  //     'name': 'SELENICEREUS GRANDIFLORUS',
  //     'image': '../assets/2.png',
  //     'description':
  //         'The large-flowered torch cactus, produces large, fragrant, white flowers that open at night and last only one night.'
  //   },
  //   {
  //     'name': 'HYLOCEREUS UNDATUS',
  //     'image': '../assets/3.png',
  //     'description':
  //         'Also known as the Dragon fruit or Pitahaya, is a climbing cactus with sweet, juicy, and refreshing fruit that has a unique appearance.'
  //   },
  //   {
  //     'name': 'CEREUS PERUVIANUS',
  //     'image': '../assets/4.png',
  //     'description':
  //         'Also known as the Peruvian apple cactus, is a large, columnar cactus with nocturnal white flowers and edible fruits.'
  //   },
  //   {
  //     'name': 'EPIPHYLLUM CRENATUM',
  //     'image': '../assets/5.png',
  //     'description':
  //         'a very a very popular and well-known species with robust stems, leaf-like in appearance and with margins notched or scalloped. '
  //   },
  //   {
  //     'name': 'HYLOCEREUS POLYRHIZUS',
  //     'image': '../assets/6.png',
  //     'description':
  //         'A species of cactus that has red skin and red flesh fruit, also known as dragon fruit or Selenicereus. It is a succulent plant that grows in warm climates and has spines on the stem and leaves.'
  //   },
  //   {
  //     'name': 'EPIPHYLLUM HOOKERI',
  //     'image': '../assets/7.png',
  //     'description':
  //         'Known to be a climbing cactus that grows abundant foliage of long and strappy, yet sturdy, leaves.'
  //   },
  //   {
  //     'name': 'PENIOCEREUS GREGGII',
  //     'image': '../assets/8.png',
  //     'description':
  //         'This plant is commonly known as the Arizona Queen of the Night. They have a large underground tuber, thin and inconspicuous stems. '
  //   },
  //   {
  //     'name': 'EPIPHYLLUM PHYLLANTHUS',
  //     'image': '../assets/9.png',
  //     'description':
  //         'Known as the climbing cactus, is a species of epiphytic cacti. It has no leaves, instead having stems that photosynthesise. It is thought to be pollinated by hawkmoths, as the flowers only open at night and produce a strong fragrance.'
  //   },
  //   {
  //     'name': 'CEREUS HILDMANNIANUS',
  //     'image': '../assets/10.png',
  //     'description':
  //         'Produces beautiful white flowers and have a sweet fragrance. The flowers can reach up to 15cm in diameter and are followed by reddish-purple fruits that are edible but not commonly consumed.'
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 10, 19),
        title: const Text('Cereus',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            )),
        actions: <Widget>[],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
                padding:
                    EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 20),
                child: Text(
                  'CEREUS',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'CrimsonText',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10, right: 20, top: 0),
              child: Text(
                "NIGHT BLOOMING CACTI PLANTS",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'CrimsonText',
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,
                      color: Color.fromARGB(255, 249, 252, 255)),
                  hintText: 'Search Collections',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 167, 183, 197),
                    fontSize: 16.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: _collection.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final item = _collection[index]; //positional parameter?
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlantsScreen(item),
                        ),
                      );
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              item.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              item.localName,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       left: 10, bottom: 10, right: 10, top: 0),
                          //   child: Text(
                          //     item['description'],
                          //     style: const TextStyle(
                          //       color: Color.fromARGB(255, 167, 183, 197),
                          //       fontSize: 11.0,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
