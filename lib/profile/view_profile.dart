import 'package:flutter/material.dart';
import 'package:flutterapp/menu/menu_lateral.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil',
      theme:  ThemeData(
        primarySwatch: Colors.red
      ),
      home: viewProfile(title: 'Perfil de usuario'),
    );
  }
}

class viewProfile extends StatelessWidget {
  final String title;
  viewProfile({Key key, this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title : Text(title)),
      body: Container(),
      drawer: MenuLateral(),
    );
  }
}

class Container extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserProfileState();
  }
}

class UserProfileState extends State<Container> {
  final _formKey = GlobalKey<FormState>();
  var nombres = "Kevin Andres";
  var apePat = "Tortoledo";
  var apeMat = "Rodriguez";
  var celular = "6671428064";
  var edad = 22;
  var correo = "catkuroi@gmail.com";
  var genero = "Masculino";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        new SizedBox(
            height: 60.0,
            child: DrawerHeader(
              child: Text(
                'Información',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  color: Colors.purple
              ),
            )
        ),
        ListTile(
            leading: new Icon(
                Icons.filter_1,
                color: Colors.black
            ),
            title: Text(nombres + ' ' + apePat + ' ' + apeMat)
        ),
        ListTile(
            leading: new Icon(
                Icons.filter_2,
                color: Colors.black
            ),
            title: Text(correo)
        ),
        ListTile(
            leading: new Icon(
                Icons.filter_3,
                color: Colors.black
            ),
            title: Text(celular)
        ),
        ListTile(
            leading: new Icon(
                Icons.filter_4,
                color: Colors.black
            ),
            title: Text(edad.toString())
        )
      ],
    );
  }
}