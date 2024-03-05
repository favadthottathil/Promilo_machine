import 'package:flutter/material.dart';
import 'package:promilo_task/Constants/global_variable.dart';
import 'package:promilo_task/Features/Auth/Services/auth_service.dart';
import 'package:promilo_task/Features/Auth/Utilties/utilities.dart';
import 'package:promilo_task/Features/Auth/Widgets/custom_checkbox.dart';
import 'package:promilo_task/Features/Auth/Widgets/divider_with_text_widget.dart';
import 'package:promilo_task/Features/Auth/Widgets/loader.dart';
import 'package:promilo_task/Features/Auth/Widgets/login_button.dart';
import 'package:promilo_task/Features/Auth/Widgets/privancy_bar.dart';
import 'package:promilo_task/Features/Auth/Widgets/sign_up_widget.dart';
import 'package:promilo_task/Features/Auth/Widgets/social_icons.dart';
import 'package:promilo_task/Features/Bottom%20Nav/Screens/bottom_nav_screen.dart';
import 'package:promilo_task/Utils/custom_textfield.dart';
import 'package:promilo_task/Utils/snack_bar.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'login-screen';
  
  const LoginScreen({super.key});
  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  
  final passController = TextEditingController();
  
  final formKey = GlobalKey<FormState>();
  
  bool allFieldFilled = false;
  
  @override
  void initState() {
    super.initState();
    emailController.addListener(updateButtonState);
    passController.addListener(updateButtonState);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthService>(builder: (context, provider, _) {
      return provider.isLoading == true
          ? const Loader()
          : Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Promilo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Form(
                    key: formKey,
                    onChanged: updateButtonState,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        height20,
                        const Text(
                          'Hi, Welcome Back!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        height20,
                        const Text(
                          'Please Sign in to continue',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        CustomTextForm(
                          hint: 'Enter Email or Mob No.',
                          controller: emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: validateEmail,
                        ),
                        const SizedBox(height: 5),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Sign In With OTP',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Password', style: TextStyle(fontSize: 16)),
                        const SizedBox(height: 5),
                        CustomTextForm(
                          hint: 'Enter Password',
                          controller: passController,
                          obscureText: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (pass) => pass != null && pass.length < 6 ? 'Enter min 6 Characters' : null,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            customCheckBox(context),
                            const Text('Remember Me'),
                            const Spacer(),
                            const Text(
                              'Forget Password',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        height20,
                        LoginButton(
                          allFieldFilled: allFieldFilled,
                          emailController: emailController,
                          formKey: formKey,
                          passController: passController,
                          context: context,
                          onpress: () {
                            provider.setLoading = true;

                            AuthService().loginUser(
                              allFieldFilled: allFieldFilled,
                              email: emailController.text.trim(),
                              formKey: formKey,
                              password: passController.text.trim(),
                              onSuccess: () {
                                showCustomSnackBar(context, 'Login Success');

                                Navigator.pushReplacementNamed(context, NavigationMenu.routeName);
                              },
                              onError: (error) {
                                provider.setLoading = false;
                                showCustomSnackBar(context, error);
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 30),
                        const DividerWithText(),
                        height20,
                        SocialIcons(social: social),
                        height20,
                        const SignUpWidget(),
                        height20,
                        const TermsAndPrivacy(),
                      ],
                    ),
                  ),
                ),
              ),
            );
    });
  }

  void updateButtonState() {
    setState(() {
      allFieldFilled = emailController.text.trim().isNotEmpty && passController.text.trim().isNotEmpty;
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
  }
}
