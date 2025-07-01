import 'package:expoloredz_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:expoloredz_flutter/component/constants.dart';
import 'package:expoloredz_flutter/component/logo_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1500,
      ), // Adjust duration as needed
    )..repeat(); // Repeat the animation indefinitely

    Future.delayed(
      AppConstants.splashDuration,
      () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const HomeScreen(),
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
            AnimatedBuilder(
              animation: _animationController,
              child: Image.asset(
                'assets/logo_compas.png',
                width: 50,
                height: 50,
              ),
              builder:
                  (
                    BuildContext context,
                    Widget? child,
                  ) {
                    return Transform.rotate(
                      angle:
                          _animationController
                              .value *
                          2.0 *
                          3.1415926535,
                      child: child,
                    );
                  },
            ),
          ],
        ),
      ),
    );
  }
}
