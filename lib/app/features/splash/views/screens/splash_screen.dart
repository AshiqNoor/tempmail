part of splash;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  curve: Curves.bounceOut,
                  duration: const Duration(seconds: 2),
                  tween: Tween<double>(begin: 8, end: 30),
                  builder: (context, dynamic value, child) {
                    return Text(
                      "TempMail",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: value,
                          color: Colors.blue[200]),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
