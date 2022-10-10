import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_cleaning/core/color_manager.dart';
import 'package:home_cleaning/core/helper_methods.dart';
import 'package:home_cleaning/view/profile/view.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderView extends StatelessWidget {
  const CalenderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateTo(page: const ProfileView());
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
                  height: 30.h,
                ),
                SizedBox(
                  height: 360.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: TableCalendar(
                      firstDay: DateTime.utc(2022, 10, 1),
                      lastDay: DateTime.utc(2023, 10, 1),
                      focusedDay: DateTime.now(),
                      // selectedDayPredicate: (day) {
                      //   return isSameDay(_selectedDay, day);
                      // },
                      // onDaySelected: (selectedDay, focusedDay) {
                      //   setState(() {
                      //     _selectedDay = selectedDay;
                      //     _focusedDay = focusedDay; // update `_focusedDay` here as well
                      //   });
                      // },
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                          fontSize: 20.sp,
                          color: ColorManager.white,
                          fontWeight: FontWeight.w700,
                        ),
                        weekendStyle: TextStyle(
                          fontSize: 20.sp,
                          color: ColorManager.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      headerStyle: HeaderStyle(
                        titleTextStyle: TextStyle(
                          fontSize: 20.sp,
                          color: ColorManager.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      calendarStyle: CalendarStyle(
                        defaultTextStyle: TextStyle(
                          fontSize: 15.sp,
                          color: ColorManager.white,
                        ),
                        weekendTextStyle: TextStyle(
                          fontSize: 15.sp,
                          color: ColorManager.white.withOpacity(0.5),
                        ),
                        outsideTextStyle: TextStyle(
                          fontSize: 15.sp,
                          color: ColorManager.white.withOpacity(0.5),
                        ),
                        todayTextStyle: TextStyle(
                          fontSize: 20.sp,
                          color: ColorManager.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 1.1,
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
                            "9 October 2022",
                            style: TextStyle(
                                color: ColorManager.textColor.withOpacity(0.5),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: 3,
                          itemBuilder: (context, index) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(12.h),
                                child: Text(
                                  "10 AM",
                                  style: TextStyle(
                                      color: ColorManager.textColor,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Container(
                                  height: 180.h,
                                  decoration: BoxDecoration(
                                    color: ColorManager.otherPurple,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Michael Hamilton",
                                                  style: TextStyle(
                                                      color: ColorManager
                                                          .mainColor,
                                                      fontSize: 18.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "Upkeep Cleaning",
                                                  style: TextStyle(
                                                    color: ColorManager
                                                        .textColor
                                                        .withOpacity(0.5),
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 15.h,
                                                      width: 15.h,
                                                      child: Image.asset(
                                                          "assets/icons/clock.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 12.w,
                                                    ),
                                                    Text(
                                                      "10AM - 11AM",
                                                      style: TextStyle(
                                                          color: ColorManager
                                                              .mainColor,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Client Rating",
                                                      style: TextStyle(
                                                        color: ColorManager
                                                            .textColor
                                                            .withOpacity(0.5),
                                                        fontSize: 15.sp,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      size: 22,
                                                      color: ColorManager
                                                          .textColor,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      size: 22,
                                                      color: ColorManager
                                                          .textColor,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      size: 22,
                                                      color: ColorManager
                                                          .textColor,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              height: 70.h,
                                              width: 70.h,
                                              child: Image.asset(
                                                  "assets/images/person_img.png"),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h),
                                          child: Divider(
                                            color: ColorManager.textColor,
                                            thickness: 0.5,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                              width: 20.h,
                                              child: Image.asset(
                                                  "assets/icons/phone.png"),
                                            ),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                              width: 20.h,
                                              child: Image.asset(
                                                  "assets/icons/message.png"),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "\$50",
                                              style: TextStyle(
                                                  color: ColorManager.mainColor,
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                            ],
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 15.h,
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
