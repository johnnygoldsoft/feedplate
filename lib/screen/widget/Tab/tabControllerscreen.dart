import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabcontrollerScreen extends StatelessWidget {
  const TabcontrollerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Nombre d'onglets
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            color: Colors.white, // Couleur de fond pour la TabBar
            child: TabBar(
              tabAlignment: TabAlignment.center,
              labelPadding: EdgeInsets.symmetric(horizontal: 24.w),
              isScrollable: true,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black45,
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Text(
                        "Basic",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " (\$10)",
                        style:
                            TextStyle(fontSize: 16.sp, color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Text(
                    "Standard",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    "Premium",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
