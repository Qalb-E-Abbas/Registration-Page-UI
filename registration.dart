import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<RegistrationScreen> {

  bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Stack(
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                  color: Colors.deepPurple
              ),
            ),
            Container(
              margin:   EdgeInsets.only(left: 30.0),
              height: 185.0,
              child: Icon(Icons.arrow_back, color: Colors.white, size: 40,),

            ),
            SingleChildScrollView(
              child: Container(
                  height: 550,
                  width: 800,
                  margin: EdgeInsets.only(top: 140.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60.0),
                        topLeft: Radius.circular(60.0),
                      )
                  ),
                  child: Column(

                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 250, top: 25),
                          child: Text('Register', style: TextStyle(fontSize: 30, color: Colors.black,
                              fontWeight: FontWeight.bold),)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          margin: EdgeInsets.only(left:25.0, right: 10),
                          child: Column(
                            children: [
                              Container(
                                child: Form(child:
                                Column(
                                  children: [

                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'First Name',
                                      ),
                                    ),

                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Last Name',
                                      ),
                                    ),


                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Phone Number',
                                      ),
                                    ),



                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Email',
                                      ),
                                    ),

                                    new Row(
                                      children: <Widget>[
                                        new Flexible(
                                          child: new TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Gender',
                                            ),
                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(right: 20.0),
                                          child: new DropdownButton<String>(
                                            items: <String>['Male', 'Female',].map((String value) {
                                              return new DropdownMenuItem<String>(
                                                value: value,
                                                child: new Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (_) {},
                                          ),
                                        ),

                                      ],
                                    ),



                                    TextFormField(
                                      keyboardType: TextInputType.text,

                                      obscureText: !_passwordVisible,//This will obscure text dynamically
                                      decoration: InputDecoration(

                                        hintText: 'Enter your password',
                                        // Here is key idea
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on passwordVisible state choose the icon
                                            _passwordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Theme.of(context).primaryColorDark,
                                          ),
                                          onPressed: () {
                                            // Update the state i.e. toogle the state of passwordVisible variable
                                            setState(() {
                                              _passwordVisible = !_passwordVisible;
                                            });
                                          },
                                        ),
                                      ),
                                    ),


                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Country',
                                      ),
                                    ),

                                    new Row(
                                      children: <Widget>[
                                        new Flexible(
                                          child: new TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'City',
                                            ),

                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(right: 20.0),
                                          child: new DropdownButton<String>(
                                            items: <String>['Male', 'Female',].map((String value) {
                                              return new DropdownMenuItem<String>(
                                                value: value,
                                                child: new Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (_) {},
                                          ),
                                        ),

                                      ],
                                    ),


                                    new Row(
                                      children: <Widget>[
                                        new Flexible(
                                          child: new TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Referral code',
                                            ),
                                          ),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(right: 20.0, top: 20.0),
                                            child: Text('Optional')
                                        ),

                                      ],
                                    ),

                                  ],
                                )),
                              ),

                              SizedBox(height: 10.0,),

                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Register', style: TextStyle(color: Colors.white),),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.green
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),

          ],
        )

    );

  }
}


