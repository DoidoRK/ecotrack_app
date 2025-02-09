import 'package:ecotrack_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomScaffoldWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;
  final bool goBackButton;
  final Widget child;

  const CustomScaffoldWidget({super.key, required this.title, this.onBack, required this.child, this.goBackButton=true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: appThemeData.primaryColor,
              child: Stack(
                children: [
                  goBackButton ?
                  Positioned(
                    top: 40,
                    left: 20,
                    child: IconButton(
                      icon: const Icon(Icons.chevron_left, color: Colors.white),
                      iconSize: 60,
                      onPressed: onBack,
                    ),
                  ) : const SizedBox(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 48,
                          fontFamily: 'Alata',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}