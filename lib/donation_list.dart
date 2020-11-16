import 'package:flutter/material.dart';
import 'widgets/BestDonationWidget.dart';
import 'widgets/PopularDonation.dart';
import 'widgets/SearchWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String Category = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        //backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "What you need?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Category = "Foods";
                          print(Category);
                        });
                      },
                      child: TopMenuTiles(
                          name: "Foods", imageUrl: "ic_burger", slug: ""),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Category = "Clothes";
                          print(Category);
                        });
                      },
                      child: TopMenuTiles(
                          name: "Clothes", imageUrl: "ic_clothes", slug: ""),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Category = "Education";
                          print(Category);
                        });
                      },
                      child: TopMenuTiles(
                          name: "Education", imageUrl: "ic_books", slug: ""),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Category = "Electronics";
                          print(Category);
                        });
                      },
                      child: TopMenuTiles(
                          name: "Electronics", imageUrl: "ic_elec", slug: ""),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Category = "Others";
                          print(Category);
                        });
                      },
                      child: TopMenuTiles(
                          name: "Others", imageUrl: "ic_others", slug: ""),
                    ),
                  ],
                ),
              ),
            ), //TopMenus
            PopularDonationsWidget(searchCategory: Category),
            BestDonationWidget(),
          ],
        ),
      ),
    );
  }
}

class TopMenuTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;

  TopMenuTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Image.asset(
                    'assets/images/topmenu/' + imageUrl + ".png",
                    width: 24,
                    height: 24,
                  )),
                )),
          ),
          Text(name,
              style: TextStyle(
                  color: Color(0xFF6e6e71),
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
