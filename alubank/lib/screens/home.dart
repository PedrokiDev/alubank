import 'package:alubank/components/sections/RewardSection.dart';
import 'package:alubank/components/sections/account_sections.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';
import '../themes/theme_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      body: Column(
        children: <Widget>[
          Header(),
          RecentActivity(),
          AccountSections(),
          Rewardsection()
        ],
      ),
    );
  }
}