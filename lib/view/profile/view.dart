import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_cleaning/core/color_manager.dart';

import 'model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                SizedBox(
                  height: 80.h,
                  width: 80.h,
                  child: Image.asset(
                    "assets/images/profile_img.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: size.height / 1.2,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(35.r)),
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
                            "Account",
                            style: TextStyle(
                                color: ColorManager.textColor,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 230.h,
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: account.length,
                          itemBuilder: (context, index) => Ink(
                            color: Colors.white,
                            child: ListTile(
                              onTap: () {},
                              leading: SizedBox(
                                height: 20.h,
                                width: 20.h,
                                child: Image.asset(
                                  account[index].image,
                                  color: ColorManager.mainColor,
                                ),
                              ),
                              title: Text(
                                account[index].name,
                                style: TextStyle(
                                  color: ColorManager.textColor,
                                  fontSize: 20.sp,
                                ),
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 2.h,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(15.w),
                          child: Text(
                            "Share",
                            style: TextStyle(
                                color: ColorManager.textColor,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 200.h,
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: share.length,
                          itemBuilder: (context, index) => Ink(
                            color: Colors.white,
                            child: ListTile(
                              onTap: () {},
                              leading: SizedBox(
                                height: 20.h,
                                width: 20.h,
                                child: Image.asset(
                                  share[index].image,
                                ),
                              ),
                              title: Text(
                                share[index].name,
                                style: TextStyle(
                                  color: ColorManager.textColor,
                                  fontSize: 20.sp,
                                ),
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 2.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
