import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auth/components/my_drawer.dart';

import '../components/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Define the list of links as const
  static const List<Map<String, String>> links = [
    {'name': 'krishi_dss', 'url': 'https://krishi-dss.gov.in/krishi-dss/'},
    {'name': 'dgces', 'url': 'https://gces.dac.gov.in/#/'},
    {'name': 'krishi_mapper', 'url': 'https://krishimapper.dac.gov.in/'},
    {'name': 'upag', 'url': 'https://upag.gov.in/'},
    {'name': 'sathi', 'url': 'https://seedtrace.gov.in/ms014/'},
    {'name': 'pm_kisan', 'url': 'https://pmkisan.gov.in/'},
    {'name': 'pmfby', 'url': 'https://pmfby.gov.in/'},
    {'name': 'nfsm', 'url': 'https://www.nfsm.gov.in/'},
    {'name': 'rkvy', 'url': 'https://rkvy.nic.in/'},
    {'name': 'pdmc', 'url': 'https://pmksy.nic.in/'},
    {'name': 'nhb_inspection', 'url': 'https://nhb.gov.in/Default.aspx?enc=3ZOO8K5CzcdC/Yq6HcdIxJhqz7e6GQcTK1J92dLzA2o='},
    {'name': 'ami', 'url': 'https://www.nabard.org/content1.aspx?id=702&catid=23&mid=23'},
    {'name': 'seednet', 'url': 'https://seednet.gov.in/'},
    {'name': 'acabc', 'url': 'https://www.agriclinics.net/'},
    {'name': 'nf', 'url': 'https://naturalfarming.dac.gov.in/'},
    {'name': 'natural_bamboo_mission', 'url': 'https://nbm.da.gov.in/'},
    {'name': 'national_beekeeping_mission', 'url': 'https://nbb.gov.in/'},
    {'name': 'mt_chc_portal', 'url': 'https://agrimachinery.nic.in/'},
    {'name': 'nmeo', 'url': 'https://nmeo.dac.gov.in/'},
    {'name': 'agroforestry', 'url': 'https://agriwelfare.gov.in/Documents/Operational%20Guidelines%20of%20AGROFOREST%20Y%20under%20RKVY.pdf'},
    {'name': 'rad', 'url': 'https://nmsa.dac.gov.in/frmComponents.aspx'},
    {'name': 'mkisan', 'url': 'https://mkisan.gov.in/'},
    {'name': 'soil_health_card', 'url': 'https://soilhealth.dac.gov.in/home'},
    {'name': 'agriinfra', 'url': 'https://agriinfra.dac.gov.in/'},
    {'name': 'enam', 'url': 'https://enam.gov.in/web/'},
    {'name': 'farms_farm_machinery', 'url': 'https://play.google.com/store/apps/details?id=app.chcagrimachinery.com.chcagrimachinery&hl=en'},
    {'name': 'kisan_call_center', 'url': ''},
    {'name': 'doubling_farmers_income', 'url': 'https://agriwelfare.gov.in/en/Doubling'},
    {'name': 'mncfc', 'url': 'https://www.ncfc.gov.in/'},
  ];

  // Updated method to launch URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(Uri.encodeFull(url));
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.inAppWebView,  // Ensures opening the URL in a browser
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 600 ? 4 : 2; // Adjust number of columns based on screen width

    return Scaffold(
      appBar: CustomAppBar(title: 'home'.tr),
      drawer: const MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'home_page.title'.tr,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'home_page.description'.tr,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'home_page.key_schemes'.tr,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 0.5),
              ),
              padding: const EdgeInsets.all(10),
              itemCount: links.length,
              itemBuilder: (context, index) {
                final link = links[index];
                return GestureDetector(
                  onTap: () => _launchURL(link['url']!),
                  child: Container(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        link['name']!.tr, // Translate the link name
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}