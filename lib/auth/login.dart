import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset('assets/YOUBANK-Big-Y.png',
            //     width: 200,
            //     height: 100
            // ),
            const Center(child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
              ),
            )),
            const SizedBox(height: 8.0),
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
                  labelText: 'Password'
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
              child: const Text('Login',
                  style: TextStyle(
                      fontSize: 17.0
                  )
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text('Register',
                          style: TextStyle(
                              color: const Color(0xFF080f2e),
                              fontSize: 17
                          ),
                        )
                    )
                ),
                Expanded(
                    child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/forgotPassword');
                        },
                        child: const Text('Forgot Password',
                          style: TextStyle(
                              color: const Color(0xFF080f2e),
                              fontSize: 17
                          ),
                        )
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
