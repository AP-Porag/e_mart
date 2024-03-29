import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),

          //swipers brand
          VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  slidersList[index],
                  fit: BoxFit.fitWidth,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 8))
                    .make();
              })
        ],
      )),
    );
  }
}
