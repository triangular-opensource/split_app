import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:split_app/custom/CustomScaffold.dart';
import 'package:split_app/presentation/homscreen/homepages/Activity.dart';
import 'package:split_app/presentation/homscreen/homepages/Friend.dart';
import 'package:split_app/presentation/homscreen/homepages/Group.dart';
import 'package:split_app/presentation/homscreen/homepages/Profile.dart';
import 'package:split_app/utils/Global.dart';
import 'package:split_app/utils/StringValues.dart';

class HomeScreen extends StatefulWidget {
    static String routeNamed = StringValues.phoneAuth;

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  _getBody() {
    switch (currentPage) {
      case 0:
        return Group();
      case 1:
        return Friend();
      case 2:
        return Activity();
      case 3:
        return Profile();
      default:
        return Group();
    }
  }

  _getBottomBar() {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _getBottomBarItem(index: 0, icontab: Icons.home),
          _getBottomBarItem(index: 1,icontab: Icons.add),
          _getBottomBarItem(index: 2, icontab: Icons.notifications),
          _getBottomBarItem(index: 3, icontab: Icons.person),
        ],
      ),
    );
  }

  _getBottomBarItem({
    required int index,
    required IconData icontab,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPage = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil().setHeight(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color:
                    currentPage == index ? Colors.blueGrey: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Icon(
                  icontab,
                  color: currentPage == index
                      ? Colors.white
                      : Colors.black,
                  size: ScreenUtil().setHeight(32),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
      return SafeArea(child: Scaffold(
        body: Column(
          children: <Widget>[Expanded(child: _getBody()), _getBottomBar()],
        ),
        resizeToAvoidBottomInset: false,
      ));
  
  }
}