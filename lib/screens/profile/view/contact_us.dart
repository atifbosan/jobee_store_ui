import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobee_store/constant/colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Contact Us"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/contact_us.png")),
              SizedBox(
                height: 20,
              ),
              Text(
                "For Your Safety",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                    "Your feedback is very important to us. We consider your feedback very seriously and work hard to provide you with the best possible solution at the earliest."),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    "Whats your feedback about?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: bgColor,
                  border: OutlineInputBorder(),
                  hintText: 'Write here..',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: amberColor, width: 2.0),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Please tell us in details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: bgColor,
                  hoverColor: amberColor,
                  border: OutlineInputBorder(),
                  hintText: 'Write your full query here...',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: amberColor, width: 2.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                width: 300,
                child: RaisedButton(
                  color: amberColor,
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
