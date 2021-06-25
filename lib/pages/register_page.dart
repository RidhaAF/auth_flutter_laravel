import 'package:auth_flutter_laravel/pages/home_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
            ),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Username',
            ),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Email',
            ),
            TextFormField(
              controller: _emailController,
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
              controller: _passwordController,
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
                  'Register',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
