import 'package:flutter/material.dart';


class Forgotpassword extends StatefulWidget {
  const Forgotpassword ({Key? key}) : super(key: key);

  @override
  _MyForgotPasswordState createState() => _MyForgotPasswordState();
}

class  _MyForgotPasswordState extends State<Forgotpassword> {
  @override
    Widget build(BuildContext context) {
    return Container(

    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/ihfnlpbze7o01.jpg'), fit: BoxFit.cover),
    ),


      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 150
        ),

        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 50 , top: 156),
              child: Text(
                'Enter Email Or\n PhoneNumber To Get Otp.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),


            SingleChildScrollView(
    child: Container(
    padding: EdgeInsets.only(
    top: MediaQuery.of(context).size.height * 0.45),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
    margin: EdgeInsets.only(left: 35, right: 35),
    child: Column(
    children: [



            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: "Email Or PhoneNumber",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),

      SizedBox(
        height: 20,
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '       ',
            style: TextStyle(

                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff4c505b),
            child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context,'');
                },
                icon: Icon(
                  Icons.arrow_forward,

                )),
          )
        ],
      ),

    ]
    )
    )
    ]
    )
    )
    )
          ],
        ),
      ),
    );
  }
}

