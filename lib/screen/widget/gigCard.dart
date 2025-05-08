import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Gigcard extends StatelessWidget {
  const Gigcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      width: 220.h,
      // height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: const DecorationImage(
                image: AssetImage('assets/images/post1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Graphic Design',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Design a social media creative for a day',
                  maxLines: 2,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent[700],
                        ),
                        Text(
                          ' 4.9',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ),
                        Text(
                          "(129) ",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        Container(
                          width: 4,
                          height: 4,
                          color: Colors.black87,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.w),
                          child: CircleAvatar(
                            radius: 8.r,
                            backgroundImage:
                                AssetImage("assets/images/onbord1.jpg"),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          " Rizal Kece",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Icon(
                          Icons.label_rounded,
                          color: Color(0xFF05C267),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "\$10",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
