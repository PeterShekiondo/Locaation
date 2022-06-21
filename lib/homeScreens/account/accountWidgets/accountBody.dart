import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../authPages/signUp.dart';
import '../../../widgets/profileMenu.dart';
import '../../../widgets/profilePicture.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          const ProfilePicture(),
          const SizedBox(height: 40),
          ProfileMenu(
            text: "My Account",
            icon: CommunityMaterialIcons.account,
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: CommunityMaterialIcons.bell,
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: CommunityMaterialIcons.toolbox,
            press: () {},
          ),
          ProfileMenu(
            text: "About",
            icon: CommunityMaterialIcons.help_circle_outline,
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: CommunityMaterialIcons.logout,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LoginSignupScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
