import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/utils/asset_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hello', style: TextStyle(color: Colors.grey),),
                Text('Hi James', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),)
              ],
            ),
            Image(image: AssetImage(AssetManager.LOGO))
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(backgroundImage: CachedNetworkImageProvider(AssetManager.PROFILE_PIC),radius: 25,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr. Imraan Syahir', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),),
                            Text('General Doctor', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.white),),
                          ],
                        ),

                        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,))


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
                            Icon(Icons.calendar_month, color: Colors.white,),
                            Text('Sunday, 12 June', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal),)
                          ],
                        ),

                        Row(
                          children: [
                            Icon(Icons.calendar_month, color: Colors.white,),
                            Text('Sunday, 12 June', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal),)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: ,
    );
  }

}