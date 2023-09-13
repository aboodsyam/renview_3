import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leancer2 extends StatelessWidget {
  const Leancer2({
    required this.icon1,
    required this.title1,
    required this.title2,
    required this.icon2,
    required this.onAction,
    super.key,
  });

  final IconData icon1;
  final String title1;
  final String title2;
  final IconData icon2;
  final void Function() onAction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: Colors.green,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        onTap: () {},
        minLeadingWidth: 0,
        leading: Icon(icon1),
        title: Text(
          title1,
          style: GoogleFonts.almarai(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          title2,
          style: GoogleFonts.almarai(
              color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300),
        ),
        trailing: IconButton(
            onPressed:onAction

            , icon: Icon(icon2)),
      ),
    );
  }


}
