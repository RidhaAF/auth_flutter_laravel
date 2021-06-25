import 'package:flutter/material.dart';
import 'package:auth_flutter_laravel/pages/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.all(16.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
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
              'Logout',
            ),
          ),
        ),
      ),
    );
  }
}
