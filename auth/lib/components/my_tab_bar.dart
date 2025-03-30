import 'package:flutter/material.dart';
import 'package:auth/models/equipment.dart';
import 'package:get/get.dart'; // Ensure you have this import for localization

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return EquipmentCategory.values.map((category) {
      return Tab(
        child: Text(
          _localizedCategoryName(category),
          style: TextStyle(color: Colors.white), // Make text white
        ),
      );
    }).toList();
  }

  // Localized category names
  String _localizedCategoryName(EquipmentCategory category) {
    switch (category) {
      case EquipmentCategory.tractors:
        return 'tractors'.tr;
      case EquipmentCategory.harvesters:
        return 'harvesters'.tr;
      case EquipmentCategory.cultivators:
        return 'cultivators'.tr;
      case EquipmentCategory.trailers:
        return 'trailers'.tr;
      case EquipmentCategory.sprayers:
        return 'sprayers'.tr;
      default:
        return category.toString().split('.').last.tr;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, // Keep background transparent
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
        labelColor: Colors.white, // Active tab text color
        unselectedLabelColor: Colors.white70, // Slightly dim for inactive tabs
        indicatorColor: Colors.white, // Indicator color
      ),
    );
  }
}
