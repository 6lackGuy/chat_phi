import 'package:chat_phi/helpers/exports.dart';

void main() {
  runApp(const ChatPhi());
}

class ChatPhi extends StatelessWidget {
  const ChatPhi({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 852),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Artefix',
        darkTheme: AppThemes.darkTheme,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
