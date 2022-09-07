import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/theme/apptheme.dart';

import 'dummyData/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.leaderboard,
          color: AppTheme.pinkColor,
        ),
        actions: const [
          Icon(
            Icons.message,
            color: AppTheme.pinkColor,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications,
            color: AppTheme.pinkColor,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        children: [
          const SizedBox(height: 30),
          firstContainer(),
          const SizedBox(height: 30),
          secondContainer(),
          const SizedBox(height: 30),
          middleCategories(),
          const SizedBox(height: 30),
          bottomContainer(),
        ],
      ),
    );
  }

  // Made These Below Widgets For Keeping Build Method Clean
  Widget firstContainer() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 10),
            blurRadius: 23,
            spreadRadius: 4,
            color: AppTheme.shadowColor,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/flower.png',
            height: 60,
          ),
          Row(
            children: const [
              Text(
                'Save Changes',
                style: TextStyle(
                  fontSize: 20,
                  color: AppTheme.pinkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.edit,
                color: AppTheme.pinkColor,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget secondContainer() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 10),
            blurRadius: 23,
            spreadRadius: 4,
            color: AppTheme.shadowColor,
          ),
        ],
      ),
      child: Row(
        children: [
          ...List.generate(
            3,
            (index) => const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.face,
                color: AppTheme.pinkColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget middleCategories() {
    return Row(
      children: [
        ...List.generate(
          Data.homepageIcon.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Icon(
                      Data.homepageIcon[index],
                      color: AppTheme.pinkColor,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  Data.homepagetitle[index],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomContainer() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 8, 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 10),
            blurRadius: 23,
            spreadRadius: 4,
            color: AppTheme.shadowColor,
          ),
        ],
      ),
      child: CupertinoScrollbar(
        thickness: 5,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ...List.generate(
                    Data.homepagetitle1.length,
                    (index) => Expanded(
                      child: Text(
                        Data.homepagetitle1[index],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
