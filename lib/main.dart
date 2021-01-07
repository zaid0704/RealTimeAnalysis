import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> key = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSubmitting = false;
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(color: Colors.yellow, fontSize: 30),
              )
            ],
          ),
          Form(
            key: key,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 18,
                        color: Colors.yellow),
                    validator: (val) {
                      if (val.isEmpty || !val.contains('@gmail.com')) {
                        return 'Invalid Email';
                      }
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.yellow),
                      ),

                      hintStyle: TextStyle(
                          color: Colors.yellow, fontFamily: 'Quicksand'),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      labelStyle: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          color: Colors.yellow),
                      labelText: 'Email Id',
                      // helperText: 'abc0000@gmail.com',
                      helperStyle: TextStyle(
                          fontFamily: 'Quciksand', color: Colors.yellow),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 18,
                        color: Colors.yellow),
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Invalid Password';
                      }
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      hintStyle: TextStyle(
                          color: Colors.yellow, fontFamily: 'Quicksand'),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.yellow),
                      ),
                      labelStyle: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 15,
                          color: Colors.yellow),
                      labelText: 'password',
                      hintText: 'abc@123',
                      helperStyle: TextStyle(
                          fontFamily: 'Quciksand', color: Colors.yellow),
                    ),
                  ),
                ),
                RaisedButton(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: isSubmitting
                      ? CircularProgressIndicator(
                          backgroundColor: Colors.black,
                        )
                      : Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                  onPressed: () {
                    _submit(emailController.text, passwordController.text);
                  },
                  color: Colors.yellow,
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Future _submit(String email, String password) async {}
}
