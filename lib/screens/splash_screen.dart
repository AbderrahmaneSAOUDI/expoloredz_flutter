import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/screens/signup_screen.dart';
import 'package:expoloredz_flutter/component/constants.dart';
import 'package:expoloredz_flutter/component/logo_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      AppConstants.splashDuration,
      () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const SignUpScreen(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            const LogoImage(height: 120),
            const SizedBox(height: 40),
            SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                strokeWidth: 4,
                valueColor:
                    AlwaysStoppedAnimation<
                      Color
                    >(Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
