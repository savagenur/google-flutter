import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_flutter/colors.dart';
import 'package:google_flutter/mobile/mobile_footer.dart';
import 'package:google_flutter/web/translation_buttons.dart';
import 'package:google_flutter/web/web_footer.dart';

import '../web/search_buttons.dart';
import '../widgets/search.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(onPressed: (() {}), icon: const Icon(Icons.menu)),
        title: SizedBox(
          width: size.width*0.34,
          child:const DefaultTabController(
            
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: blueColor,
                tabs: [
                Tab(
                  child: Text("ALL"),
                ),
                Tab(
                  text: "IMAGES",
                )
              ])),
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: primaryColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10).copyWith(right: 10),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Search(),
                    SizedBox(
                      height: 20,
                    ),
                    SearchButtons(),
                    SizedBox(
                      height: 20,
                    ),
                    TranslationButtons(),
                  ],
                ),
                const MobileFooter(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
