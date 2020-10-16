import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailScreen extends StatelessWidget {
  
  var informationTextStyle = TextStyle(
    fontFamily: 'Oxygen'
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/danau-toba.jpg'),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                "Danau Toba",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(
                        "Open Everyday",
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        "24 hours",
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text(
                        "Rp. 5.000",
                        style: informationTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Danau Toba adalah sebuah danau vulkanik dengan ukuran panjang 100 kilometer dan lebar 30 kilometer yang terletak di Provinsi Sumatera Utara, Indonesia. Danau ini merupakan danau terbesar di Indonesia dan Asia Tenggara. Di tengah danau ini terdapat sebuah pulau vulkanik bernama Pulau Samosir.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/a/ae/Indonesia_-_Lake_Toba_%2826224127503%29.jpg'
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/c/cc/Danau_Toba_dari_Samosir.jpg'
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child : Image.network(
                        'https://media.suara.com/pictures/970x544/2018/09/27/44358-danau-toba.jpg'
                      ),  
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}