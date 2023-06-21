import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Utils/ColorConstants.dart';
import '../Utils/size_utils.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextFormField.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobilePhoneController = TextEditingController();
  final dobController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final postalCodeController = TextEditingController();

  closeKeyBoard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            //closeKeyBoard(context);
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Fill Your Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.gray900,
      body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: firstNameController,
                      hintText: "First name",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: lastNameController,
                      hintText: "Last name",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: emailController,
                      hintText: "Email",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: mobilePhoneController,
                      hintText: "Mobile number",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: dobController,
                      hintText: "Date of birth",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: passwordController,
                      hintText: "Password",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: addressController,
                      hintText: "Address",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: cityController,
                      hintText: "City",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: stateController,
                      hintText: "State",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: postalCodeController,
                      hintText: "Postal",
                      margin: getMargin(top: 15),
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomButton(
                    text: 'Next',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          )),
    ));
  }
}
