import 'package:flutter/material.dart';
import 'package:parveej_bank/screen/login/pin/pin_screen.dart';
import 'package:parveej_bank/utility/color_const.dart';
import 'package:parveej_bank/utility/images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  onNavigation() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PinScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.mainColor,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text("Welcome Sameer"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  " Change User ",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.whiteColor,
                      letterSpacing: 1),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Last Login 17-February-24, 06:58 pm",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: ColorConstant.whiteColor,
                  letterSpacing: 1),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        overView("fund transfer", "assets/images/money.png"),
                        Container(
                          height: 90,
                          width: 1,
                          color: ColorConstant.lightGrey2,
                        ),
                        overView("BHIM UPI", "assets/images/bhim.png"),
                        Container(
                          height: 90,
                          width: 1,
                          color: ColorConstant.lightGrey2,
                        ),
                        overView("Bill Payment", "assets/images/bill.png"),
                        Container(
                          height: 90,
                          width: 1,
                          color: ColorConstant.lightGrey2,
                        ),
                        overView("Recharge", "assets/images/rechagrge.png"),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: 1,
                    width: MediaQuery.of(context).size.width * 1,
                    color: ColorConstant.lightGrey2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        overView("Deposit", "assets/images/deposit.png"),
                        Container(
                          height: 90,
                          width: 1,
                          color: ColorConstant.lightGrey2,
                        ),
                        overView("Cards", "assets/images/carp.png"),
                        Container(
                          height: 90,
                          width: 1,
                          color: ColorConstant.lightGrey2,
                        ),
                        overView("Personal Loan", "assets/images/loan.png"),
                        Container(
                          height: 90,
                          width: 1,
                          color: ColorConstant.lightGrey2,
                        ),
                        overView("Investments", "assets/images/inve.png"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .23,
                    width: MediaQuery.of(context).size.width,
                    color: ColorConstant.backGroundColor.withOpacity(0.7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .027,
                        ),
                        const Text(
                          "********1514",
                          style: TextStyle(
                              letterSpacing: 1.2,
                              fontSize: 12,
                              color: ColorConstant.blackishColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width * .65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                width: 1, color: ColorConstant.mainColor),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "View Account Balance",
                            style: TextStyle(
                                letterSpacing: 0.9,
                                fontSize: 12,
                                color: ColorConstant.mainColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLoading = true;
                            });
                            onNavigation();
                          },
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * .65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorConstant.mainColor,
                              border: Border.all(
                                  width: 1, color: ColorConstant.mainColor),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 12,
                                  color: ColorConstant.whiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .016,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * .18,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Images.banner),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstant.mainColor,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstant.lightGrey2,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstant.lightGrey2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                ],
              ),
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

  Widget overView(String title, String imageUrl) {
    return SizedBox(
      height: 90,
      width: MediaQuery.of(context).size.width * .225,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 45,
            width: 60,
            child: Image.asset(imageUrl),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                letterSpacing: 1,
                color: ColorConstant.blackishColor,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
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
