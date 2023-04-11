import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/views/auth_screen/login_screen.dart';
import 'package:e_mart/widgets_common/applogo_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//method for changing screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getx
      Get.to(() => const LoginScreen());
    });
  }

//call changeScreen function
  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            applogowidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
            const Spacer(),
            credits.text.fontFamily(semibold).size(22).white.make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
