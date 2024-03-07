import 'package:flutter/material.dart';
import 'package:parveej_bank/screen/home_screen.dart';
import 'package:parveej_bank/utility/color_const.dart';
import 'package:parveej_bank/utility/images.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_screen_lock/flutter_screen_lock.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  bool isLoading = false;
  @override
  void initState() {
    Future.delayed(const Duration(microseconds: 5000)).then((value) {
      // _getPin();
    });
    super.initState();
  }

  onNavigation() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.mainColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(
              Icons.arrow_back_ios_new,
              size: 17,
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: Image.asset(Images.logo),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                      // image: const DecorationImage(
                      //   image: AssetImage(Images.bg),
                      // ),
                    ),
                    height: MediaQuery.of(context).size.height * .64,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ScreenLock(
                          useBlur: false,
                          secretsConfig: const SecretsConfig(
                            secretConfig: SecretConfig(
                                enabledColor: ColorConstant.mainColor,
                                disabledColor: ColorConstant.darkGrey),
                          ),
                          config: ScreenLockConfig(
                              titleTextStyle: const TextStyle(
                                  fontSize: 16, color: ColorConstant.darkGrey),
                              themeData: ThemeData.dark(useMaterial3: true),
                              buttonStyle: const ButtonStyle(),
                              textStyle: const TextStyle(
                                  color: ColorConstant.mainColor),
                              backgroundColor: Colors.transparent),
                          correctString: '4580',
                          secretsBuilder: (
                            context,
                            config,
                            length,
                            input,
                            verifyStream,
                          ) =>
                              SecretsWithCustomAnimation(
                                verifyStream: verifyStream,
                                config: config,
                                input: input,
                                length: length,
                              ),
                          onUnlocked: () {
                            setState(() {
                              isLoading = true;
                              onNavigation();
                            });
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .12,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstant.lightGrey2,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "19****67",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.blackishColor,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Last Login 07-March-24, 11:40 am",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.mainColor,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ),
          ),
          isLoading == true
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
                  child: const Center(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
                        color: ColorConstant.mainColor,
                        strokeWidth: 3.5,
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class SecretsWithCustomAnimation extends StatefulWidget {
  const SecretsWithCustomAnimation({
    super.key,
    required this.config,
    required this.length,
    required this.input,
    required this.verifyStream,
  });

  final SecretsConfig config;
  final int length;
  final ValueListenable<String> input;
  final Stream<bool> verifyStream;

  @override
  State<SecretsWithCustomAnimation> createState() =>
      _SecretsWithCustomAnimationState();
}

class _SecretsWithCustomAnimationState extends State<SecretsWithCustomAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    widget.verifyStream.listen((valid) {
      if (!valid) {
        // scale animation.
        _animationController.forward();
      }
    });

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 80),
    );

    _animation = Tween<double>(begin: 1, end: 2).animate(_animationController)
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            _animationController.reverse();
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
    return ScaleTransition(
      scale: _animation,
      child: Secrets(
        input: widget.input,
        length: widget.length,
        config: widget.config,
      ),
    );
  }
}
