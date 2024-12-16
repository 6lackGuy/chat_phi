import 'package:chat_phi/helpers/exports.dart';
import 'package:flutter/services.dart';

class RegularButton extends StatefulWidget {
  const RegularButton({
    required this.title,
    this.onPress,
    this.isLoading,
    this.color,
    super.key,
  });

  final String title;
  final void Function()? onPress;
  final bool? isLoading;
  final Color? color;

  @override
  State<StatefulWidget> createState() {
    return _RegularButtonState();
  }
}

class _RegularButtonState extends State<RegularButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        _controller.forward();
        Future.delayed(const Duration(milliseconds: 200), () {
          _controller.reverse();
          widget.onPress!();
        });
      },
      child: ScaleTransition(
        scale: Tween<double>(
          begin: 1,
          end: 0.9,
        ).animate(_controller),
        child: SizedBox(
          height: 47.h,
          child: Padding(
            padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width > 600 ? 8 : 20)
                .w,
            child: Container(
              decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.all(const Radius.circular(10).r),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Center(
                    child: widget.isLoading ?? true
                        ? Text(
                            widget.title,
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          )
                        : const SizedBox.square(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
