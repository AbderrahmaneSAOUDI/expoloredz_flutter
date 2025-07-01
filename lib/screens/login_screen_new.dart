import 'package:expoloredz_flutter/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';
import 'package:expoloredz_flutter/component/custom_text_field.dart';
import 'package:expoloredz_flutter/component/social_icon_button.dart';
import 'package:expoloredz_flutter/component/primary_button.dart';
import 'package:expoloredz_flutter/component/auth_navigation_text.dart';
import 'package:expoloredz_flutter/component/divider_with_text.dart';
import 'package:expoloredz_flutter/component/logo_image.dart';
import 'package:expoloredz_flutter/screens/opportunities_screen.dart';
import 'package:expoloredz_flutter/component/app_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailErrorText;
  String? _passwordErrorText;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          const LogoImage(height: 128.0),
                          const SizedBox(height: 16.0),
                          Text(
                            'Welcome Back!',
                            style: AppConstants.headingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Sign in to continue',
                            style: AppConstants.headingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 40.0),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                CustomTextField(
                                  controller: _emailController,
                                  hintText: 'Email',
                                  icon: Icons.email_outlined,
                                  errorText: _emailErrorText,
                                  onChanged: (value) {
                                    setState(() {
                                      _emailErrorText = _emailController.text.isEmpty
                                          ? 'Please enter your email'
                                          : !RegExp(
                                              r'^[^@]+@[^@]+\.[^@]+',
                                            ).hasMatch(value)
                                          ? 'Please enter a valid email'
                                          : null;
                                    });
                                  },
                                  validator: (value) {
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20.0),
                                CustomTextField(
                                  controller: _passwordController,
                                  hintText: 'Password',
                                  icon: Icons.lock_outline,
                                  obscureText: true,
                                  errorText: _passwordErrorText,
                                  onChanged: (value) {
                                    setState(() {
                                      _passwordErrorText = _passwordController.text.isEmpty
                                          ? 'Please enter your password'
                                          : _passwordController.text.length < 6
                                          ? 'Password must be at least 6 characters'
                                          : null;
                                    });
                                  },
                                  validator: (value) {
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          GestureDetector(
                            onDoubleTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OpportunitiesScreen(),
                                ),
                              );
                            },
                            child: PrimaryButton(
                              text: 'Sign in',
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Processing Data'),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          const DividerWithText(text: 'or'),
                          const SizedBox(height: 30.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SocialIconButton(
                                icon: Icons.facebook,
                                color: AppConstants.primaryColor,
                                onPressed: () {},
                              ),
                              SocialIconButton(
                                icon: Icons.apple,
                                color: AppConstants.primaryColor,
                                onPressed: () {},
                              ),
                              SocialIconButton(
                                icon: Icons.g_mobiledata,
                                color: AppConstants.primaryColor,
                                onPressed: () {},
                              ),
                            ],
                          ),
                          const SizedBox(height: 40.0),
                          AuthNavigationText(
                            leadingText: 'Don\'t have an account? ',
                            buttonText: 'Sign up',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
