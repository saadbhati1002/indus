import 'package:flutter/material.dart';
import 'package:parveej_bank/utility/constant.dart';
import '../utility/color_const.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({super.key});

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  int filterIndex = 1;
  bool isLoading = false;
  bool isShowPopUp = true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        isShowPopUp = true;
      });
    });
    super.initState();
  }

  onNavigation() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

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
                  border: Border.all(width: 1, color: ColorConstant.lightGrey2),
                ),
                child: const Text(
                  "View PDF",
                  style: TextStyle(
                      fontSize: 14,
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
                      letterSpacing: 1,
                      fontSize: 14,
                      color: ColorConstant.whiteColor,
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
            centerTitle: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Transaction History"),
              ],
            ),
            // centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ]),
        body: Stack(
          children: [
            SingleChildScrollView(
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
                          height: 15,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/money-wallet.png",
                                        height: 24,
                                      ),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .675,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Current Account",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w400,
                                                  color: ColorConstant
                                                      .fontColorDark),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "259610521514",
                                              style: TextStyle(
                                                  letterSpacing: 1,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: ColorConstant
                                                      .fontColorDark),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Icon(
                                          Icons.keyboard_arrow_down_rounded)
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
                                          height: 22,
                                          width: 22,
                                          child: Image.asset(
                                              "assets/images/rupee.png")),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      const Text(
                                        "₹ 6,213.15",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
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
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                    labelColor: ColorConstant.mainColor,
                    labelPadding: const EdgeInsets.all(0),
                    indicatorColor: ColorConstant.mainColor,
                    unselectedLabelColor: ColorConstant.blackishColor,
                    labelStyle: const TextStyle(
                        fontSize: 14,
                        color: ColorConstant.mainColor,
                        fontWeight: FontWeight.w400),
                    unselectedLabelStyle: const TextStyle(
                        fontSize: 14, color: ColorConstant.mainColor),
                    onTap: (value) {
                      if (value == 3) {
                        setState(() {
                          isLoading = true;
                        });
                        onNavigation();
                      }
                    },
                    tabs: const [
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .55,
                    child: TabBarView(children: [
                      Container(),
                      Container(),
                      Container(),
                      statementList(),
                    ]),
                  )
                ],
              ),
            ),
            isShowPopUp == true ? popUp() : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget popUp() {
    return Container(
      color: ColorConstant.blackishColor.withOpacity(0.5),
      height: MediaQuery.of(context).size.height * .9,
      width: MediaQuery.of(context).size.width * 1,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .29,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .065,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: ColorConstant.mainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Error",
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600,
                      color: ColorConstant.whiteColor),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .045,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Transaction are not available for the selected criteria",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 16,
                      color: ColorConstant.blackishColor,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .045,
              ),
              GestureDetector(
                onTap: () {
                  isShowPopUp = false;
                  setState(() {});
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorConstant.mainColor),
                  alignment: Alignment.center,
                  child: const Text(
                    "OK",
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorConstant.whiteColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget statementList() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          child: isLoading
              ? Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: CircularProgressIndicator(
                            color: ColorConstant.mainColor,
                            strokeWidth: 3.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              filterBox(
                                index: 1,
                                title: "All",
                                onTap: () {
                                  setState(() {
                                    filterIndex = 1;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              filterBox(
                                index: 2,
                                title: "Debit",
                                onTap: () {
                                  setState(() {
                                    filterIndex = 2;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              filterBox(
                                index: 3,
                                title: "Credit",
                                onTap: () {
                                  setState(() {
                                    filterIndex = 3;
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "BY DATE ",
                                style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        ColorConstant.darkGrey.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.date_range,
                                size: 15,
                                color: ColorConstant.darkGrey.withOpacity(0.7),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .42,
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: Constant.dateList.length,
                        itemBuilder: (context, index) {
                          return filterIndex == 1
                              ? transactionContainerWidget(index)
                              : filterIndex == 2
                                  ? Constant.inComingEnter[index] == true
                                      ? transactionContainerWidget(index)
                                      : const SizedBox()
                                  : Constant.inComingEnter[index] == false
                                      ? transactionContainerWidget(index)
                                      : const SizedBox();
                        },
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }

  Widget transactionContainerWidget(index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Constant.dateList[index] ?? '',
                style: const TextStyle(
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 15,
              ),
              Row(
                children: [
                  Text(
                    "₹${Constant.rupeeList[index]}",
                    style: const TextStyle(
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                    child: Image.asset(Constant.inComingEnter[index] == true
                        ? "assets/images/up_arrow.png"
                        : "assets/images/down_arrow.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: Text(
              Constant.paymentTo[index],
              style: const TextStyle(
                  fontSize: 12,
                  letterSpacing: 1,
                  color: ColorConstant.darkGrey,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(
            color: ColorConstant.lightGrey2,
            thickness: 1,
          ),
        )
      ],
    );
  }

  Widget filterBox({int? index, String? title, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: index == filterIndex
              ? ColorConstant.mainColor
              : Colors.transparent,
          border: Border.all(
              width: index == filterIndex ? 0 : 1,
              color: ColorConstant.lightGrey2),
        ),
        child: Text(
          title!,
          style: TextStyle(
              fontSize: 12,
              letterSpacing: 1,
              color: index == filterIndex
                  ? ColorConstant.whiteColor
                  : ColorConstant.blackishColor),
        ),
      ),
    );
  }
}
