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
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.05), // Top padding for notch
                const LogoImage(height: 128.0),
                const SizedBox(height: 16.0),
                Text(
                  'Your journey starts here',
                  style: AppConstants.headingTextStyle.copyWith(
                    color: AppConstants.secondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Take the first step',
                  style: AppConstants.headingTextStyle.copyWith(
                    color: AppConstants.secondaryColor,
                  ),
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
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                        controller: _usernameController,
                        hintText: 'Username',
                        icon: Icons.person_outline,
                        errorText: _usernameErrorText,
                        onChanged: (value) {
                          setState(() {
                            _usernameErrorText =
                                _usernameController.text.isEmpty
                                ? 'Please enter a username'
                                : value.length < 3
                                ? 'Username must be at least 3 characters'
                                : null;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a username';
                          }
                          if (value.length < 3) {
                            return 'Username must be at least 3 characters';
                          }
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
                            _passwordErrorText =
                                _passwordController.text.isEmpty
                                ? 'Please enter a password'
                                : value.length < 6
                                ? 'Password must be at least 6 characters'
                                : null;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                        controller: _confirmPasswordController,
                        hintText: 'Confirm Password',
                        icon: Icons.lock_outline,
                        obscureText: true,
                        errorText: _confirmPasswordErrorText,
                        onChanged: (value) {
                          setState(() {
                            _confirmPasswordErrorText =
                                _confirmPasswordController.text.isEmpty
                                ? 'Please confirm your password'
                                : value != _passwordController.text
                                ? 'Passwords do not match'
                                : null;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
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
                    text: 'Sign up',
                    onPressed: () {
                      // Manually trigger validation for all fields to update error states
                      setState(() {
                        _emailErrorText = _emailController.text.isEmpty
                            ? 'Please enter your email'
                            : !RegExp(
                                r'^[^@]+@[^@]+\.[^@]+',
                              ).hasMatch(_emailController.text)
                            ? 'Please enter a valid email'
                            : null;
                        _usernameErrorText = _usernameController.text.isEmpty
                            ? 'Please enter a username'
                            : _usernameController.text.length < 3
                            ? 'Username must be at least 3 characters'
                            : null;
                        _passwordErrorText = _passwordController.text.isEmpty
                            ? 'Please enter a password'
                            : _passwordController.text.length < 6
                            ? 'Password must be at least 6 characters'
                            : null;
                        _confirmPasswordErrorText =
                            _confirmPasswordController.text.isEmpty
                            ? 'Please confirm your password'
                            : _confirmPasswordController.text !=
                                  _passwordController.text
                            ? 'Passwords do not match'
                            : null;
                      });

                      if (_formKey.currentState!.validate()) {
                        // Process data
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
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
                    ), // Facebook
                    SocialIconButton(
                      icon: Icons.apple,
                      color: AppConstants.primaryColor,
                      onPressed: () {},
                    ), // Apple
                    SocialIconButton(
                      icon: Icons.g_mobiledata,
                      color: AppConstants.primaryColor,
                      onPressed: () {},
                    ), // Google (using g_mobiledata as a placeholder)
                  ],
                ),
                const SizedBox(height: 40.0),
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
                SizedBox(height: screenHeight * 0.05), // Bottom padding
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}
