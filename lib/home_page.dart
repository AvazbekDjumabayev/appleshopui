import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<String> _listitems = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text("Apple Products"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(13),
            child: Container(
              height: 25,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber
              ),
              child: Center(
                child: Text("7",style: TextStyle(color: Colors.white),),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            // #header
            Container(
              margin: EdgeInsets.all(3),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/image_4.jpg',
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black12
                      ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("Life Sale",style: TextStyle(color: Colors.white,fontSize: 40),),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Shop Now",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            // #body
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listitems.map((item) => celloflist(item)).toList(),
                  )
              ),
          ]
        ),
      ),
    );
  }
  Widget celloflist(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.favorite,color: Colors.red,size: 35,)
          ],
        ),
      ),
    );
  }
}
