import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stock_app/pages/order_items_page/orders_list_items_page.dart';
import 'package:stock_app/pages/profile_page/profile_page.dart';

import 'components/button_component.dart';

class DashboardPage extends StatelessWidget {
  final _mainColor = Color(0xff4B2D83);
  final _lightTextColor = Color(0xff9785B7);
  final _buttonColor = Color(0xff5FD247);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _mainColor,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 70),
              child: SvgPicture.asset(
                "assets/man.svg",
                width: 283,
                height: 283,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Welcome to Fastbox",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                ),
              ),
            ),
            Container(
              width: 234,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing",
                style: TextStyle(
                  color: _lightTextColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // buttons Section
            Container(
              margin: EdgeInsets.only(top: 125),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SmallButton(
                    iconData: FontAwesomeIcons.list,
                    callBack: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderItemsPage()));
                    },
                  ),
//                  Spacer(flex: 10),
                  LargeButton(
                    buttonText: "Add new order",
                    callBack: (){
                      print("Add new order");
                    },
                  ),
//                  Spacer(flex: 10),
                  SmallButton(
                    iconData: FontAwesomeIcons.user,
                    callBack: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
