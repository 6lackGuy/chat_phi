import 'package:chat_phi/helpers/exports.dart';

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
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double maxWidth = constraints.maxWidth;

                // Set a max width for the login form for large screens
                double formWidth = maxWidth > 600 ? 400 : maxWidth * 0.9;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).h,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 111),
                      Center(
                        child: Image.asset(
                          "assets/images/logo.png",
                          width:
                              150, // Adjust logo size based on available space
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
                      // Wrap the text field and other elements in a container with a max width
                      Container(
                        width: formWidth,
                        child: Column(
                          children: [
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
                            ForgotPasswordButton(onPressed: () {}),
                            const SizedBox(height: 19),
                            RegularButton(
                              title: "Sign In",
                              color: Colors.white,
                              onPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeScreen()),
                                );
                              },
                            ),
                            const SizedBox(height: 19),
                            CreateAccountButton(onPressed: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
