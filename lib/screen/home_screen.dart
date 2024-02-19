import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parveej_bank/screen/login/login_screen.dart';
import 'package:parveej_bank/screen/transaction_history.dart';
import 'package:parveej_bank/utility/images.dart';
import '../utility/color_const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  onNavigation() {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      setState(() {
        isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TransactionHistoryScreen(),
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
          // leading: IconButton(
          //   icon: const ImageIcon(AssetImage(Images.menu)),
          //   onPressed: () => Navigator.of(context).pop(),
          // ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              ImageIcon(
                AssetImage(Images.menu),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Welcome Sameer",
                style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          centerTitle: false,
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
          ]),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * .20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "|  OWN",
                          style: TextStyle(
                              fontSize: 16, color: ColorConstant.fontColorDark),
                        ),
                        VerticalDivider(
                          width: 150,
                          thickness: 1,
                          indent: 14,
                          endIndent: 14,
                          color: Colors.grey,
                        ),
                        Text(
                          "|  OWE",
                          style: TextStyle(
                              fontSize: 16, color: ColorConstant.fontColorDark),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      // width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .15,
                      decoration: BoxDecoration(
                        color: ColorConstant.mainColor,
                        border: Border.all(
                          color: ColorConstant.mainColor,
                        ),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/wallet white.png",
                                  height: 40,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * .11,
                                  width: 1,
                                  color: ColorConstant.whiteColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Current Account (259610521514)",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "259610521514",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "₹ 6,213.15",
                                      style: TextStyle(
                                          fontSize: 20,
                                          letterSpacing: 1,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 50,
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height * .20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: ColorConstant.mainColor),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isLoading = true;
                                });
                                onNavigation();
                              },
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .42,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.receipt_long_rounded,
                                      color: ColorConstant.mainColor,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      " Statement",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: ColorConstant.mainColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 2,
                              color: ColorConstant.lightGrey2,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .35,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  FaIcon(
                                    FontAwesomeIcons.user,
                                    size: 22,
                                    color: ColorConstant.mainColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    " Account Details",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: ColorConstant.mainColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Image.asset(
                      "assets/images/cardplatinum.png",
                      // height: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.circle_sharp,
                        color: ColorConstant.mainColor,
                        size: 15,
                      ),
                      Icon(
                        Icons.circle_sharp,
                        color: ColorConstant.lightGrey,
                        size: 15,
                      ),
                      Icon(
                        Icons.circle_sharp,
                        color: ColorConstant.lightGrey,
                        size: 15,
                      ),
                    ],
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
                        child: const Icon(
                          Icons.qr_code_scanner_outlined,
                          color: ColorConstant.whiteColor,
                          size: 40,
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
                            children: [
                              SizedBox(
                                height: 27,
                                width: 50,
                                child: Image.asset(Images.fastTag),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
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
                                    Images.offer,
                                  ),
                                  color: ColorConstant.mainColor),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Offer",
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
                                    Images.cash,
                                  ),
                                  color: ColorConstant.mainColor),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .13,
                                child: const Text(
                                  "Cash on Mobile",
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
