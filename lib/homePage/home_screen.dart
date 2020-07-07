import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:house_app_ui/itemsPage/itemScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageLink = [
    'imgs/html.jpg',
    'imgs/java.jpg',
    'imgs/js.jpeg',
    'imgs/PHP.jpg',
    'imgs/python.jpg'
  ];

  List<String> courseName = [
    'Html',
    'Java',
    'Java Script',
    'Php',
    'Python',
  ];
  List<String> sirName = [
    'U Khin Aye',
    'Daw Mya Win',
    'U Soe Han',
    'U Nyi Nyi',
    'U Ei Khine',
  ];

  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        margin: EdgeInsets.only(top: 27.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'La',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Pyae',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i7.pngguru.com/preview/831/88/865/user-profile-computer-icons-user-interface-mystique.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Text(
                'Discover',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Suitable Courses',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.purple[200].withOpacity(.5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Find your course',
                          hintStyle: TextStyle(
                            color: Colors.blueAccent,
                          )),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Stack(
                    children: <Widget>[
                      Icon(Icons.notifications_none),
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.orange[600],
                          ),
                          constraints: BoxConstraints(
                            minWidth: 12,
                            minHeight: 12,
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) { 
                  return ItemScreen();
                 }));
              },
                          child: Container(
                margin: EdgeInsets.only(top: 40.0,),
                height: 400,
                child: courseSwiper()),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            index==1? btmSelectedItem(Icon(Icons.home), 'Home'):IconButton(icon: Icon(Icons.home),onPressed: (){
              setState(() {
                index=1;
              });
            },),
            index==2?btmSelectedItem(Icon(Icons.message), 'Bookmarks'):IconButton(icon: Icon(Icons.bookmark_border),onPressed: (){
              setState(() {
                index=2;
              });
            },),
            index==3?btmSelectedItem(Icon(Icons.message), 'Message'):IconButton(icon: Icon(Icons.message), onPressed: (){
              setState(() {
                index=3;
              });
            }),
            index==4?btmSelectedItem(Icon(Icons.perm_identity), 'Profile'):IconButton(icon: Icon(Icons.perm_identity), onPressed: (){
              setState(() {
                index=4;
              });
            }),
          ],
        ),
      ),
    );
  }

  Widget courseSwiper() {
    return Container(
      height: 400,
      child: Swiper(
        viewportFraction: 0.8,
        itemCount: imageLink.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: <Widget>[
              Container(
                width: 250.0,
                height: 375,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: Image.asset(
                      imageLink[index],
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                right: 80,
                bottom: 1,
                child: FloatingActionButton(
                  heroTag: null,
                  mini: true,
                  backgroundColor: Colors.orange[600],
                  onPressed: null,
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
              ),
            
              Positioned(
                left:20,
                top: 290,
                child: Text(courseName[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                )),

                Positioned(
                left:20,
                top: 320,
                child: Icon(Icons.face,color: Colors.white),
                ),

                 Positioned(
                left:50,
                top: 320,
                child: Text(sirName[index],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                )),
       
            ],
          );
        },
      ),
    );
  }

  Widget btmSelectedItem(Icon selectedIcon, String selectedString){
    return Container(
              padding: EdgeInsets.all(7.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                color: Colors.purple[200].withOpacity(.5),
              ),
              child: Row(
                children: <Widget>[
                  selectedIcon,
                  Text(selectedString),
                ],
              ),
            );
  }
}
