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
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: whiteClr,
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
              color: whiteClr, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: blackClr,
        child: Column(
          children: [
            const Divider(
              thickness: 0.5,
              color: whiteClr,
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      titleText[index],
                      style: const TextStyle(fontSize: 20, color: whiteClr),
                    ),
                    subtitle: Text(
                      subtitleText[index],
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    onTap: () {},
                  );
                },
                itemCount: titleText.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                // children: [
                //   ListTile(
                //     title: const Text('Temperature Unit',style: TextStyle(fontSize: 20,color: whiteClr),),
                //     subtitle: const Text('Celcius (°C)',style: TextStyle(fontSize: 17,)),
                //     onTap: () {},
                //   ),
                //   ListTile(
                //     title: const Text('Version',style: TextStyle(fontSize: 20,color: whiteClr),),
                //     subtitle: const Text('V6.2.1.8',style: TextStyle(fontSize: 17,)),
                //     onTap: () {},
                //   ),
                //   ListTile(
                //     title: const Text('Privacy',style: TextStyle(fontSize: 20,color: whiteClr),),
                //     onTap: () {},
                //   ),
                //   ListTile(
                //     title: const Text('Terms & Conditions',style: TextStyle(fontSize: 20,color: whiteClr),),
                //     onTap: () {},
                //   ),
                // ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<String> titleText = [
  'Temperature Unit',
  'Version',
  'Privacy',
  'Terms & Conditions',
];

List<String> subtitleText = [
  'Celcius (°C)',
  'V6.2.1.8',
  '',
  '',
];
