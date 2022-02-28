import 'package:flutter/material.dart';

class HomepageButton extends StatelessWidget {

  IconData icon;
  Function func;
  String btnText;

  HomepageButton({ Key? key, required this.icon, required this.func, required this.btnText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 70,
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Color(0xFF979797)),
            // right: BorderSide(color: Color(0xFF979797)), 
            top: BorderSide(color: Color(0xFF979797)) 
          )
        ),
        child: TextButton(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 28,
                color: Colors.red,
                ),
                Text(
                  btnText,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 10
                    ),
                  ),
            ],
          ),
          onPressed: (){func();},
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.grey[200])
          ),
          ),
    );
  }
}