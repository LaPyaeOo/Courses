import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

  Completer<GoogleMapController>_mapController= Completer();
    static const LatLng _center = const LatLng(45.521563, -122.677433);


  void _onMapCreated(GoogleMapController mapController){
    _mapController.complete(mapController);
  }

  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('imgs/html.jpg',fit: BoxFit.cover,),
            height: screenHeight*0.4,
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight*0.3),
              child: Material(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Text('\$100',
                          style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),),
                        Icon(Icons.bookmark_border,size: 30.0,)
                      ],),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        child: Text('Services',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                 
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(Icons.fastfood,size: 14.0,),
                              Text('2'),
                              Icon(Icons.favorite,size: 14.0,),
                              Text('10'),
                              Icon(Icons.file_download,size: 14.0,),
                              Text('Unlimited'),
                            ],
                          ),
                          Text('2160 minutes/year'),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Divider(thickness:  2.0,),
                      SizedBox(height: 10.0,),
                      Text('Course Loan Calculator',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$10/month',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5)
                          ),
                          ),
                          Icon(Icons.question_answer,color: Colors.blue[900],)
                        ],
                      ),
                       SizedBox(
                        height: 5.0,
                      ),
                      Divider(thickness:  2.0,),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Your Bus-Stop Location',
                      style: TextStyle(color: Colors.black.withOpacity(0.5),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,),),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Apply for your nearest bus-stop',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        ),
                        SizedBox(height: 7.0,),
                        Container(
                          width: 400,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            )
                          ),
                          child: GoogleMap(
                              onMapCreated: _onMapCreated,
                              initialCameraPosition: CameraPosition(target: _center,zoom: 11.0)),
                        ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30.0,left: 20.0,right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                          child: Container(
                            
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)
                  ),
                  color: Colors.purple[200].withOpacity(.5),
                ),
                child: Text('Ask a Question',textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
           Expanded(
                        child: Container(
                padding: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)
                  ),
                  color: Colors.purple[200].withOpacity(.5),
                ),
                child: Text('Intrest',textAlign: TextAlign.center,),
              ),
           ),
          ],
        ),
      ),
    );
  }
}

//AIzaSyBuyGdsKdAbmT7183JkoYR7kVqZLAuXHb8