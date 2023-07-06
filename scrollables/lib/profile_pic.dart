import 'package:flutter/widgets.dart';

class ProfilePic extends StatelessWidget {
  ProfilePic(this.avatarDir, {super.key});
  final String avatarDir;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 20, left: 5),
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(avatarDir)),
        borderRadius: BorderRadius.circular(75),
        // shape: BoxShape.circle,
      ),
      //child: Image.asset(postDetails.userAvatar, fit: BoxFit.fill),
      //   ),
    );
  }
}
