import 'package:banking/accounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WithdrawPage extends StatefulWidget {
  @override
  _WithdrawPageState createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  var _amount = TextEditingController();
  final snackbar1 = SnackBar(
    content: Text('Enter a valid amount!', style: TextStyle(color: Colors.white)),
    backgroundColor: Color(0xFFE850375),
    elevation: 1.5,
  );

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE112442),
      appBar: AppBar(
        backgroundColor: Color(0xFFE0c1663),
        title: Text('Withdraw', style: TextStyle(color: Colors.white, fontSize: 24.0),),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext context){
          return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50.0),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: SvgPicture.asset('assets/withdraw.svg'),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _amount,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35.0),
                      borderSide: BorderSide(color: Colors.white, width: 1.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35.0),
                      borderSide: BorderSide(color: Colors.white, width: 2.0)
                    ),
                    hintText: 'How much money do you want to withdraw?',
                    hintStyle: TextStyle(
                      color: Colors.white
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white
                    )
                  ),
                ),
              ),

              SizedBox(height: 50.0),

              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)
                ),
                padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                onPressed: (){
                  if(double.parse(_amount.text) > amar.balance || double.parse(_amount.text) < 0 || _amount.text == null){
                    Scaffold.of(context).showSnackBar(snackbar1);
                  }
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('You have withdrawn Rs. ${_amount.text} !', style: TextStyle(color: Colors.white)),
                    backgroundColor: Color(0xFFE850375),
                    elevation: 1.5,
                  ));
                  setState(() {
                    amar.balance = amar.balance - double.parse(_amount.text);
                  });
                },
                color: Color(0xFFE4afa19),
                splashColor: Colors.lightGreen[800],
                child: Text(
                  'WITHDRAW MONEY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        );
      }
      ),
    );
  }
}