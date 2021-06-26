import 'package:auth_flutter_laravel/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:auth_flutter_laravel/pages/login_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                  (route) => false);
            },
            icon: Icon(
              Icons.logout_rounded,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    authProvider.user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              'Hi, ' + authProvider.user.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Username: ' + authProvider.user.username,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Email: ' + authProvider.user.email,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
