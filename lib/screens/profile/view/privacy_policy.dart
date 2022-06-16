import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy policy"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                  "This Privacy Policy sets out the manner in which KingX will collect, hold and protect information about you when you use our website and /or mobile application to test our Demo Apps"),
              SizedBox(
                height: 15,
              ),
              Text(
                  "a. We may disclose to third party services certain personally identifiable information listed below:\n- Information you provide us such as below:\n--- name\n--- email\n--- mobile phone number - demographic information\n--- information we collect as you access and use our service, including device information, location and network carrier"),
              SizedBox(
                height: 15,
              ),
              Text(
                  "This information is shared with third party service providers so that we can: --- - personalize the app for you"),
              SizedBox(
                height: 15,
              ),
              Text(
                  "perform behavioral analytics\n- improve our products and services\nTo periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided."),
              SizedBox(
                height: 15,
              ),
              Text(
                  "b. Security \n- We are committed to ensuring that your information is secure.\n- In order to prevent unauthorized access or"),
            ],
          ),
        ),
      ),
    );
  }
}
