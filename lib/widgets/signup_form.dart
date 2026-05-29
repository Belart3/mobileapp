import 'package:flutter/material.dart';
import 'package:mobileapp/theme/app_colors.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  SignupFormState createState() {
    return SignupFormState();
  }
}

class SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            style: TextStyle(
              fontSize: 14,
              color: AppColors.greyText,
            ),
            decoration: InputDecoration(
              labelText: 'Email Address',
              focusColor: AppColors.primary,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primary,
                )
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.greyBorder,
                )
              )
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            style: TextStyle(
              fontSize: 14,
              color: AppColors.greyText,
            ),
            decoration: InputDecoration(
              labelText: 'Password',
              focusColor: AppColors.primary,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primary,
                )
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: AppColors.greyBorder,
                )
              )
            ),
          ),
          SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () => {}, 
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: AppColors.black,
              ),
            )
          )
        ],
      ),
    );
  }
}