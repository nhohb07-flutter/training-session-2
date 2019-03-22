import 'package:flutter/material.dart';
import 'home.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        brightness: Brightness.dark,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Image.asset(
                'assets/images/4V0b.gif',
                width: 200,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 14),
                  contentPadding: EdgeInsets.only(bottom: 5),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  TextField(
                    obscureText: !_isShowPassword,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 14),
                      contentPadding: EdgeInsets.only(bottom: 5),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      _isShowPassword ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _toggleShowPassword,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                    child: Text('Sign In'),
                    color: Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(title: 'Home Page'),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  child: Text('Sign Up'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _toggleShowPassword() {
    setState(() {
      _isShowPassword = !_isShowPassword;
    });
  }
}
