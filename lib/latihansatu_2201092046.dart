import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PageLatihan extends StatelessWidget {
  const PageLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Project MI2C'),
        centerTitle: true,
      )
      ,body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('gambar/film4.png',
              fit: BoxFit.contain,
              height:200,
              width:200, ),
            SizedBox(height: 8,),


            Text('Selamat datang di politeknik Negri Padang',style: TextStyle(
                color: Colors.orange,fontWeight: FontWeight.bold)),
            Text('Limau manis,padang, sumbar'),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              showToast('Manajemen Informatika',
                  context: context,
                  animation: StyledToastAnimation.slideFromRight,
                  reverseAnimation: StyledToastAnimation.slideToRight,
                  position: StyledToastPosition.bottom,
                  startOffset: Offset(1.0, 0.0),
                  reverseEndOffset: Offset(1.0, 0.0),
                  animDuration: Duration(seconds: 1),
                  duration: Duration(seconds: 4),
                  curve: Curves.linearToEaseOut,
                  reverseCurve: Curves.fastOutSlowIn);
            },
              child: Text('Manajemen Informatika',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),) ,color: Colors.orange,
              textColor: Colors.white,),

            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              showToast('Teknik Komputer',
                  context: context,
                  animation: StyledToastAnimation.slideFromTopFade,
                  reverseAnimation: StyledToastAnimation.slideToTopFade,
                  position: StyledToastPosition.top,
                  startOffset: Offset(1.0, 0.0),
                  reverseEndOffset: Offset(1.0, 0.0),
                  animDuration: Duration(seconds: 1),
                  duration: Duration(seconds: 4),
                  curve: Curves.linearToEaseOut,
                  reverseCurve: Curves.fastOutSlowIn);
            },
              child: Text('Teknik Komputer',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),) ,color: Colors.orange,
              textColor: Colors.white,)


          ],
        ),
      ),
    ),
    );
  }
}
