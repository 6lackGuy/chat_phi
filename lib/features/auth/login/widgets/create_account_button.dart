import 'package:chat_phi/helpers/exports.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    required this.onPressed,
    super.key,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "New User?",
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF272727),
          ),
        ),
        SizedBox(
          width: 2.h,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            "Create an accout",
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: blue,
            ),
          ),
        ),
      ],
    );
  }
}
