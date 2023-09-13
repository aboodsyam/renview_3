import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lancer extends StatelessWidget {
  const lancer({
    super.key,
    required IconData icon1,
    required String tilte1,
    required String tilte2,
    required IconData icon2,
  })  : _icon1 = icon1,
        _tilte1 = tilte1,
        _tilte2 = tilte2,
        _icon2 = icon2;

  final IconData _icon1;
  final String _tilte1;
  final String _tilte2;
  final IconData _icon2;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20),
      elevation: 5,
      shadowColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(_icon1),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _tilte1,
                  style: GoogleFonts.akronim(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  _tilte2,
                  style: GoogleFonts.akronim(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ],
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(_icon2)),
          ],
        ),
      ),
    );
  }
}
