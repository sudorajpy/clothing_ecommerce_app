import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideNavigationDrawer extends StatelessWidget {
  const SideNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
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
      const Divider(
        thickness: 4,
        color: Colors.grey,
      ),
      const Text('Categories',style: TextStyle(color: whiteColor),),
      ListTile(
        leading: SvgPicture.asset('assets/icons/men.svg',height: 44),
        title: const Text('Men',style: TextStyle(color: whiteColor,fontSize: 20),),
        onTap: (){},
      ),
      ListTile(
        leading: SvgPicture.asset('assets/icons/girl.svg',height: 44,),
        title: const Text('Girl',style: TextStyle(color: whiteColor,fontSize: 20),),
        onTap: (){},
      ),ListTile(
        leading: SvgPicture.asset('assets/icons/tshirt.svg',height: 44,),
        title: const Text('TShirt',style: TextStyle(color: whiteColor,fontSize: 20),),
        onTap: (){},
      ),
      ListTile(
        leading: SvgPicture.asset('assets/icons/categories.svg',height: 44,),
        title: const Text('Categories',style: TextStyle(color: whiteColor,fontSize: 20),),
        onTap: (){},
      ),
      ListTile(
        leading: SvgPicture.asset('assets/icons/help.svg',height: 44,),
        title: const Text('Help',style: TextStyle(color: whiteColor,fontSize: 20),),
        onTap: (){},
      ),
    ],
  );
}
