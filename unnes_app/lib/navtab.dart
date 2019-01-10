import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:unnes_app/customFont.dart';

class NavTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new TabBar(
      tabs: <Widget>[
        Tab(
          icon: Icon(CommunityMaterialIcons.view_dashboard),
        ),
        Tab(
          icon: Icon(CommunityMaterialIcons.book_open_page_variant),
        ),
        Tab(
          icon: Icon(MyFlutterApp.course),
        ),
        Tab(
          icon: Icon(MyFlutterApp.graduation_hat),
        ),
      ],
      labelColor: Colors.orange,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.orange,
    );
  }
}