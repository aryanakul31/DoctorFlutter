import 'package:doctors/ui/button_filled.dart';
import 'package:doctors/ui/custom_text_field.dart';
import 'package:doctors/ui/social_login_widget.dart';
import 'package:doctors/ui/text_title.dart';
import 'package:doctors/utils/constants.dart';
import 'package:doctors/utils/my_routes.dart';
import 'package:doctors/utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/colors.dart';
import '../../models/request/SignUpRequestModel.dart';
import '../../networking/network_call.dart';
import '../../resources/custom_theme.dart';
import '../../ui/ui_utils.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isLoading = false;

  String name = "";
  String email = "";
  String password = "";

  bool _isValid = false;

  String validation() {
    var error = "";
    if (name.trim().isEmpty) {
      error = "Empty name";
    } else if (Validations.validEmail(email.trim()) != null) {
      error = Validations.validEmail(email.trim()) ?? "";
    } else if (password.trim().isEmpty) {
      error = "Empty password";
    }
    setState(() {
      _isValid = error.isEmpty;
    });
    return error;
  }

  login(BuildContext context) async {
    var error = validation();
    if (error.isNotEmpty == true) {
      showSnackBar(error ?? "", context: context);
      return;
    }

    closeKeyboard(context: context);

    setState(() {
      _isLoading = true;
    });

    var signUpRequestModel = SignUpRequestModel(
      name: name,
      email: email,
      password: password,
    );

    var data = await NetworkCall.registerUser(
        signUpRequestModel: signUpRequestModel, context: context);

    // var data = await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _isLoading = false;
    });

    if (context.mounted) {
      Navigator.pushNamed(context, MyRoutes.dashboardRoute.path);
    }
  }

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: AlignmentDirectional.centerEnd,
                margin: const EdgeInsets.only(
                    bottom: marginSide, top: marginSide, right: marginSide),
                child: const Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircularProgressIndicator(
                      value: 0.33,
                      backgroundColor: Colors.white,
                      strokeWidth: 3,
                      color: CustomColors.appColor,
                    ),
                    TextTitle(
                      text: "1/3",
                      fontFamily: FontType.Text,
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: marginSide),
                child: const TextTitle(
                  text: "Get Started",
                  fontFamily: FontType.Text,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: marginSide, right: marginSide, top: marginSide),
                child: const TextTitle(
                  text:
                      "Create an account so you can talk to experts from various medical fields.",
                  fontFamily: FontType.Text,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: CustomColors.color717171,
                  textAlign: TextAlign.start,
                ),
              ),
              spaceInBetween,
              CustomTextField(
                hint: 'Full Name',
                label: 'Name',
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  name = value;
                  validation();
                },
                margin: const EdgeInsets.only(
                    top: marginSide, left: marginSide, right: marginSide),
              ),
              CustomTextField(
                hint: 'max@mustermann.com',
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  email = value;
                  validation();
                },
                margin: const EdgeInsets.only(
                    top: marginSide, left: marginSide, right: marginSide),
              ),
              CustomTextField(
                hint: 'Type in your password...',
                label: 'Password',
                hideText: isPasswordHidden,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  password = value;
                  validation();
                },
                suffixIcon: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      isPasswordHidden = !isPasswordHidden;
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: AlignmentDirectional.centerEnd,
                    child: SvgPicture.asset(
                      "assets/images/icon_password_hidden.svg",
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(
                    top: marginSide, left: marginSide, right: marginSide),
              ),
              spaceInBetween,
              if (_isLoading)
                Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: marginSide,
                      vertical: marginSide,
                    ),
                    alignment: AlignmentDirectional.center,
                    child: const CircularProgressIndicator())
              else
                ButtonFilled(
                  isValid: _isValid,
                  onPressed: () {
                    login(context);
                  },
                  text: "Get Started",
                ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 0.5,
                    margin: const EdgeInsets.symmetric(
                        horizontal: marginSide, vertical: marginSide),
                    color: CustomColors.color747474,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: marginSide),
                    child: const TextTitle(
                      text: "Or",
                      fontFamily: FontType.Text,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.color222222,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const SocialLoginWidget(
                text: "Continue with Apple",
                iconLeading: "assets/images/icon_apple.svg",
              ),
              const SocialLoginWidget(
                text: "Continue with Google",
                iconLeading: "assets/images/icon_google.svg",
              ),
              const SocialLoginWidget(
                text: "Continue with Facebook",
                iconLeading: "assets/images/icon_facebook.svg",
              ),
              spaceInBetween,
            ],
          ),
        ),
      ),
    );
  }
}
