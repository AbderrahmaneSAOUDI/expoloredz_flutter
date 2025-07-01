import 'package:expoloredz_flutter/screens/login_screen.dart';
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

enum UserType { volunteer, organizer }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  String? _emailErrorText;
  String? _usernameErrorText;
  String? _passwordErrorText;
  String? _confirmPasswordErrorText;

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                  SizedBox(height: screenHeight * 0.02),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          const LogoImage(height: 100.0),
                          const SizedBox(height: 16.0),
                          Text(
                            'Create Account',
                            style: AppConstants.headingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Join the community!',
                            style: AppConstants.headingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30.0),
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
                                          : !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)
                                          ? 'Please enter a valid email'
                                          : null;
                                    });
                                  },
                                  validator: (value) => null,
                                ),
                                const SizedBox(height: 16.0),
                                CustomTextField(
                                  controller: _usernameController,
                                  hintText: 'Username',
                                  icon: Icons.person_outline,
                                  errorText: _usernameErrorText,
                                  onChanged: (value) {
                                    setState(() {
                                      _usernameErrorText = _usernameController.text.isEmpty
                                          ? 'Please enter a username'
                                          : _usernameController.text.length < 3
                                          ? 'Username must be at least 3 characters'
                                          : null;
                                    });
                                  },
                                  validator: (value) => null,
                                ),
                                const SizedBox(height: 16.0),
                                CustomTextField(
                                  controller: _passwordController,
                                  hintText: 'Password',
                                  icon: Icons.lock_outline,
                                  obscureText: true,
                                  errorText: _passwordErrorText,
                                  onChanged: (value) {
                                    setState(() {
                                      _passwordErrorText = _passwordController.text.isEmpty
                                          ? 'Please enter a password'
                                          : _passwordController.text.length < 6
                                          ? 'Password must be at least 6 characters'
                                          : null;
                                    });
                                  },
                                  validator: (value) => null,
                                ),
                                const SizedBox(height: 16.0),
                                CustomTextField(
                                  controller: _confirmPasswordController,
                                  hintText: 'Confirm Password',
                                  icon: Icons.lock_outline,
                                  obscureText: true,
                                  errorText: _confirmPasswordErrorText,
                                  onChanged: (value) {
                                    setState(() {
                                      _confirmPasswordErrorText = _confirmPasswordController.text.isEmpty
                                          ? 'Please confirm your password'
                                          : _confirmPasswordController.text != _passwordController.text
                                          ? 'Passwords do not match'
                                          : null;
                                    });
                                  },
                                  validator: (value) => null,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30.0),
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
                              text: 'Sign up',
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
                          const SizedBox(height: 20.0),
                          const DividerWithText(text: 'or'),
                          const SizedBox(height: 20.0),
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
                          const SizedBox(height: 30.0),
                          AuthNavigationText(
                            leadingText: 'Already have an account? ',
                            buttonText: 'Sign in',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
