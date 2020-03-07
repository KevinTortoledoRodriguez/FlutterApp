import 'package:flutter/material.dart';
import 'package:flutterapp/menu/menu_lateral.dart';

void main() => runApp(AddUsuarios());

class AddUsuarios extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registrar',
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: HomePage(title: 'Registrar'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: UsuarioForm(),
      drawer: MenuLateral()
    );
  }
}

class UsuarioForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UsuarioFormState();
  }
}

class UsuarioFormState extends State<UsuarioForm> {
  final _formKey = GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(top:30.0)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 20.0),
              decoration: new InputDecoration(
                labelText: "Enter Email",
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.email),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}