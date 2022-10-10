import 'package:flutter/material.dart';
import 'package:try_ricki_1/features/presentation/screens/splash/widgets/star_frame.dart';
import 'package:try_ricki_1/features/presentation/widgets/bottom_nav_bar.dart';

import 'package:try_ricki_1/features/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController animatedController;

  initialize() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.push(
      this.context,
      MaterialPageRoute(
        builder: (context) => BNavigationBar(),
      ),
    );
  }

  @override
  void initState() {
    animatedController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1200,
      ),
    )..repeat();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xff0B1E2D),
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/rick.png',
                    scale: 1.4,
                  ),
                  Image.asset('assets/images/and.png'),
                  Image.asset(
                    'assets/images/morty.png',
                    scale: 1.4,
                  ),
                  Image.asset(
                    'assets/images/boy.png',
                  ),
                  Image.asset(
                    'assets/images/oldman.png',
                  ),
                ],
              ),
            ),
            Positioned(
              child: Center(
                child: RotationTransition(
                  alignment: Alignment.centerRight,
                  turns: animatedController,
                  child: CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.amber,
                    child: ClipPath(
                      clipper: StarClipper(),
                      child: Container(
                        color: AppColors.dark0B1E2D,
                        width: 170,
                        height: 170,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    animatedController.dispose();
    super.dispose();
  }
}




  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       color: AppColors.lightFCFCFC,
  //       child: Center(
  //           child: RotationTransition(
  //         turns: animatedController,
  //         child: CircleAvatar(
  //           radius: 120,
  //           backgroundColor: Colors.amber,
  //           child: ClipPath(
  //             clipper: StarClipper(),
  //             child: Container(
  //               color: AppColors.dark0B1E2D,
  //               width: 180,
  //               height: 180,
  //             ),
  //           ),
  //         ),
  //       ),
  //       ),
  //     ),
  //   );
  // }