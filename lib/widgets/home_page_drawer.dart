import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
    color: Color(0xFFEC2427),
    height: 180,
    width: double.infinity,
    // padding: EdgeInsets.only(top:20,right: 180),
    child: Column(      
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,right: 165),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/profile-pic.png'),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 138),
          child: Text(
            'Arshiyan Khan',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 66),
          child: Text(
            'arshiyan.khan13@gmail.com',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14
            ),
            ),
        )
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: (){},
      ),
      Divider(color: Colors.grey[400]?.withOpacity(0.3),height: 1,indent: 68,),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('My Profile'),
        onTap: (){},
      ),
      Divider(color: Colors.grey[400]?.withOpacity(0.3),height: 1,indent: 68,),
      ListTile(
        leading: Icon(Icons.receipt_long),
        title: Text('My Orders'),
        onTap: (){},
      ),
      Divider(color: Colors.grey[400]?.withOpacity(0.3),height: 1,indent: 68,),
      ListTile(
        leading: Icon(Icons.notifications),
        title: Text('Notifications'),
        onTap: (){},
      ),
      Divider(color: Colors.grey[400]?.withOpacity(0.3),height: 1,indent: 68,),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('Contact Us'),
        onTap: (){},
      ),
      Divider(color: Colors.grey[400]?.withOpacity(0.3),height: 1,indent: 68,),
      ListTile(
        leading: Icon(Icons.account_box_outlined),
        title: Text('About Us'),
        onTap: (){},
      ),
      Divider(color: Colors.grey[400]?.withOpacity(0.3),height: 1,indent: 68,),
    ],
  );
}