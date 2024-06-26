// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled10/pages/home_page.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController() ;
  final passwordController = TextEditingController() ;
  final confirmPasswordController = TextEditingController() ;
  final tellController = TextEditingController() ;


  void register(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset('lib/Images/nike-4-logo-png-transparent.webp',
                  height: 100,
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
                const SizedBox(height: 65),
                MyTextField(
                  initialObscureText: false,
                    controller: emailController,
                    labelText: 'Email',
                  icon: Icons.mail,
        
                ),
        
                const SizedBox(height: 15),
                MyTextField(
                  initialObscureText: false,
                  controller: tellController,
                  labelText: 'Tell',
                  icon: Icons.phone,
        
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
        
                MyTextField(
                  initialObscureText : true,
                  controller: confirmPasswordController,
                  labelText: 'Confirm Password',
                  icon: Icons.lock,
                  sufIcon: Icons.visibility,
                  sufIcon2: Icons.visibility_off,
        
        
                ),
                const SizedBox(height: 15),
        
                MyButton(onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context) => HomePage()));
        
                }, text: 'Register'),
        
                const SizedBox(height: 20),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?  ',
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Log in',
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
        ),
      ) ,

    );
  }
}
