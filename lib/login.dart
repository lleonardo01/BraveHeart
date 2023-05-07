import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                // untuk menampilkan gambar logo
                Image.asset('assets/brh.png'),
                const SizedBox(height: 16.0),
              ],
            ),
            //untuk ngasih spasi antar logo dan teks
            const SizedBox(height: 10.0),
            //untuk teks depan
            const Text(
                'BRAVE HEART adalah sebuah Recharge Group di Gereja GBI Generasi Baru Yogyakarta',
                // untuk style text
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontSize: 15,
                      height: 2,
                      color: Colors.blue,
                  )),
            const SizedBox(height: 15.0),
            Text (
                'Zona Selatan 3',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 30.0),
            // Remove filled: true values (103)
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                // Removed filled: true
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
              ],
            ),
            // untuk ngasih spasi
            const SizedBox(height: 30.0),
            ElevatedButton(
              child: const Text('Lanjut',
              style: TextStyle(
                color: Colors.white,
              ),),
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                elevation: 8.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}