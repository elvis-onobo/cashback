import 'package:flutter/material.dart';

class Bvn extends StatefulWidget {
  const Bvn({Key? key}) : super(key: key);

  @override
  State<Bvn> createState() => _BvnState();
}

class _BvnState extends State<Bvn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your BVN'),
        centerTitle: true,
        backgroundColor: const Color(0xFF080f2e),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'BVN'
                ),
              ),
              const SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/bvn');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF080f2e),
                    minimumSize: const Size(
                        100, 60
                    ),
                    elevation: 0
                ),
                child: const Text('Update',
                  style: TextStyle(
                      fontSize: 17.0
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
