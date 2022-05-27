import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CardPerson extends StatelessWidget {
  String? gambar;
  String? nama;
  String? nim;

  CardPerson ({this.gambar,this.nama,this.nim});
  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.all(10.0),
       child: Card(
         color: Colors.white,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             children: <Widget>[
              Padding(
                padding: const EdgeInsets. fromLTRB(8, 8, 22, 8),
                child: CircleAvatar(radius: 25,backgroundImage: AssetImage("img/$gambar"),),
              ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text("$nama",
                     style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w800,color: Color(0xffF05460))
                   ),
                   SizedBox(height: 2,),
                   Text("$nim",
                     style: GoogleFonts.roboto(fontSize: 12,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 199, 199, 199))
                   )
                 ],
               )
             ],
           ),
         ),
       ),
     );
  }
}