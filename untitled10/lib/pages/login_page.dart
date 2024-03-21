// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:untitled10/pages/home_page.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/Images/nike-4-logo-png-transparent.webp',
                height: 200,
              ),
              const SizedBox(height: 15),
              Text(
                'Just Do It',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 15),
              MyTextField(
                initialObscureText: false,
                  controller: emailController,
                  labelText: 'Email',
                  icon: Icons.mail,
              ),
        
              const SizedBox(height: 15),
        
              MyTextField(
                initialObscureText: true,
                controller: passwordController,
                labelText: 'Password',
                icon: Icons.lock,
                sufIcon: Icons.visibility,
                sufIcon2: Icons.visibility_off,
        
        
              ),
              const SizedBox(height: 15),
              MyButton(onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(
                  builder: (context) => HomePage(),
                )
                );
        
              }, text: 'log in'),
        
              const SizedBox(height: 20),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?  ',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
              )
        
        
        
            ],
          ),
        ),
      ) ,
    );
  }
}
