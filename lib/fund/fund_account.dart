import 'package:flutter/material.dart';

class Fund extends StatefulWidget {
  const Fund({Key? key}) : super(key: key);

  @override
  State<Fund> createState() => _FundState();
}

class _FundState extends State<Fund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Fund Your Account'),
        centerTitle: true,
        backgroundColor: const Color(0xFF080f2e),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  Text('Make a transfer to the account below to fund your wallet:',
                    style: TextStyle(
                        fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text('2003560903',
                    style: TextStyle(
                      fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text('Zenith Bank',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text('Elvis Onobo',
                    style: TextStyle(
                        fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
