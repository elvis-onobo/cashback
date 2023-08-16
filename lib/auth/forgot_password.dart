import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Account Recovery'),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.grey[800]
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number'
              ),
            ),
            const SizedBox(height: 5.0),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    '/changePassword'
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF080f2e),
                  minimumSize: const Size(
                      100, 60
                  ),
                  elevation: 0
              ),
              child: const Text('Reset Your Password',
                style: TextStyle(
                    fontSize: 17.0
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
