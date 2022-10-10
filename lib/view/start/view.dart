import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_cleaning/core/color_manager.dart';
import 'package:home_cleaning/core/helper_methods.dart';
import 'package:home_cleaning/view/clean/view.dart';

class StartView extends StatefulWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.h,
            ),
            Text(
              "Nimbl.",
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Clean Home\nClean Life.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Book Cleaners at the Comfort\nof you home.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              height: 300.h,
              width: size.width,
              child: Image.asset(
                "assets/images/intro_img.png",
                fit: BoxFit.fill,
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  navigateTo(page: const CleanView());
                },
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30.r)),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: ColorManager.mainColor,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
