import 'package:flutter/material.dart';

class Cashback extends StatefulWidget {
  const Cashback({Key? key}) : super(key: key);

  @override
  State<Cashback> createState() => _CashbackState();
}

class _CashbackState extends State<Cashback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Cashback Earned'),
        centerTitle: true,
        backgroundColor: const Color(0xFF080f2e),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                            child: Text('NGN20,000.00',
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
                                Icon(Icons.refresh,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                SizedBox(width: 5.0),
                                Text('Cashback',
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
              const SizedBox(height: 5.0),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text('12-12-2023',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('12:02PM',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          Text('200.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('Mobil',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('12-12-2023',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text('12:02PM',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const <Widget>[
                              Text('300.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Text('Mobil',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
