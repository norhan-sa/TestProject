import 'package:flutter/material.dart';

class Intro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          
          SafeArea(
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
                      ButtonTheme(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, //limits the touch area to the button area
                        minWidth: 0, //wraps child's width
                        height: 0,
                        child: FlatButton(
                          onPressed: (){
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
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 120, 0, 0),
                            child: Image.asset('images/img1.png',
                             fit: BoxFit.fitWidth,
                            ),
                          ),
                          Image.asset('images/image1.png',
                           fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      SizedBox(height:15),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Start to invest \nfor your future',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Raleway'
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 5),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Ex totam praesentium incidunt aut.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Raleway'
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}