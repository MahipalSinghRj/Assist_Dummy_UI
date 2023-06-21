import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roadside_assist_247/Screens/SignInScreen.dart';
import 'package:roadside_assist_247/Screens/SignUpScreen.dart';
import '../Utils/ColorConstants.dart';
import '../Utils/image_constant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  final List<String> texts = ['24/7 Emergency Support', 'No Joining Fees', 'Available In Pan Australia'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.fakeCarParts,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.white.withOpacity(.97),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: CarouselSlider(
                      items: texts.map((text) {
                        return Center(
                          child: Text(
                            text,
                            style: const TextStyle(fontSize: 34.0, fontWeight: FontWeight.w700),
                          ),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 300,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: ColorConstant.gray900,
                        image: DecorationImage(
                          opacity: .2,
                          image: AssetImage(
                            ImageConstant.fakeCarParts,
                          ),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            textAlign: TextAlign.justify,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Assist',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange, fontSize: 24),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Assist provides 24/7 on the spot breakdown support anytime and anywhere in Australia',
                            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(const SignUpScreen());
                            },
                            child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.orange,
                                  width: 2.0,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 70,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Get.to(const SignInScreen());
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
                    border: Border.all(
                      color: Colors.orange,
                      width: 2.0,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
