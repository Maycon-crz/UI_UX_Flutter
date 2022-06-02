import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginpage/views/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff154C79),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/parkinglogo.PNG',
                  // fit: BoxFit.cover,
                  height: 230,
                  width: 180,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Username',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter a username',
                ),
              ),
              const Text(
                'Password',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter a password',
                ),
              ),
              const SizedBox(height: 55),
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  height: 45,
                  width: 90,
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff154C79),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    'Dont have an accont?',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const RegisterScreen());
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
