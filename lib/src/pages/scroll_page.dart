import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
           _pageOne(),
           _pageTwo()
        ],       
      )
    );
  }

  _backgroundColor(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(85, 194, 221, 1),      
    );
  }
  _backgroundImage() {
    return Container(
      child: Image(
      image: AssetImage('assets/img/scroll-1.png'),
      fit: BoxFit.cover,
      )
    );
  }

  _text(){

    final styleText = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
        child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: styleText,),
          Text('Miercoles', style: styleText,),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size : 70.0, color : Colors.white)
        ],
      ),
    );
  }

  _button(){
    return SafeArea(
      child: Center(
        child: RaisedButton(  
            shape: StadiumBorder(),         
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              child : Text('Bienvenidos', style: TextStyle(color: Colors.white, fontSize: 20.0),),
            ),
            color: Colors.blue,
            onPressed: (){},
          ),
        ),
    );
  }

  _pageOne() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _text()
      ],
    );
  }

  _pageTwo() {
     return Stack(
       children: <Widget>[
        _backgroundColor(),
        _button()
      ],
    );
  }
}
