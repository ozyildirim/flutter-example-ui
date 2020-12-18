import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Container(
            // color: Colors.blue,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani("assets/images/model1.jpeg",
                    "assets/images/chanellogo.jpg"),
                SizedBox(
                  width: 30,
                ),
                listeElemani("assets/images/model2.jpeg",
                    "assets/images/louisvuitton.jpg"),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                    "assets/images/model3.jpeg", "assets/images/chloelogo.png"),
                SizedBox(
                  width: 30,
                ),
                listeElemani("assets/images/model1.jpeg",
                    "assets/images/chanellogo.jpg"),
                SizedBox(
                  width: 30,
                ),
                listeElemani("assets/images/model2.jpeg",
                    "assets/images/louisvuitton.jpg"),
                SizedBox(
                  width: 30,
                ),
                listeElemani(
                    "assets/images/model3.jpeg", "assets/images/chloelogo.png"),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ), //üst taraftaki profil listesi,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.blue.shade300,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ), //daisy fotoğraf
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width) - 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 50,),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 14, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
