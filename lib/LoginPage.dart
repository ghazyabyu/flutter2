import 'package:flutter/material.dart';
import 'RegisterPage.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  // Controller untuk username dan password
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String statuslogin = "login status";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LoginPages")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to our application",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Text(
              "please fill your email and username Below",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Center(
              child: Container(
                width: 100,
                child: Image.asset("assets/alip.jpg"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    String username = usernameController.text;
                    String password = passwordController.text;

                    setState(() {
                      if (username == "admin" && password == "admin") {
                        statuslogin = "Login berhasil";
                      } else {
                        statuslogin = "Login gagal";
                      }
                    });
                  },
                  child: Text("Login"),
                ),
              ),
            ),
            // Tombol Register
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: Text("Belum punya akun? Daftar di sini"),
              ),
            ),
            Text(statuslogin),
          ],
        ),
      ),
    );
  }
}
