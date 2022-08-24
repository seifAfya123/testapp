import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:testapp/presentation/router/rout_names_dart.dart';
import 'package:testapp/presentation/styles/my_theme_data.dart';
import 'package:testapp/presentation/widget/custom_elevated_button.dart';
import 'package:testapp/presentation/widget/default_button_text.dart';
import 'package:testapp/presentation/widget/from_to_text_container.dart';

class AvailableTripsScreen extends StatelessWidget {
  const AvailableTripsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("الرحلات المتاحه"),
        ),
        body: Column(
          children: [
            const FromToTextContainer(),
            tripOption(context),
            tripOption(context),
          ],
        ),
      ),
    );
  }

  tripOption(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [Text("#26546564")]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.w),
                width: 20.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.w),
                    color: MyThemeData.appyellow),
                child: const Text("بولمان"),
              ),
              // Spacer(),
              Column(
                children: const [
                  Text(
                    "12:30 PM",
                    textDirection: TextDirection.ltr,
                  ),
                  Text(
                    "عدد 3 كراس متاح",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Container(
                width: 20.w,
                alignment: Alignment.center,
                child: const Icon(Icons.bus_alert_outlined),
              ),
            ],
          ),
          CustomElevatedButton(
            myWidgets: const [DefaultButtonText(text: "110 جنيه")],
            buttonColor: MyThemeData.appblue,
            otpressFunction: () {
              Navigator.pushNamed(context, RoutNamesDart.rSeatReservation);
            },
          )
        ],
      ),
    );
  }
}
