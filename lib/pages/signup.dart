import 'package:flutter/material.dart';
import 'package:mobileapp/pages/home.dart';
import 'package:mobileapp/theme/app_colors.dart';
import 'package:mobileapp/theme/app_images.dart';
import 'package:mobileapp/widgets/signup_form.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomePage.backgroundColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Flex(
          direction: Axis.vertical,
          spacing: 40,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                      fontWeight: FontWeight.w900,
                      color: AppColors.black,
                      fontSize: 32,
                    )
                  ),
                ),
              ],
            ),
            Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20), 
                  decoration: BoxDecoration(
                    color: AppColors.mutedPrimary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.facebook,
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 16), 
                      Text(
                        'Facebook',
                        style: TextStyle(
                          color: AppColors.greyText,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.mutedPrimary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.google,
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 16), 
                      Text(
                        'Google',
                        style: TextStyle(
                          color: AppColors.greyText,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final availableWidth = constraints.maxWidth;
                final lineWidth = availableWidth * 0.45;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: lineWidth, 
                      child: Divider(
                        thickness: 1,
                        color: AppColors.greyLine,
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: lineWidth,
                      child: Divider(
                        thickness: 1,
                        color: AppColors.greyLine,
                      ),
                    ),
                  ],
                );
              },
            ),
            SignupForm(),
          ],
        )
      ),
    );
  }
}


                  