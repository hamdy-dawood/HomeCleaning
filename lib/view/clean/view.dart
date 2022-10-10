import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_cleaning/core/color_manager.dart';
import 'package:home_cleaning/core/helper_methods.dart';
import 'package:home_cleaning/view/plan/view.dart';

class CleanView extends StatelessWidget {
  const CleanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  height: 350.h,
                  width: size.width,
                  child: Image.asset(
                    "assets/images/cleaning.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: size.height / 2,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: ColorManager.mainColor,
                      borderRadius: BorderRadius.circular(35.r)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Cleaning On Demand",
                        style: TextStyle(
                            color: ColorManager.white,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: Text(
                          "Book an appointment in less than 60 seconds and get on the schedule as early as tomorrow.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorManager.white,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Skip",
                              style: TextStyle(
                                color: ColorManager.white,
                                fontSize: 25.sp,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                navigateTo(page: const PlanView());
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Next",
                                    style: TextStyle(
                                      color: ColorManager.white,
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(12.r),
                                    child: CircleAvatar(
                                      radius: 18.r,
                                      backgroundColor: ColorManager.yellow,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorManager.white,
                                        size: 18.r,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
