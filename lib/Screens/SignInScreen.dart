import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roadside_assist_247/Screens/SignUpScreen.dart';
import '../Theme/app_decoration.dart';
import '../Theme/app_style.dart';
import '../Utils/ColorConstants.dart';
import '../Utils/image_constant.dart';
import '../Utils/size_utils.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextFormField.dart';
import '../Widgets/custom_checkbox.dart';
import '../Widgets/custom_image_view.dart';
import '../controller/sign_in_controller.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final signInController = Get.put(SignInController());

  closeKeyBoard(context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: getHorizontalSize(288),
                          margin: getMargin(top: 79, right: 91),
                          child: Text("Create Your Account",
                              maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold48))),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: signInController.mobileNumberController,
                      hintText: "Mobile",
                      margin: getMargin(top: 46),
                      padding: TextFormFieldPadding.PaddingT21,
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500,
                      textInputType: TextInputType.number,
                      prefix: Container(
                          margin: getMargin(left: 20, top: 20, right: 12, bottom: 20),
                          child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                      prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60))),
                  Obx(() => CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: signInController.passwordController,
                      hintText: "Password",
                      margin: getMargin(top: 24),
                      padding: TextFormFieldPadding.PaddingT21_1,
                      fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                          margin: getMargin(left: 20, top: 20, right: 12, bottom: 20),
                          child: CustomImageView(svgPath: ImageConstant.imgLock)),
                      prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                      suffix: InkWell(
                          onTap: () {
                            signInController.isShowPassword.value = !signInController.isShowPassword.value;
                          },
                          child: Container(
                              margin: getMargin(left: 30, top: 20, right: 20, bottom: 20),
                              child: CustomImageView(
                                  svgPath: signInController.isShowPassword.value
                                      ? ImageConstant.imgDashboard
                                      : ImageConstant.imgDashboard))),
                      suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)),
                      isObscureText: signInController.isShowPassword.value)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Obx(() => CustomCheckbox(
                          alignment: Alignment.centerLeft,
                          text: "Remember me",
                          iconSize: getHorizontalSize(24),
                          value: signInController.isCheckbox.value,
                          margin: getMargin(top: 24),
                          fontStyle: CheckboxFontStyle.UrbanistSemiBold14WhiteA700,
                          onChange: (value) {
                            signInController.isCheckbox.value = value;
                          }))),
                  const SizedBox(height: 15.0),
                  CustomButton(
                    text: 'Sign In',
                    onPressed: () {},
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: getPadding(top: 27),
                          child: Text("Forgot password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold16.copyWith(letterSpacing: getHorizontalSize(0.2))))),
                  Padding(
                      padding: getPadding(left: 10, top: 56, right: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: getPadding(top: 13, bottom: 7),
                                child: SizedBox(
                                    width: getHorizontalSize(96),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray800))),
                            Text("or continue with",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistSemiBold18Gray100
                                    .copyWith(letterSpacing: getHorizontalSize(0.2))),
                            Padding(
                                padding: getPadding(top: 13, bottom: 7),
                                child: SizedBox(
                                    width: getHorizontalSize(96),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.gray800)))
                          ])),
                  Padding(
                      padding: getPadding(left: 39, top: 33, right: 38),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: const EdgeInsets.all(0),
                            color: ColorConstant.blueGray900,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: ColorConstant.gray800, width: getHorizontalSize(1)),
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Container(
                                height: getVerticalSize(60),
                                width: getHorizontalSize(88),
                                padding: getPadding(left: 31, top: 18, right: 31, bottom: 18),
                                decoration: AppDecoration.outlineGray800
                                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                child: Stack(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFacebook,
                                      height: getSize(24),
                                      width: getSize(24),
                                      alignment: Alignment.center,
                                      onTap: () {})
                                ]))),
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(left: 20),
                            color: ColorConstant.blueGray900,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: ColorConstant.gray800, width: getHorizontalSize(1)),
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Container(
                                height: getVerticalSize(60),
                                width: getHorizontalSize(87),
                                padding: getPadding(left: 31, top: 18, right: 31, bottom: 18),
                                decoration: AppDecoration.outlineGray800
                                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                child: Stack(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgGoogle24x24,
                                      height: getSize(24),
                                      width: getSize(24),
                                      alignment: Alignment.center,
                                      onTap: () {})
                                ]))),
                        Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: getMargin(left: 20),
                            color: ColorConstant.blueGray900,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: ColorConstant.gray800, width: getHorizontalSize(1)),
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Container(
                                height: getVerticalSize(60),
                                width: getHorizontalSize(88),
                                padding: getPadding(left: 32, top: 18, right: 32, bottom: 18),
                                decoration: AppDecoration.outlineGray800
                                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                child: Stack(children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgAutolayouthorizontal,
                                      height: getSize(24),
                                      width: getSize(24),
                                      alignment: Alignment.center)
                                ])))
                      ])),
                  Padding(
                      padding: getPadding(top: 50, bottom: 5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Padding(
                            padding: getPadding(bottom: 1),
                            child: Text("Don't have an account?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtUrbanistRegular14.copyWith(letterSpacing: getHorizontalSize(0.2)))),
                        GestureDetector(
                            onTap: () {
                              Get.to(const SignUpScreen());
                            },
                            child: Padding(
                                padding: getPadding(left: 8, top: 1),
                                child: Text("Sign up",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold14
                                        .copyWith(letterSpacing: getHorizontalSize(0.2)))))
                      ]))
                ]))));
  }
}
