import 'package:flutter/material.dart';
import 'package:weather_app/src/constants/constants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
    );
  }
}
