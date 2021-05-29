import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "Login",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // backgroundColor: Colors.white70,
          appBar: AppBar(
            title: Center(
                child: Text(
              "Login Form",
            )),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.8, 0.5, 0.8],
                    colors: [Colors.blue, Colors.white, Colors.pink])),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 100,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontSize: 16.0),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        icon: Icon(Icons.email),
                        labelText: 'Email',
                        suffix: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 350,
                    child: TextFormField(
                      style: TextStyle(fontSize: 16.0),
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        icon: Icon(Icons.lock),
                        labelText: 'Password',
                        suffix: GestureDetector(
                          onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 370,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password ?',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w100)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: new Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                            height: 60,
                          )),
                    ),
                    Text("OR"),
                    Expanded(
                      child: new Container(
                          margin:
                              const EdgeInsets.only(left: 15.0, right: 10.0),
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                            height: 60,
                          )),
                    ),
                  ]),
                  Container(
                    height: 50,
                    width: 350,
                    child: ElevatedButton.icon(
                      icon: Image.asset(
                        'assets/images/google-logo.png',
                        height: 35,
                        width: 30,
                      ),
                      onPressed: () {},
                      label: Text("Sign in with Google"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
