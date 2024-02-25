import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_navigator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String infoText = '';
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'メールアドレス'),
                controller: emailController,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'パスワード'),
                controller: passwordController,
                obscureText: true,
              ),
              Container(
                padding: EdgeInsets.all(8),
                // メッセージ表示
                child: Text(infoText),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('ログイン'),
                  onPressed: () async {
                    try {
                      final FirebaseAuth auth = FirebaseAuth.instance;
                      final UserCredential userCredential = await auth.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      final User? user = userCredential.user;
                      if (user != null) {
                        // Proceed with non-null user
                        setState(() {
                          infoText = 'Sign in succeeded\n\nUser: ${user.email}';
                        });
                        // ログインに成功した場合
                        // チャット画面に遷移＋ログイン画面を破棄
                        await Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                            return HomePage(user);
                          }),
                        );
                      } else {
                        // Handle null user scenario
                        setState(() {
                          infoText = 'Sign in failed: User is null';
                        });
                      }
                    } catch (e) {
                      setState(() {
                        infoText = 'Sign in failed\n\n$e';
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}