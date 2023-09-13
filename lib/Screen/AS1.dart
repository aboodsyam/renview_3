import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renview_3/Leanc2.dart';
import 'package:renview_3/Screen/leain3.dart';

class A_S extends StatelessWidget {
  const A_S({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'BIO',
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffEF9595),
              Color(0xffEFB495),
              Color(0xffEFD595),
              Color(0xffEBEF95),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqeZ5mVbarupP8UWVic7UtumtbIyE0GY-ucQ&usqp=CAU'),
            ),
            SizedBox(height: 10),
            Text(
              'Abood.Siam>2023',
              style: GoogleFonts.almarai(
                  color: Colors.pink,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2),
            Text(
              '+970525623445',
              style: GoogleFonts.almarai(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300),
            ),
            Divider(
              height: 30,
              thickness: 0.8,
              color: Colors.green,
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(
              height: 10,
            ),
            lancer(
                icon1: Icons.phone,
                tilte1: 'Mobile',
                tilte2: '684386037',
                icon2: Icons.logout),
            Divider(),
            Leancer2(
              icon1: Icons.icecream,
              title1: 'Phone',
              title2: '0590345926',
              icon2: Icons.accessibility,
              onAction: () {
                print('onPhone..');
                _Show(context, massege: 'onPhone..');
              },
            ),
            Divider(),
            Leancer2(
              icon1: Icons.access_alarm_outlined,
              title1: 'arroas',
              title2: '54268249624',
              icon2: Icons.add_alarm_sharp,
              onAction: () {
                print('onArrous..');
                _Show(context, massege: 'onArrous..');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _Show(BuildContext context, {required String massege}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(massege),
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        elevation: 5,
        backgroundColor: Colors.green,
        onVisible: () => print('onVisible'),
        dismissDirection: DismissDirection.horizontal,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
