import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Movie App -- M-200644",
        style: TextStyle(
          fontFamily: 'AmaticSC',
          color: Color.fromRGBO(255, 253, 243, 50),
          fontSize: 30,),),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color.fromRGBO(26, 27, 67, 50),
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: Center(
              child: Text(
                'Menú',
                style: TextStyle(
                color: Colors.black38,
                fontSize: 24,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondoDrawerHeader.jpg'),
                fit: BoxFit.cover)
            ),
          ),
          new ListTile(
            title: new Text("Peliculas",),
            trailing: new Icon(Icons.local_movies),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Televisión"),
            trailing: new Icon(Icons.live_tv),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Cerrar"),
            trailing: new Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up), label: "Populares"),
      new BottomNavigationBarItem(
          icon: Icon(Icons.update), label: "Proximamente"),
      new BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favoritos")
    ];
  }
}
