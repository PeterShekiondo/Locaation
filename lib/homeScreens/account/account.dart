import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../assets/colors/colors.dart';
import 'accountWidgets/accountBody.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          elevation: 5,
          title: const Text("Profile"),
        ),
      body: const AccountBody()
    );
  }
}
