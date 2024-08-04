import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F1F1F),
      appBar: AppBar(
        backgroundColor: Color(0xff1F1F1F),
        title: const Center(
          child: Text("QR code generator",
          style: TextStyle(
            fontSize: 32,
            color: Color(0xffBCEE82),
            fontWeight: FontWeight.bold,
          ),),
        )
      ),
      body:  Column(
        children: [
          const Padding(
            padding:  EdgeInsets.only(top: 50),
            child:  Center(
              child: Image(image: AssetImage("assets/QR-Code-bro.png"),
              height: 350,),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.05,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                //Add push code here
              },
              child: Container(
                
                height: MediaQuery.sizeOf(context).height*0.08,
                width: MediaQuery.sizeOf(context).width*0.8,
                decoration: BoxDecoration(
                  color: Color(0xffBCEE82),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text("Generate a QR code",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.1,
          ),
          Center(
            child: Container(
              
              height: MediaQuery.sizeOf(context).height*0.08,
              width: MediaQuery.sizeOf(context).width*0.8,
              decoration: BoxDecoration(
                color: Color(0xffBCEE82),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text("Scan a QR code",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ),
          )
          
          
          
        ],
      ),
    );
  }
}