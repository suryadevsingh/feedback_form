import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClearTextField(),
    MyStatelessWidget(),
    );
  }
}class ClearTextField extends StatefulWidget {
  @override
  ClearTextFieldState createState() {
    return new ClearTextFieldState();
  }
}

class ClearTextFieldState extends State<ClearTextField> {
  TextEditingController _textFieldController = TextEditingController();

  _onClear() {
    setState(() {
      _textFieldController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clear TextField Example'),
      ),
      body: Center(
        child: Padding(
          //Add padding around textfield
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(
              suffix: IconButton(
                icon: Icon(Icons.cancel),
                onPressed: _onClear,
              ),
            ),
          ),
        ),
      ),
    );
  }
}class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}