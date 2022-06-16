import 'package:flutter/material.dart';

class TermCondition extends StatelessWidget {
  const TermCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Term and Condition"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
                "These terms and conditions (\"T&Cs\") apply to Your access to, and use of the Application (defined hereinbelow). The Application is operated by KingX and its subsidiaries, associates, licensees, and companies (\"KingX\"). affiliated"),
            SizedBox(
              height: 15,
            ),
            Text(
                "You acknowledge that KingX is providing you with a revocabale license to use limited features of the Application and is not selling the Application or any technologies contained therein. features or"),
            SizedBox(
              height: 15,
            ),
            Text(
                "By continuing usage of the Application, You are consenting to be bound by these T&Cs. PLEASE ENSURE THAT YOU READ AND UNDERSTAND ALL THESE T&CS BEFORE YOU USE THE APPLICATION AND FEATURES CONTAINED THEREIN. If You find any of the T&Cs unacceptable, do not tender your acceptance to use the Application or avail any of its features. YOUR AGREEMENT TO THESE T&CS SHALL OPERATE AS A BINDING AND LEGALLY ENFORCEABLE AGREEMENT BETWEEN YOU AND ANI IN RESPECT OF THE FEATURES OFFERED/AVAILED USING THE MOBILE APPLICATION."),
            SizedBox(
              height: 15,
            ),
            Text(
                "1. DEFINITIONS\nAll of the defined and capitalized terms in these T&Cs will have the meaning assigned to them here below:"),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      )),
    );
  }
}
