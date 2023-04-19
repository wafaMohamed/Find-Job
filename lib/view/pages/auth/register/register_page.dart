import 'package:find_job_amit/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/default_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBarRegister(),
            CustomText(
              text: AppString.createAccountString1,
              fontFamily: 'SF',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppTheme.neutral900,
                  fontSize: 20.sp),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(
                    hint: 'Enter your username',
                    prefixIcon: Icons.person,
                    controller: _usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    }, icon: Image.asset(
                    'assets/icons/message_grey.png', // path to your image asset
                    height: 24, // set the desired height
                  ),
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextField(
                    hint: 'Enter your email',
                    icon:Image.asset(
                      'assets/icons/message_grey.png', // path to your image asset
                      height: 24, // set the desired height
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email';
                      }
                      if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextField(
                    hint: 'Enter your password',
                    prefixIcon: Icons.lock,
                    suffixIcon: _isValid ? Icons.check : null,
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      _isValid = true;
                      return null;
                    }, icon: Image.asset(
                    'assets/icons/message_grey.png', // path to your image asset
                    height: 24, // set the desired height
                  ),
                  ),
                  const SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform sign-up action
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
