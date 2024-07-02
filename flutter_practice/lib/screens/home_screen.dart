import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/controllers/home_controller.dart';
import 'package:flutter_practice/screens/covid_screen.dart';
import 'package:flutter_practice/utils/asset_manager.dart';
import 'package:flutter_practice/utils/style.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Hi James',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w900),
                )
              ],
            ),
            Image(image: AssetImage(AssetManager.LOGO))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            // Profile Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundImage: CachedNetworkImageProvider(
                              AssetManager.PROFILE_PIC),
                          radius: 25,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Imraan Syahir',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            Text(
                              'General Doctor',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                            ),
                            Text(
                              'Sunday, 12 June',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: Colors.white,
                            ),
                            Text(
                              'Sunday, 12 June',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // Search Bar
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Style.SEMI_WHITE_COLOR,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Icon(
                    Icons.search_rounded,
                    color: Style.SECONDARY_COLOR,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller.searchBarController,
                      decoration: const InputDecoration(
                          hintText: 'Search doctor or health issue',
                          hintStyle: TextStyle(color: Style.SECONDARY_COLOR),
                          border: InputBorder.none),

                      onSubmitted: (v)=> controller.searchItem(v),


                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20,),
            // Action
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.of(context).pushReplacementNamed('/covid');
                      },
                      child: const CircleAvatar(
                        backgroundColor: Style.SEMI_WHITE_COLOR,
                        radius: 40,
                        child: Icon(Icons.sunny, color: Style.SECONDARY_COLOR,),
                      ),
                    ),

                    SizedBox(height: 6,),
                    Text('Covid 19', style: TextStyle(color: Style.SECONDARY_COLOR),)
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: Style.SEMI_WHITE_COLOR,
                      radius: 40,
                      child: Icon(Icons.account_circle_rounded, color: Style.SECONDARY_COLOR,),
                    ),

                    SizedBox(height: 6,),
                    Text('Doctor', style: TextStyle(color: Style.SECONDARY_COLOR),)
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: Style.SEMI_WHITE_COLOR,
                      radius: 40,
                      child: Icon(Icons.link_rounded, color: Style.SECONDARY_COLOR,),
                    ),

                    SizedBox(height: 6,),
                    Text('Medicine', style: TextStyle(color: Style.SECONDARY_COLOR),)
                  ],
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: Style.SEMI_WHITE_COLOR,
                      radius: 40,
                      child: Icon(Icons.account_balance_outlined, color: Style.SECONDARY_COLOR,),
                    ),

                    SizedBox(height: 6,),
                    Text('Hospital', style: TextStyle(color: Style.SECONDARY_COLOR),)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
