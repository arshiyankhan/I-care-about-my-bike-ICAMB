import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_care_about_my_bike/home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _otpController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool otpCheck = false;
  bool usernameEmpty = false; 
  bool passwordEmpty = false; 

  @override
  void initState() {
    super.initState();

    _otpController.addListener(() {
      
      if(_otpController.text.length>9){
        setState(() {
        otpCheck = true; 
        });
      }
      else{
        setState(() {
          otpCheck = false;
        });
      }
    });

    _usernameController.addListener(() {
      if(_usernameController.text==''){
      setState(() {
        usernameEmpty = true;
      });
    }
    else{
      setState(() {
        usernameEmpty = false;
      });
    }
    });

    _passwordController.addListener(() {
      if(_passwordController.text==''){
      setState(() {
        passwordEmpty = true;
      });
    }
    else{
      setState(() {
        passwordEmpty = false;
      });
    }
    });

  }

  void signInValidation(){
    if (_usernameController.text == "arsh" && _passwordController.text == "arsh"){
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => HomePage())
      );
    }
    else if(_usernameController.text==''||_passwordController.text==''){}

    else{
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Container(child: Text(
            'Incorrect Details',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w600
            ),
            )
            ),
          content: Text("Please try to check your credentials."),
          actions: [
            MaterialButton(
              onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Close"),
            )
          ]      
        ),
      );
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Image.asset(
            'assets/login-logo-revised.png',
            height: 200,
            fit: BoxFit.fill  
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 30, right: 30),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
              hintText: 'Username',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: usernameEmpty?Colors.red:Colors.grey)
              ),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w600
              ),
              prefixIcon: Icon(
                Icons.phone_android,
              ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:30.0,right: 30.0,top: 30),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              obscuringCharacter: "⋆",
              decoration: InputDecoration(
              hintText: 'Password',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: passwordEmpty?Colors.red:Colors.grey)
              ),
               hintStyle: TextStyle(
                fontWeight: FontWeight.w600
              ),
              prefixIcon: Icon(
                Icons.lock
              ),
              ),
            ),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Spacer(),
              Container(
                width: 36,
                height: 35,
                child: Center(
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFE4E4E4),
                  borderRadius: BorderRadius.all(Radius.circular(100))
                ),
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: _otpController,
                  decoration: InputDecoration(
                    counterText: "",
                    prefixIcon: Icon(Icons.phone),
                    hintText: 'Enter Number',
                    hintStyle: TextStyle(
                    fontWeight: FontWeight.w600,                   
                  ),
                  ),  
                  ),
                ),
              ),
              SizedBox(width: 20),
          Container(
            width: 100,
            height: 40,
            child: TextButton(
              onPressed: otpCheck?(){}:null,
              child: Text(
                'Get OTP',
                style: TextStyle(
                  color: otpCheck?Colors.green:Colors.grey,
                  fontWeight: FontWeight.w600
                ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(color: otpCheck?Colors.green:Color(0xFFE8E8E8),width: 2),
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 25)
           ],
          ),
          SizedBox(height: 35),
          
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 50,
            child: TextButton(
              onPressed: (){
                 signInValidation();
              }, 
              child: Text(
              "Sign In",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 18
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
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/facebooklogo.png',
                height: 38,
                width: 38,
                color: Color(0xFF1B449C),
              ),
              SizedBox(width: 30,),
              Image.asset(
                'assets/googlelogo.png',
                height: 38,
                width: 38,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8C8C8C)
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Text(
                  "Create Now",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    color: Colors.red
                  ),
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}