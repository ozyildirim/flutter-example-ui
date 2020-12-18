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

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navBar(tabController: tabController),
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
                sliderElement("assets/images/model1.jpeg",
                    "assets/images/chanellogo.jpg"),
                SizedBox(
                  width: 30,
                ),
                sliderElement("assets/images/model2.jpeg",
                    "assets/images/louisvuitton.jpg"),
                SizedBox(
                  width: 30,
                ),
                sliderElement(
                    "assets/images/model3.jpeg", "assets/images/chloelogo.png"),
                SizedBox(
                  width: 30,
                ),
                sliderElement("assets/images/model1.jpeg",
                    "assets/images/chanellogo.jpg"),
                SizedBox(
                  width: 30,
                ),
                sliderElement("assets/images/model2.jpeg",
                    "assets/images/louisvuitton.jpg"),
                SizedBox(
                  width: 30,
                ),
                sliderElement(
                    "assets/images/model3.jpeg", "assets/images/chloelogo.png"),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ), //üst taraftaki profil listesi,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: cardComponent(),
          )
        ],
      ),
    );
  }

  Widget sliderElement(String imagePath, String logoPath) {
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

class cardComponent extends StatelessWidget {
  const cardComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      elevation: 4,
      // color: Colors.blue.shade300,
      child: Container(
        height: 470,
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
                          image: AssetImage('assets/images/model1.jpeg'),
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
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 22,
                )
              ],
            ), //dais fotoğraf ve dakika
            SizedBox(
              height: 15,
            ),
            Text(
              "This official website features a ribbed knit zipper jacker that is"
              "modern and stylish. It looks very temparament and is recommend to friends.",
              style: TextStyle(
                  color: Colors.grey, fontSize: 13, fontFamily: "Montserrat"),
            ), //resim açıklama
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: (MediaQuery.of(context).size.width - 50) / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/modelgrid1.jpeg",
                          ),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 95,
                      width: (MediaQuery.of(context).size.width - 100) / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/modelgrid2.jpeg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 95,
                      width: (MediaQuery.of(context).size.width - 100) / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/modelgrid3.jpeg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ],
            ), //model fotoğraflar
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2)),
                  child: Center(
                    child: Text(
                      "# Louis Vuitton",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Colors.brown),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown.withOpacity(0.2)),
                  child: Center(
                    child: Text(
                      "# Chloe",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          color: Colors.brown),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(), //etiketler
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.reply,
                  color: Colors.brown.withOpacity(0.4),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "1.7k",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.brown.withOpacity(0.4),
                      fontSize: 16),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.chat,
                  color: Colors.brown.withOpacity(0.4),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "325",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.brown.withOpacity(0.4),
                      fontSize: 16),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1.7k",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.brown.withOpacity(0.4),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ) //kalp ikon
              ],
            ) //ikonlar
          ],
        ),
      ),
    );
  }
}

class navBar extends StatelessWidget {
  const navBar({
    Key key,
    @required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 16,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 16,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 16,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 16,
            ),
          )
        ],
      ),
    );
  }
}
