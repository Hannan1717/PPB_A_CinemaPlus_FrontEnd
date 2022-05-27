import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardmovie extends StatelessWidget {
  String? gambar;
  String? title;
  String? duration;
  cardmovie ({this.gambar,this.title,this.duration});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 300,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 220,
                width: 200,
                child: Image.network(
                  "$gambar",fit: BoxFit.cover,
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,10,10,5),
              child: Text(
                "$title",
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
              child: Text(
                '$duration',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w600,color: Color.fromARGB(185, 145, 145, 145))
              ),
            ),
          ],
        ),
      ),
    );
  }
}