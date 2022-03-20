import 'package:flutter/material.dart';

import 'package:flutter_pokeball/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        //copyWith: ThemeData.dark() teması uygulansın ama onun dışında bi değişiklik yapacaksak copyWith kullanarak ana yapıda değişiklikler yapıyoruz.
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.latoTextTheme()
        ),
        home: const HomePage(),
      ),
    );
  }
}
