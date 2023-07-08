import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/widgets/common_button.dart';
import 'package:flutter/material.dart';

class SideNavigationDrawer extends StatelessWidget {
  const SideNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          height: double.maxFinite,
          width: 250,
          child: Drawer(
              backgroundColor: backgroundColor,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      buildHeader(context),
                      buildMenuItems(context),
                    ]),
              )),
        ));
  }

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );
  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      Divider(
        thickness: 4,
        color: Colors.grey,
      ),
      Text('Categories',style: TextStyle(color: whiteColor),),
      ListTile(
        leading: Icon(Icons.person_3,color: whiteColor,size: 36,),
        title: Text('Home',style: TextStyle(color: whiteColor,fontSize: 24),),
        onTap: (){},
      ),
      ListTile(
        leading: Icon(Icons.home_outlined,color: whiteColor,),
        title: Text('Home',style: TextStyle(color: whiteColor),),
        onTap: (){},
      ),ListTile(
        leading: Icon(Icons.home_outlined,color: whiteColor,),
        title: Text('Home',style: TextStyle(color: whiteColor),),
        onTap: (){},
      ),
      ListTile(
        leading: Icon(Icons.home_outlined,color: whiteColor,),
        title: Text('Home',style: TextStyle(color: whiteColor),),
        onTap: (){},
      ),
      ListTile(
        leading: Icon(Icons.home_outlined,color: whiteColor,),
        title: Text('Home',style: TextStyle(color: whiteColor),),
        onTap: (){},
      ),
    ],
  );
}
