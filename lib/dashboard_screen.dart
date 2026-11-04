import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'item_menu.dart';
import 'item_dashboard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              CupertinoIcons.videocam_circle_fill,size: 40,color: Colors.blue,
            ),
            const SizedBox(width: 10.0,),
            Text('VidMonetize'),
          ],
        ),
        actions: [
          Visibility(
            visible: size.width > 600,
            child: IconButton(onPressed:(){},
              icon:Icon(CupertinoIcons.search),
            ),
          ),
          Visibility(
            visible: size.width > 600,
            child: IconButton(onPressed:(){},
                icon:Icon(Icons.help_outline),
            ),
          ),
          const SizedBox(width: 10.0,),
          Visibility(
            visible: size.width > 600,
            child: Badge.count(
                count: 9,
                child: Icon(
                Icons.notifications_active_outlined,
              ),
            ),
          ),
          const SizedBox(width: 20.0,),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/ik.jpeg'),
          ),
          const SizedBox(width: 10.0,),
          Visibility(
              visible : size.width > 600,
              child: Text('Imran',
              style: Theme.of(context).textTheme.titleMedium,
              ),
          ),
          const SizedBox(width: 10.0,),
        ],
        //backgroundColor: Colors.white70,
      ),
      body: SafeArea(
        child: Row(
          children: [
            if(size.width > 800)
              Container(
             width: 250,
             color: Colors.grey.shade800,
             child: ListView(
               padding: EdgeInsets.zero,
               children: [
                 const SizedBox(height: 30,),
                 ItemMenu(title: 'Dashboard', icon: Icons.dashboard,selected: true,),
                 ItemMenu(title: 'Folder', icon: CupertinoIcons.folder),
                 ItemMenu(title: 'Analytics', icon: Icons.analytics_outlined),
                 ItemMenu(title: 'Community', icon: CupertinoIcons.group),
                 ItemMenu(title: 'Languages', icon: Icons.language),
                 ItemMenu(title: 'Earnings', icon: CupertinoIcons.money_dollar_circle),
                 ItemMenu(title: 'Customisation', icon: Icons.dashboard_customize_outlined),
                 ItemMenu(title: 'Account', icon: CupertinoIcons.profile_circled),
               ],
             ),
           ),
            Expanded(
              child: GridView.count(
                crossAxisCount:size.width <1100 ? 2 : size.width < 1300 ? 3 : 4,
                padding: EdgeInsets.all(15),
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                children: [
                  ItemDashboard(title: 'Views', value: '200k'),
                  ItemDashboard(title: 'Watch time', value: '25k hrs'),
                  ItemDashboard(title: 'Followers', value: '500k'),
                  ItemDashboard(title: 'Revenue', value: 'US\$200'),
                  ItemDashboard(title: 'Comments', value: '102k'),
                  ItemDashboard(title: 'Likes', value: '920k'),
                  ItemDashboard(title: 'Impressions', value: '133M'),
                  ItemDashboard(title: 'Returning followers', value: '40%'),

                ],
              ),

            ),
          ],
        ),
      ),
      drawer: size.width > 800 ? null : SafeArea(
        child:  Drawer(
          backgroundColor: Colors.grey.shade800,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: 200,),
              ItemMenu(title: 'Dashboard', icon: Icons.dashboard,selected: true,),
              ItemMenu(title: 'Folder', icon: CupertinoIcons.folder),
              ItemMenu(title: 'Analytics', icon: Icons.analytics_outlined),
              ItemMenu(title: 'Community', icon: CupertinoIcons.group),
              ItemMenu(title: 'Languages', icon: Icons.language),
              ItemMenu(title: 'Earnings', icon: CupertinoIcons.money_dollar_circle),
              ItemMenu(title: 'Customisation', icon: Icons.dashboard_customize_outlined),
              ItemMenu(title: 'Account', icon: CupertinoIcons.profile_circled),
            ],
          ),
        ),
      ),
    );
  }
}

