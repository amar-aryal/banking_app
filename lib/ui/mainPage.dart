import 'package:banking/ui/depositPage.dart';
import 'package:banking/ui/loginPage.dart';
import 'package:banking/ui/withdrawPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:banking/accounts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE112442),
      appBar: AppBar(
        backgroundColor: Color(0xFFE0c1663),
        title: Text(
          'Account Details',
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFE4a1761), Color(0xFFE310942)])),
              child: Row(
                children: <Widget>[
                  SizedBox(
                      height: 80.0,
                      width: 80.0,
                      child: SvgPicture.asset('assets/man.svg')),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: RichText(
                          text: TextSpan(
                              text:
                                  'Dear ${amar.accountholder}, your balance is:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                                text: '    Rs.${amar.balance}',
                                style: TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 38.0,
                                    fontWeight: FontWeight.bold))
                          ])),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Text('Activities',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5)),
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WithdrawPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25.0, 20.0, 15.0, 20.0),
                    padding: EdgeInsets.all(15.0),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                        //color: Color(0xFFE0c1663),
                        borderRadius: BorderRadius.circular(35.0),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFE4a1761), Color(0xFFE310942)])),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 50.0,
                          child: SvgPicture.asset('assets/withdraw.svg'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Text('Withdraw money',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5)),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DepositPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 15.0, 20.0),
                    padding: EdgeInsets.all(15.0),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                        //color: Color(0xFFE0c1663),
                        borderRadius: BorderRadius.circular(35.0),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFFE4a1761), Color(0xFFE310942)])),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 50.0,
                          child: SvgPicture.asset('assets/wallet.svg'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Text('Deposit money',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFE0f134f), Color(0xFFE270936)])),
      child: ListView(
        padding: EdgeInsets.only(top: 50.0),
        children: <Widget>[
          SizedBox(
            child: SvgPicture.asset('assets/man.svg', fit: BoxFit.contain),
            height: 80.0,
            width: 80.0,
          ),
          SizedBox(height: 50.0),
          ListTile(
            title: Text(
              'Withdrawls',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Deposits',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Back',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Logout',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
            trailing: Icon(Icons.exit_to_app, color: Colors.white),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
