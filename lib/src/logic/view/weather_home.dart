import 'package:flutter/material.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bckgndImage2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Kharar',
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                      onPressed: () => Navigator.pushNamed(context, '/setting'),
                      icon: const Icon(
                        Icons.location_city,
                        size: 25,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 25,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.20,),
              const Center(
                child: Text('25° C', style: TextStyle(color: Colors.white, fontSize: 60),),
              )
            ],
          ),
        ),
      ),
    );
    //     FutureBuilder(
    //   builder: ((context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       if (snapshot.hasError) {
    //         return Center(
    //           child: Text('${snapshot.error.toString()} occured'),
    //         );
    //       } else if (snapshot.hasData) {
    //         return Container(
    //           decoration: const BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage('assets/images/bckgndImage2.png'),
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           child: const Column(
    //             children: [
    //               Row(),
    //             ],
    //           ),
    //         );
    //       }
    //     }
    //     else if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const Center(
    //         child: CircularProgressIndicator(
    //           color: Colors.white,
    //         ),
    //       );
    //     } else {
    //       return Center(
    //         child: Text('${snapshot.connectionState} occured'),
    //       );
    //     }
    //     return const Center(
    //       child: Text('Server timed out'),
    //     );
    //   }),
    //   future: future,
    // ));
  }
}
