import 'package:banking/ui/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _textusername = TextEditingController();
  final _textpassword = TextEditingController();
  final snackbar = SnackBar(
    content: Text('Please enter correct user name or password!', style: TextStyle(color: Colors.white),),
    backgroundColor: Color(0xFFE05e7f2),
    elevation: 1.5,
    );
  //bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE112442),
      body: Builder(
        builder: (BuildContext context){
        return SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0),
                SizedBox(
                  child: SvgPicture.asset('assets/bank.svg', 
                  fit: BoxFit.contain,
                  height: 200.0,
                  width: 200.0,
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _textusername,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide(color: Colors.white, width: 2.0)
                      ),
                      icon: Icon(Icons.person, color: Colors.white,),
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                        color: Colors.white
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _textpassword,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      icon: Icon(Icons.lock, color: Colors.white,),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: Colors.white
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white
                      )
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)
                  ),
                  padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  onPressed: (){
                    if(_textusername.text == 'Amar' && _textpassword.text == 'thisismybankingpw'){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage())
                      );
                    }else{
                      Scaffold.of(context).showSnackBar(snackbar);
                    }
                  },
                  color: Color(0xFFE05e7f2),
                  splashColor: Colors.blue,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        );
        }
      ),
    );
  }
}