import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  @override
  _LLoginScreen2State createState() => _LLoginScreen2State();
}

class _LLoginScreen2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16.0))),
    );

    final pageColor = Colors.pink;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                color: pageColor,
                child: Container(
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: pageColor.shade100,
                                    child: Icon(
                                      Icons.person,
                                      size: 48,
                                      color: pageColor.shade800,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: pageColor.shade50,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(56.0),
                                      topRight: Radius.circular(56.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SizedBox(height: 48.0),
                                    emailField,
                                    SizedBox(height: 24.0),
                                    passwordField,
                                    SizedBox(
                                      height: 36.0,
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: pageColor,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

/*
**********
**********
**********
**********
*** END***
**********
**********
**********
**********
 */
