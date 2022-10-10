import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_cleaning/core/color_manager.dart';
import 'package:home_cleaning/core/helper_methods.dart';
import 'package:home_cleaning/view/calender/view.dart';

import 'model.dart';

class PlanView extends StatefulWidget {
  const PlanView({Key? key}) : super(key: key);

  @override
  State<PlanView> createState() => _PlanViewState();
}

class _PlanViewState extends State<PlanView> {
  User? user;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorManager.mainColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navigateTo(page: const CalenderView());
          },
          backgroundColor: ColorManager.mainColor,
          child: Text(
            "Next",
            style: TextStyle(color: ColorManager.white, fontSize: 15.sp),
          ),
        ),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    "Your Plan",
                    style: TextStyle(
                        color: ColorManager.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.r),
                            topRight: Radius.circular(35.r))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15.w),
                            child: Text(
                              "Selected Cleaning",
                              style: TextStyle(
                                  color: ColorManager.textColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  user = User.upCleaning;
                                });
                              },
                              child: SizedBox(
                                height: 200.h,
                                width: 170.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 120.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                          color: ColorManager.grey
                                              .withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                        child: Image.asset(
                                          'assets/images/initial_clean.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Initial Cleaning",
                                      style: TextStyle(
                                        color: ColorManager.textColor,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                      width: 20.h,
                                      child: user == User.upCleaning
                                          ? Image.asset(
                                              "assets/icons/checked.png")
                                          : Image.asset(
                                              "assets/icons/not_checked.png"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  user = User.initial;
                                });
                              },
                              child: SizedBox(
                                height: 200.h,
                                width: 170.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 120.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                          color: ColorManager.grey
                                              .withOpacity(0.1),
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.r),
                                        child: Image.asset(
                                          'assets/images/upkeep_clean.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Upkeep Cleaning",
                                      style: TextStyle(
                                        color: ColorManager.textColor,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                      width: 20.h,
                                      child: user == User.initial
                                          ? Image.asset(
                                              "assets/icons/checked.png")
                                          : Image.asset(
                                              "assets/icons/not_checked.png"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.all(15.w),
                            child: Text(
                              "Selected Frequency",
                              style: TextStyle(
                                  color: ColorManager.textColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Container(
                            height: 50.h,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorManager.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.w),
                              child: TabBar(
                                unselectedLabelColor: ColorManager.grey,
                                isScrollable: true,
                                indicator: BoxDecoration(
                                  color: ColorManager.secColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                tabs: [
                                  Text(
                                    "Weekly",
                                    style: TextStyle(fontSize: 20.sp),
                                  ),
                                  Text(
                                    "Bi-weekly",
                                    style: TextStyle(fontSize: 20.sp),
                                  ),
                                  Text(
                                    "Monthly",
                                    style: TextStyle(fontSize: 20.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Center(
                                child: Text(
                                  "Weekly",
                                  style: TextStyle(fontSize: 30.sp),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Bi-weekly",
                                  style: TextStyle(fontSize: 30.sp),
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.w, top: 15.w),
                                        child: Text(
                                          "Selected Extras",
                                          style: TextStyle(
                                              color: ColorManager.textColor,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 300.h,
                                      child: GridView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          childAspectRatio: 1.3 / 1.5,
                                        ),
                                        itemCount: monthly.length,
                                        itemBuilder: (context, index) => Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 40,
                                              backgroundColor:
                                                  ColorManager.mainColor,
                                              child: Padding(
                                                padding: EdgeInsets.all(22.w),
                                                child: Image.asset(
                                                    monthly[index].image),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              monthly[index].name,
                                              style: TextStyle(
                                                  color: ColorManager.textColor,
                                                  fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50.h,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
