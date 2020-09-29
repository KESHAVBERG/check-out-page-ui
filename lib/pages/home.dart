import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RowWid(String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "\$ ${value}",
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Check Out",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.search),
        ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
                elevation: 10,
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('img/i.jpg'))),
                        child: Text(""),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                        height: 200,
                        width: 235,
                        child: Column(
                          children: [
                            RowWid("price", "60"),
                            SizedBox(
                              height: 10,
                            ),
                            RowWid("discount", "-3"),
                            SizedBox(
                              height: 10,
                            ),
                            RowWid("total", "57"),
                            SizedBox(
                              height: 10,
                            ),
                            RowWid("qty", "1"),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),

            //  ED
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text(
                    'Expected Delevery in 7 days',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 65),
                    child: RowWid("one day delevery for", "1"),
                  )
                ],
              ),
            ),
            //btn 1
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.pink[500],
                  borderRadius: BorderRadius.circular(40)),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Get one day delevery",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
              ),
            ),
            //  address

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 10.0,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'delervery Address',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 25),
                        ),

                        Text(
                          'xyz 60th street',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20),
                        ),
                        Text(
                          'mars 1000',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.pink[500],
                  borderRadius: BorderRadius.circular(40)),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "check out",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
