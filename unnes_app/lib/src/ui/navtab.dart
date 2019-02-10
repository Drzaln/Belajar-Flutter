import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:MyUnnes/src/ui/customFont.dart';

class NavTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new TabBar(
      key: ValueKey('TabBar'),
      tabs: <Widget>[
        Tab(
          icon: Icon(CommunityMaterialIcons.view_dashboard),
          key: ValueKey('Tab'),
        ),
        Tab(
          icon: Icon(CommunityMaterialIcons.book_open_page_variant),
          key: ValueKey('Tab'),
        ),
        Tab(
          icon: Icon(MyFlutterApp.course),
          key: ValueKey('Tab'),
        ),
        Tab(
          icon: Icon(MyFlutterApp.graduation_hat),
          key: ValueKey('Tab'),
        ),
      ],
      labelColor: Colors.yellow[700],
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.transparent,
    );
  }
}