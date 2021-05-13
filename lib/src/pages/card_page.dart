import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('Lorem ipsum dolor'),
              subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim dolor, dignissim eu ex nec, rutrum congue velit. Mauris eu ullamcorper nunc, eget malesuada nunc'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: Text('Cancelar'), onPressed: () {}),
              TextButton(child: Text('Ok'), onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://images.theconversation.com/files/125391/original/image-20160606-13080-s7o3qu.jpg?ixlib=rb-1.1.0&rect=0%2C62%2C3200%2C1552&q=45&auto=format&w=1356&h=668&fit=crop'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage(
          //       'https://images.theconversation.com/files/125391/original/image-20160606-13080-s7o3qu.jpg?ixlib=rb-1.1.0&rect=0%2C62%2C3200%2C1552&q=45&auto=format&w=1356&h=668&fit=crop'),
          // ),
          Container(
              padding: EdgeInsets.all(20.0),
              child: Text('No tengo idea de que poner'))
        ],
      ),
    );
  }
}
