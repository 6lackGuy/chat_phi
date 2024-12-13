import 'package:chat_phi/helpers/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: <Widget>[
              const SizedBox(height: 111),
              // SvgPicture.asset(
              //   ImagePath.logo,
              //   height: 48,
              //   width: 48,
              // ),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
              const SizedBox(height: 69),
              Text(
                "Sign in",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 59),

              CustomLoginTextField(
                controller: emailController,
                hintText: "Email",
                iconss: false,
              ),
              const SizedBox(height: 10),
              CustomLoginTextField(
                controller: passwordController,
                hintText: "Password",
                iconss: true,
              ),
              ForgotPasswordButton(
                onPressed: () {},
              ),
              const SizedBox(height: 19),
              RegularButton(
                title: "Sign In",
                color: Colors.white,
                onPress: () {},
              ),
              const SizedBox(height: 19),
              CreateAccountButton(
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
