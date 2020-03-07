import 'package:flutter/material.dart';
import 'package:flutterapp/add/add_usuarios.dart';
import 'package:flutterapp/main.dart';

class MenuLateral extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Menu ();
  }
}

class Menu extends  State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Usuarios',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blueAccent
            ),
          ),
          ListTile(
            leading: new Icon(
                Icons.home,
                color: Colors.black
            ),
            title: Text('Inicio'),
            onTap: () => Navigator.of(context).push(new PageRouteBuilder(
              pageBuilder: (_,__,___) => new Usuarios(), ))
          ),
          ListTile(
              leading: new Icon(
                  Icons.person_add,
                  color: Colors.black
              ),
              title: Text('Registrar'),
              onTap: () => Navigator.of(context).push(new PageRouteBuilder(
                pageBuilder: (_,__,___) => new AddUsuarios(), ))
          ),
        ],
      ),
    );
  }
}