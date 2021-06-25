import 'package:auth_flutter_laravel/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:auth_flutter_laravel/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Login',
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your email address'),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Password',
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your password'),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Login',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
