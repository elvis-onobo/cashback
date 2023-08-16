import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Transactions'),
        centerTitle: true,
        backgroundColor: const Color(0xFF080f2e),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                              fontSize: 25
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('12:02PM',
                           style: TextStyle(
                               fontWeight: FontWeight.normal,
                             fontSize: 25
                           ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Text('3,000.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('success',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.green,
                                fontSize: 25
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
                                fontSize: 25
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('12:02PM',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 25
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          Text('3,000.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('success',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.green,
                                fontSize: 25
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
                                fontSize: 25
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('12:02PM',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 25
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          Text('3,000.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('success',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.green,
                                fontSize: 25
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
                                fontSize: 25
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('12:02PM',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 25
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const <Widget>[
                          Text('713,000.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text('success',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.green,
                                fontSize: 25
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
