import 'package:flutter/material.dart';
import '../utility/colorconst.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
          ]),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                              horizontal: 16, vertical: 8),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/wallet white.png",
                                height: 40,
                                color: Colors.white,
                              ),
                              const VerticalDivider(
                                width: 30,
                                thickness: 1,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.white,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Current Account (259610521514)",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "259610521514",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "₹ 6,213.15",
                                    style: TextStyle(
                                        fontSize: 20,
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
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/statement.png",
                          // height: 25,
                        ),
                        const Text(
                          " Statement",
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.mainColor,
                              fontWeight: FontWeight.w500),
                        ),
                        const VerticalDivider(
                          width: 80,
                          thickness: 1,
                          indent: 12,
                          endIndent: 12,
                          color: Colors.grey,
                        ),
                        Image.asset(
                          "assets/images/account.png",
                          // height: 25,
                        ),
                        const Text(
                          " Account Details",
                          style: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.mainColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Text(
                          "Quick Links",
                          style: TextStyle(color: ColorConstant.mainColor),
                        ),
                        Divider(
                          color: ColorConstant.mainColor,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      overView("fund transfer", "assets/images/money.png"),
                      const VerticalDivider(),
                      overView("BHIM UPI", "assets/images/bhim.png"),
                      const VerticalDivider(
                        width: 10,
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey,
                      ),
                      overView("Bill Payment", "assets/images/bill.png"),
                      const VerticalDivider(
                        width: 10,
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey,
                      ),
                      overView("Recharge", "assets/images/rechagrge.png"),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      overView("Deposit", "assets/images/deposit.png"),
                      const VerticalDivider(
                        width: 10,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.grey,
                      ),
                      overView("Cards", "assets/images/carp.png"),
                      const VerticalDivider(
                        width: 10,
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey,
                      ),
                      overView("Personal Loan", "assets/images/loan.png"),
                      const VerticalDivider(
                        width: 10,
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                        color: Colors.grey,
                      ),
                      overView("Investments", "assets/images/inve.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.amber,
              child: Image.asset(
                "assets/images/ffd.png",
                fit: BoxFit.contain,
              ),
            ),
          )
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
