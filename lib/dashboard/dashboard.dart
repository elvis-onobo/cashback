import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hello',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text('Elvis,',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0
                            ),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/myAccount');
                        },
                        iconSize: 40,
                        color: const Color(0xFF080f2e),
                        icon: const Icon(
                            FontAwesomeIcons.circleUser
                        )
                    )
                  ],
                ),
                const SizedBox(height: 1.0),
                Card(
                  // elevation: 5,
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(image: AssetImage('assets/blue-background.png'),
                        fit: BoxFit.cover,
                      )
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Center(
                              child: Text('NGN150,000.00',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(FontAwesomeIcons.wallet,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text('Balance',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/fund');
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: const <Widget>[
                                    Icon(FontAwesomeIcons.moneyBills,
                                      size: 50,
                                      color: Color(0xFF080f2e),
                                    ),
                                    SizedBox(height: 15.0),
                                    Text('Top-Up',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF080f2e),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/send');
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children:  const <Widget>[
                                    Icon(
                                      FontAwesomeIcons.paperPlane,
                                      color: Color(0xFF080f2e),
                                      size: 50.0,
                                      semanticLabel: 'send money',
                                    ),
                                    SizedBox(height: 15.0),
                                    Text('Send',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF080f2e),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/fund');
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: const <Widget>[
                                    Icon(FontAwesomeIcons.gifts,
                                      size: 50,
                                      color: Color(0xFF080f2e),
                                    ),
                                    SizedBox(height: 15.0),
                                    Text('Cashback',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF080f2e),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/cashback');
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: const <Widget>[
                                    Icon(FontAwesomeIcons.moneyBillTransfer,
                                      size: 50,
                                      color: Color(0xFF080f2e),
                                    ),
                                    SizedBox(height: 15.0),
                                    Text('Transactions',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF080f2e),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
