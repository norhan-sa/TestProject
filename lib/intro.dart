import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testFlutterApp/provider.dart';

class Intro extends StatelessWidget {

  String image1 = 'images/image1.png';
  String image2 = 'images/image2.png';
  String image3 = 'images/image3.png';

  String img1 = 'images/img1.png';
  String img2 = 'images/img2.png';
  String img3 = 'images/img3.png';

  String text1 = 'Start to invest \nfor your future';
  String text2 = 'Follow our tips \nto achieve success!';
  String text3 = 'Keep your \ninvestment safe';

  String sub = 'Ex totam praesentium incidunt aut.';

  bool isSwitched = false;

  PageController _controller = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<IntroPro>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 25, 5, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                  Text('Dark Mood', 
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                   ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value){
                      themeNotifier.changeMood('dark');                        
                    },
                    activeTrackColor: Colors.white,
                    activeColor: Colors.black,
                  ),
                  ButtonTheme(
                    materialTapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, //limits the touch area to the button area
                    minWidth: 0, //wraps child's width
                    height: 0,
                    child: FlatButton(
                      onPressed: () {
                        print('NNNNNNNNNN');
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  mybody(image1 , img1 , text1 , sub , 1),
                  mybody(image2 , img2 , text2 , sub , 2),
                  mybody(image3 , img3 , text3 , sub , 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget mybody(image , img , text , sub , number){
    
    if(number == 1 ){
      return Column(
        children:[
          Flexible(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 130, 0, 0),
                  child: Image.asset(
                    img,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  sub,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway'),
                ),
              ],
            ),
          ),
        ]
      );
    }else if(number == 2){
      return Column(
        children:[
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  sub,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway'),
                ),
              ],
            ),
          ),
          Flexible(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 68, 0, 0),
                  child: Image.asset(
                    img,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ],
            )
          ),
        ]
      );
    }else if(number == 3){
      return Column(
        children:[
          Flexible(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                  child: Image.asset(
                    img,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  sub,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway'),
                ),
              ],
            ),
          ),
        ]
      );      
    }

  }

}



 


