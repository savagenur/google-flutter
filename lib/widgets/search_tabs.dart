import 'package:flutter/material.dart';
import 'package:google_flutter/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
           SearchTab(
            icon: Icons.search,
            text: "All",
            isActive: true,
          ),
          SizedBox(width: 20,),
          SearchTab(
            icon: Icons.image,
            text: "Images",
            
          ),
          SizedBox(width: 20,),
          SearchTab(
            icon: Icons.map,
            text: "Maps",
            
          ),
          SizedBox(width: 20,),
          SearchTab(
            icon: Icons.article,
            text: "News",
            
          ),
          SizedBox(width: 20,),
          SearchTab(
            icon: Icons.shop,
            text: "Shopping",
            
          ),
          SizedBox(width: 20,),
          SearchTab(
            icon: Icons.more_vert,
            text: "More",
            
          ),
          SizedBox(width: 20,),

        ],
      ),
    );
  }
}
