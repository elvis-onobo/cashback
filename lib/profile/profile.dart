import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profile'),
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
                    labelText: 'First Name'
                ),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name'
                ),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail'
                ),
              ),
              const SizedBox(height: 5.0),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
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
                child: const Text('Update Profile',
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
