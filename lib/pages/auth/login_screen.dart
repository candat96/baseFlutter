import 'package:base_flutter/cubit/theme/theme_cubit.dart';
import 'package:base_flutter/themes/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
   var themeCubit = BlocProvider.of<ThemeCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Row(
          children: [
            InkWell(
              child: Text("Chuyển theme"),
              onTap: () {
                themeCubit.changeTheme(AppTheme.lightTheme);
              },
            ),
            InkWell(
              child: Text("Chuyển theme sáng"),
              onTap: () {
                  themeCubit.changeTheme(AppTheme.darkTheme);
              },
            ),
          ],
        )
      ),
    );
  }
}
