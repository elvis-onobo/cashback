import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF080f2e),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.list_alt_outlined),
          //   label: 'Market',
          // ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card_rounded,
            ),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'Account',
          ),
        ],
      ),
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
                        iconSize: 50,
                        color: const Color(0xFF080f2e),
                        icon: const Icon(
                            Icons.account_circle
                        )
                    )
                  ],
                ),
                const SizedBox(height: 1.0),
                Card(
                  // elevation: 20,
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
                                  Icon(Icons.account_balance_wallet,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text('Balance',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
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
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/fund');
                        },
                        child: Card(
                          color: Colors.orange[400],
                          elevation: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.payments_rounded,
                                      size: 70,
                                      color: Colors.orange[900],
                                    ),
                                    const SizedBox(height: 15.0),
                                    const Text('Top-Up',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
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
                          color: Colors.green[400],
                          elevation: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.card_giftcard,
                                      size: 70,
                                      color: Colors.green[900],
                                    ),
                                    const SizedBox(height: 15.0),
                                    const Text('Cashback',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
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
                const SizedBox(height: 40.0),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/transactions');
                  },
                  child: Card(
                    color: const Color(0xff4b4ad6),
                    // elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.list_alt_sharp,
                            color: Colors.white,
                            size: 30.0,
                            semanticLabel: 'virtual account',
                          ),
                          SizedBox(width: 5.0),
                          Text('Transactions',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
