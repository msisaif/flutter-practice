import 'package:flutter/material.dart';

import 'fragments/about_fragment.dart';
import 'fragments/contact_fragment.dart';
import 'fragments/home_fragment.dart';
import 'fragments/service_fragment.dart';
import 'fragments/settings_fragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeActivity()
    );
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar Tab View Fragment"),
            bottom: const TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.home_repair_service), text: "Services"),
                Tab(icon: Icon(Icons.insert_chart), text: "About Us"),
                Tab(icon: Icon(Icons.contact_mail_rounded), text: "Contact Us"),
                Tab(icon: Icon(Icons.settings), text: "Settings"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              HomeFragment(),
              ServiceFragment(),
              AboutFragment(),
              ContactFragment(),
              SettingsFragment(),
            ],
          )
        )
    );
  }

}
