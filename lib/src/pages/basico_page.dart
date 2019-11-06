import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 16.0, color: Colors.grey);
  final textButtonStyle = TextStyle(fontSize: 16, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _createLandScape(),
                _createTitulo(context),
                _createButtons(),
                _createText(),
                _createText(),
                _createText(),
                _createText(),
                _createText(),
              ],
    )));
  }

  _createLandScape() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://upscapetravel.com/wp-content/uploads/2017/12/Hiking-in-Patagonia-Chile-736x414.jpg'),      
        fit: BoxFit.cover,
      ),
    );
  }

  _createTitulo(BuildContext context) {
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: Row(children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Irure ad dolor laboris amet non.', style: titleStyle),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Voluptate id labore consectetur culpa.',
                      style: subTitleStyle)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('57', style: TextStyle(fontSize: 20.0))
          ])),
    );
  }

  _createButton(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 35.0,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(text, style: textButtonStyle),
        )
      ],
    );
  }

  _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createButton(Icons.call, 'CALL'),
        _createButton(Icons.near_me, 'ROUTE'),
        _createButton(Icons.share, 'SHARE'),
      ],
    );
  }

  _createText() {
    return SafeArea(
      child : Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20.0),
      child: Text(
        'Irure consequat pariatur aliqua nostrud ut ut Lorem enim est commodo tempor fugiat. Lorem eiusmod Lorem minim aliqua anim labore est et aliqua voluptate deserunt Lorem. Tempor adipisicing Lorem qui aute aute sint. Aliqua voluptate ipsum laborum dolor dolore. Exercitation nostrud enim pariatur excepteur cupidatat nisi. Proident do officia reprehenderit do cupidatat deserunt ipsum dolor qui reprehenderit ipsum. Reprehenderit cupidatat et eu sit veniam deserunt magna voluptate eu adipisicing eiusmod in et nulla. Labore culpa minim aliquip cupidatat ullamco et labore. Sunt tempor dolor fugiat Lorem ut ullamco reprehenderit consequat aliquip aute. Velit enim dolor amet pariatur amet sunt ullamco ipsum pariatur. Consequat pariatur nostrud proident amet exercitation.',
        textAlign: TextAlign.justify,
      ),
    )
    );
  }
}
