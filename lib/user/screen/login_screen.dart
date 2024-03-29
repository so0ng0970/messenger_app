import 'package:flutter/material.dart';
import 'package:messenger_app/const/color.dart';
import 'package:messenger_app/user/layout/text_field_layout.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final bool sign = false;

  final FocusNode nicknameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode confirmPasswordFocus = FocusNode();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nicknameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: LOGIN_BG_COLOR,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontFamily: 'OffBitTrial',
                  fontWeight: FontWeight.w700,
                  fontSize: 80,
                ),
              ),
              Form(
                child: Column(
                  children: [
                    textFormField(
                      sign: sign,
                      key: sign ? const ValueKey(5) : const ValueKey(1),
                      controller: emailController,
                      focusNode: emailFocus,
                      keyboardType: TextInputType.emailAddress,
                      hintText: '이메일',
                      onChanged: (_) {},
                    ),
                    if (sign)
                      textFormField(
                        sign: sign,
                        key: const ValueKey(2),
                        maxLength: 15,
                        focusNode: nicknameFocus,
                        controller: nicknameController,
                        keyboardType: TextInputType.name,
                        hintText: '닉네임',
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    textFormField(
                      sign: sign,
                      key: sign ? const ValueKey(6) : const ValueKey(3),
                      focusNode: passwordFocus,
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.name,
                      hintText: '비밀번호',
                    ),
                    SizedBox(
                      height: sign ? 30 : 20,
                    ),
                    if (sign)
                      textFormField(
                        sign: sign,
                        key: const ValueKey(4),
                        obscureText: true,
                        keyboardType: TextInputType.name,
                        hintText: '비밀번호 (확인)',
                      ),
                    SizedBox(
                      height: sign ? 48 : 50,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '로그인하기',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
