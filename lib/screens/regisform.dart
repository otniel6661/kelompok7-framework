import 'package:coba_lagi/screens/loginpage.dart';
import 'package:coba_lagi/screens/home_screen.dart';
import 'package:flutter/material.dart';

class RegisForm extends StatefulWidget {
  const RegisForm({Key? key}) : super(key: key);

  @override
  _RegisFormState createState() => _RegisFormState();
}

class _RegisFormState extends State<RegisForm> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Registrasi',
              style: Theme.of(context).textTheme.headline3,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextField(
              obscureText: isHiddenPassword,
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: InkWell(
                  onTap: _togglePasswordView,
                  child: Icon(
                    Icons.visibility,
                    color: Color(0xFF81C784),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FlatButton(
              color: Color(0xFF81C784),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Center(
                child: Text(
                  'Daftar',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _togglePasswordView() {
    // if (isHiddenPassword == true) {
    //   isHiddenPassword = false;
    // } else {
    //   isHiddenPassword = true;
    // }
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
