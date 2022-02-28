import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:i_care_about_my_bike/widgets/home_page_drawer.dart';
import 'package:i_care_about_my_bike/widgets/homepage_bottom_button.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final homePageImageList = [
    'assets/slideshow-image-1.png',
    'assets/slideshow-image-2.png',
    'assets/slideshow-image-3.png',
    'assets/slideshow-image-4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: HomePageDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          SizedBox(width: 45),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Image.asset(
              'assets/icamb-logo.png',
            ),
          ),
          Spacer()
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            child: CarouselSlider.builder(
              itemCount: homePageImageList.length, 
              itemBuilder: (context,index,realIndex){
                dynamic image = homePageImageList[index];
                return buildImage(image, index);        
              }, 
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction: 1,
                autoPlayInterval: Duration(seconds: 4)
                )
              )
          ),
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
            color: Color(0xFFE6E6E6),
              border: Border(bottom: BorderSide(color: Color(0xFFADADAD)))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 140,right: 140,top: 13,bottom: 13),
              child: TextButton(
                onPressed: (){}, 
                child: Text(
                "Quick Booking",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 16
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ),
        Image.asset(
          'assets/homescreen-image-1.png',
           height: 350,
           fit: BoxFit.fill,
        ),
        // Spacer(),
      ],
    ),
    bottomNavigationBar: Container(
      child: Row(
          children: [
            Expanded(child: HomepageButton(icon: Icons.phone, func: (){}, btnText: "Call Us")),
            Expanded(child: HomepageButton(icon: Icons.chat, func: (){}, btnText: "Chat With Us")),
            Expanded(child: HomepageButton(icon: Icons.receipt_long_rounded, func: (){}, btnText: "My Orders")),
            Expanded(child: HomepageButton(icon: Icons.account_circle, func: (){}, btnText: "Profile")),
          ],
        ),
    )
  );
}
  Widget buildImage(String image, int index)=>Container(
    child: Image.asset(
      image,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
  );
}