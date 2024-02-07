import 'package:flutter/material.dart';
import 'package:weather_app/src/constants/constants.dart';

class CityManagePage extends StatefulWidget {
  const CityManagePage({super.key});

  @override
  State<CityManagePage> createState() => _CityManagePageState();
}

class _CityManagePageState extends State<CityManagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackClr,
        titleSpacing: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context), 
            icon: const Icon(Icons.arrow_back_ios, color: whiteClr,),
          ),
        title: const Text('City Management',style: TextStyle(color: whiteClr,fontSize: 20,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search, color: whiteClr,),
          )
        ],
      ),
      body: Container(
        color: blackClr,
        child: const Column(
          children: [
            Divider(
              thickness: 0.5,
            )
          ],
        ),
      ),
    );
  }
}
