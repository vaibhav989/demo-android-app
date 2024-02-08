import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title:  const Text('Privacy',
        textAlign: TextAlign.center,
      ),),
      body: const Center(
        child:Padding(
          padding: EdgeInsets.all(20),     
          child: Text('Privacy of use are the rules, specifications, and requirements for the use of a product or service. They serve as a contract between the product or service provider and userIn addition to the definition above, a terms of use agreement:Limits the liabilities that fall on your company Establishes your property rights Outlines your dispute resolutions might also come across terms of use agreements with alternative titles, like Terms and Conditions Terms of Service General Terms '),
        )
      ),
    );
  }
}