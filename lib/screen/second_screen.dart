import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task1/screen/privacy.dart';
import 'package:task1/screen/terms.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Employer',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true, 
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight( 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset("assets/images/tankhapay_logo.jpg"),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'TankhaPay',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 70),
                    const IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: "Mobile Number",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    termsAndPrivacyPolicy(context),
                    const SizedBox(height: 20),
                    sendCodeButton(context),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget termsAndPrivacyPolicy(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'By proceeding, you agree to TankhaPay',
          style: TextStyle(fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsAndConditions())),
              child: const Text(
                'Terms and Conditions',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
            const Text(
              ' and ',
              style: TextStyle(fontSize: 12),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Privacy())),
              child: const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget sendCodeButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        child: const Text('Send Code'),
      ),
    );
  }
}
