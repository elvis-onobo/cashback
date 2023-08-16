import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Change Password'),
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
              color: Colors.grey[800]
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password'
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'New Password'
                    ),
                  ),
                  const SizedBox(height: 5.0),
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
                    child: const Text('Change Password',
                      style: TextStyle(
                          fontSize: 17.0
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(
                                  context,
                                  '/verifyEmail'
                              );
                            },
                            child: const Text('Verify E-mail',
                              style: TextStyle(
                                  color: const Color(0xFF080f2e),
                                  fontSize: 17
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
        )
    );
  }
}
