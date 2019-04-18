import 'package:flutter/material.dart';
import 'package:clone_travel_ui/ui/dashboard.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => new _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(50, 147, 247, 1.0),
                      Color.fromRGBO(72, 197, 247, 1.0)
                    ])),
                ),
              ),


              Flexible (
                flex: 1,
                child: Container(
                  color: Colors.white10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 150.0,
                      ),

                      Padding (
                        padding: const EdgeInsets.only(top: 18.0),
                        child: RichText(

                            text: TextSpan(children: <TextSpan> [
                              TextSpan (
                                text: "Have an account?",
                                style: TextStyle(
                                  color: Colors.grey,fontSize: 14.0)),
                              TextSpan (
                                text: "Create Now",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14.0,
                                  letterSpacing: 0.4))

                            ]),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          Positioned (
            top: MediaQuery.of(context).size.height / 2 - 79.0,
            left: 12.0,
            right: 12.0,
            child: Container(
              height: 201.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9.0)),
                color: Colors.white10
              ),

              child: Card(
                child: Column(
                  children: <Widget>[
                    Padding (
                      padding: const EdgeInsets.only(left: 28.0,right: 28.0,top: 14.0,bottom: 7.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelStyle:  TextStyle(color: Colors.grey),
                          filled: false,
                          hintText:  'Email',
                          labelText: 'Email',
                          suffixIcon:  Icon(Icons.person_outline)),

                        keyboardType: TextInputType.text,

                      ),
                    ),
                    Padding (
                      padding: const EdgeInsets.only(
                        left: 28.0,right: 28.0,bottom: 7.0),

                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          filled: false,
                          labelStyle:  TextStyle(color: Colors.blueGrey),
                          suffixIcon: Icon(Icons.lock_outline),
                          hintText: 'Password',
                          labelText: 'Password',
                        ),

                        keyboardType: TextInputType.emailAddress,
                      ),

                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned (
            right: 24.0,
            left: 24.0,
            top: MediaQuery.of(context).size.height /2 - 80.0 + 199.0 - 30.0,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
              },

              child: Container(
                height: 59.0,
                width: MediaQuery.of(context).size.width - 47.0,
                margin: EdgeInsets.only(left: 24.0,right: 24.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(49, 145 , 250 , 1.0),
                    Color.fromRGBO(71, 197, 245, 1.0)
                  ])),

                alignment: Alignment.center,
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white,fontSize: 22.0),
                ),
              ),
            ),
          )
        ],
      ),




    );
  }
}