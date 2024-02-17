import 'package:flutter/material.dart';
import 'package:parveej_bank/utility/colorconst.dart';
import 'package:parveej_bank/utility/images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.mainColor,
        leading: IconButton(
          icon: const Icon(Icons.menu_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Welcome Sameer"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.power_settings_new_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .38,
                      height: 1,
                      color: ColorConstant.mainColor.withOpacity(0.6),
                    ),
                    const Text(
                      "  Quick Links  ",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 12,
                          color: ColorConstant.mainColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .38,
                      color: ColorConstant.mainColor.withOpacity(0.6),
                      height: 1,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                      heightFactor: 0.5,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: ColorConstant.mainColor,
                            shape: BoxShape.circle),
                        height: MediaQuery.of(context).size.height * .135,
                        width: MediaQuery.of(context).size.width * .17,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 27,
                              width: 27,
                              child: Image.asset(Images.hand),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "Apply",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        // child: ,
                      )),
                  SizedBox(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              ImageIcon(
                                  AssetImage(
                                    Images.setting,
                                  ),
                                  color: ColorConstant.mainColor),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Setting",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              ImageIcon(
                                  AssetImage(
                                    Images.ok,
                                  ),
                                  color: ColorConstant.mainColor),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Quick Service",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.1,
                        ),
                        SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const ImageIcon(
                                  AssetImage(
                                    Images.screw,
                                  ),
                                  color: ColorConstant.mainColor),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .13,
                                child: const Text(
                                  "Service Request",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              ImageIcon(
                                  AssetImage(
                                    Images.support,
                                  ),
                                  color: ColorConstant.mainColor),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Reach Us",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget overView(String title, String imageUrl) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          width: 60,
          child: Image.asset(imageUrl),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: const TextStyle(
              color: ColorConstant.fontColorDark,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 5); // Start
    path.quadraticBezierTo(size.width * 0.10, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 1, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
