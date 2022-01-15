import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/constants/controller.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/layout.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Image.asset("icons/logo.png"),
                  ),
                  Expanded(child: Container())
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text("Login",
                      style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: "Welcome back to the admin panel",
                    color: lightGrey,
                  )
                ],
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abc@domain.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Passwort",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (Value) {}),
                      CustomText(
                        text: "Remember",
                      ),
                    ],
                  ),
                  CustomText(
                    text: "Forgot Password",
                    color: active,
                  ),
                ],
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  menuController
                              .changeActiveItemTo(OverViewPageDisplayName);
                  Get.offAllNamed(RootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: active,
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: "Login",
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Do not have admin credentialds? "),
                TextSpan(
                    text: " Request credentials",
                    style: TextStyle(color: active)),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
