import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  const Send({Key? key}) : super(key: key);

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Send Money'),
        centerTitle: true,
        backgroundColor: const Color(0xFF080f2e),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number'
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Amount'
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Reason'
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/dashboard');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF080f2e),
                  minimumSize: const Size(
                      100, 60
                  ),
                  elevation: 0
              ),
              child: const Text('Send',
                  style: TextStyle(
                      fontSize: 17.0
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
