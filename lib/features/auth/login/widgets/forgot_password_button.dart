import 'package:chat_phi/helpers/exports.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    required this.onPressed,
    super.key,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              "Forgot Password?",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
