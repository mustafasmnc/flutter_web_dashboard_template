import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/error.png", width: 350),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Page not found",
                size: 24,
                weight: FontWeight.bold,
              )
            ],
          )
        ],
      ),
    );
  }
}
