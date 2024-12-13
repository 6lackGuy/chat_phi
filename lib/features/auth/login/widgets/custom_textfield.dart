import 'package:chat_phi/helpers/exports.dart';
import 'package:flutter/cupertino.dart';

class CustomLoginTextField extends StatefulWidget {
  const CustomLoginTextField({
    required this.controller,
    required this.hintText,
    required this.iconss,
    this.searchIcon,
    super.key,
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool iconss;
  final bool? searchIcon;

  @override
  State<CustomLoginTextField> createState() => _CustomLoginTextFieldState();
}

class _CustomLoginTextFieldState extends State<CustomLoginTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).h,
      child: Align(
        child: SizedBox(
          height: 47.h,
          child: TextField(
            decoration: InputDecoration(
              fillColor: textFieldGrey,
              filled: true, // Ensures the background is colored
              hintText: widget.hintText,
              hintStyle: GoogleFonts.plusJakartaSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: hintTextColor,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 0).w,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: textFieldGrey,
                ), // Grey border for inactive state
                borderRadius: BorderRadius.circular(10).r, // Rounded corners
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ), // Grey border for active (focused) state
                borderRadius: BorderRadius.circular(10).r,
              ),
              prefixIcon: widget.searchIcon ?? false
                  ? Padding(
                      padding:
                          const EdgeInsets.all(14), // Adjust padding as needed
                      child: SvgPicture.asset(
                        "assets/images/search.svg",
                        height: 17,
                        width: 17,
                      ),
                    )
                  : null,

              suffixIcon: widget.iconss
                  ? GestureDetector(
                      onTap: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                      child: obscureText
                          ? const Icon(
                              CupertinoIcons.eye_fill,
                              size: 19,
                            )
                          : const Icon(
                              CupertinoIcons.eye_slash_fill,
                              size: 19,
                            ),
                    )
                  : const SizedBox(),
            ),
            controller: widget.controller,
            obscureText: widget.iconss ? obscureText : widget.iconss,
          ),
        ),
      ),
    );
  }
}
