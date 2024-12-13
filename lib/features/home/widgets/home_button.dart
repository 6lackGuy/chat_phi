import 'package:chat_phi/helpers/exports.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    this.title,
    this.iconUrl,
    this.onPressed,
  });

  final String? title;
  final IconData? iconUrl;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 37.81,
              height: 37.81,
              decoration: const BoxDecoration(
                color: textFieldGrey,
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconUrl,
                color: iconGrey,
                size: 18.h,
              ),
            ),
            const SizedBox(height: 3),
            Text(
              title ?? "",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: iconGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> homeButtonContents = [
  {
    'icon': Icons.groups_2_outlined,
    'title': 'Groups',
    'function': () {},
  },
  {
    'icon': Icons.contacts_outlined,
    'title': 'Contacts',
    'function': () {},
  },
  {
    'icon': Icons.settings,
    'title': 'Settings',
    'function': () {},
  },
];
