import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/core/helpers/asset_helper.dart';
import 'package:travel_ui/core/helpers/image_helper.dart';
import 'package:travel_ui/core/reprensentation/screens/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async{
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed(IntroScreen.routeName);

  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetHelper.imageBackgroundSplash,
              fit: BoxFit.fitWidth),
        ),
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetHelper.imageCircleSplash,
              fit: BoxFit.fitWidth),
        ),
      ],
    );
  }
}
