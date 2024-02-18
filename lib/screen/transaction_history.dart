import 'package:flutter/material.dart';

import '../utility/colorconst.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({super.key});

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: ColorConstant.darkGrey),
                ),
                child: const Text(
                  "View PDF",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.darkGrey,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstant.mainColor),
                child: const Text(
                  "Send by mail",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.blackishColor,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
            elevation: 0,
            backgroundColor: ColorConstant.mainColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text("Transaction History"),
            // centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ColorConstant.mainColor,
                  border: Border.all(
                    color: ColorConstant.mainColor,
                  ),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/money-wallet.png",
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        .685,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Current Account",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color:
                                                  ColorConstant.fontColorDark),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "259610521514",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  ColorConstant.fontColorDark),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(Icons.keyboard_arrow_down_rounded)
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                color: Colors.grey.withOpacity(0.3),
                                width: MediaQuery.of(context).size.width,
                                height: 0.50,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      height: 28,
                                      width: 28,
                                      child: Image.asset(
                                          "assets/images/rupee.png")),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "₹ 6,213.15",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        wordSpacing: 0.3,
                                        color: ColorConstant.blackishColor,
                                        fontSize: 24),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const TabBar(
                labelColor: ColorConstant.mainColor,
                labelPadding: EdgeInsets.all(0),
                indicatorColor: ColorConstant.mainColor,
                unselectedLabelColor: ColorConstant.blackishColor,
                labelStyle: TextStyle(
                    fontSize: 14,
                    color: ColorConstant.mainColor,
                    fontWeight: FontWeight.w400),
                unselectedLabelStyle:
                    TextStyle(fontSize: 14, color: ColorConstant.mainColor),
                tabs: [
                  Tab(
                    text: "This Month",
                  ),
                  Tab(
                    text: "Last Month",
                  ),
                  Tab(
                    text: "Last 3 Month",
                  ),
                  Tab(
                    text: "Last 6 Month",
                  )
                ],
              ),
              // const SizedBox(
              //   height: 15,
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 15,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text("2023-11-06"),
              //       const SizedBox(
              //         width: 15,
              //       ),
              //       Row(
              //         children: [
              //           const Text("₹ 157.00"),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Image.asset("assets/images/downarrow.png"),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 15),
              //   child: Row(
              //     children: [
              //       Container(
              //           width: 200,
              //           child: const Text(
              //               "UPI/330896280114/DR/MOHD/UCBA/Q399861892@ybl/Payme")),
              //     ],
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 10),
              //   child: Divider(
              //     color: Colors.grey,
              //     thickness: 1,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
