import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey[800]),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'My Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                const Text(
                  'Elvis Onobo',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Icon(
                            FontAwesomeIcons.circleUser,
                            size: 20.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/bvn');
                  },
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Icon(
                            FontAwesomeIcons.hashtag,
                            size: 20.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'BVN',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Logout'),
                          content: const Text('Are you sure you want to logout?'),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Logout'),
                              onPressed: () {
                                // Perform logout logic here
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Icon(
                            FontAwesomeIcons.rightFromBracket,
                            size: 20.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Logout',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.0,
                            ),
                          )
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
