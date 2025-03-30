import 'package:flutter/material.dart';
import 'package:auth/components/my_current_location.dart';
import 'package:auth/components/my_description_box.dart';
import 'package:auth/components/my_equipment_tile.dart';
import 'package:auth/components/my_silver_app_bar.dart';
import 'package:auth/components/my_tab_bar.dart';
import 'package:auth/models/equipment.dart';
import 'package:auth/pages/equipment_page.dart';
import 'package:provider/provider.dart';
import '../components/my_drawer.dart';
import '../models/rent.dart';

class RentPage extends StatefulWidget {
  const RentPage({super.key});

  @override
  State<RentPage> createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: EquipmentCategory.values.length, vsync: this);
  }

  @override
  void dispose(){
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a list of Equipments that belong to a specific category
  List<Equipment>_filterMenuByCategory(EquipmentCategory category,List<Equipment>fullMenu) {
    return fullMenu.where((equipment) => equipment.category == category)
        .toList();
  }
  // return list of equipments in given category
  List<Widget>getEquipmentInThisCategory(List<Equipment>fullMenu){
    return EquipmentCategory.values.map((category){
      List<Equipment>categoryMenu=_filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context,index){
          // get individual equipment
          final equipment = categoryMenu[index];
          // return equipment tile UI
          return EquipmentTile(
            equipment: equipment,
            onTap: ()=>Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>EquipmentPage(equipment: equipment)
                )
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title:MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                Divider(indent: 25,endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my current location
                 MyCurrentLocation(),
                // description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Rent>(
          builder:(context,rent,child)=>TabBarView(
            controller: _tabController,
            children: getEquipmentInThisCategory(rent.menu),
          ),
        ),
      ),
    );
  }
}
