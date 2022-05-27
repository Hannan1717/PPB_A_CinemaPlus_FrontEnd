import 'package:cinemaplus/pages/cardperson.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Persons extends StatefulWidget {
  const Persons({Key? key}) : super(key: key);

  @override
  State<Persons> createState() => _PersonsState();
}

class _PersonsState extends State<Persons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222831),
      body: Padding(padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.chevron_left,size: 35,color: Colors.white,)),
              Text("About Us",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white)),
              Icon(Icons.chevron_left,size: 35,color: Color(0xFF222831)),
            ],
          ),
          Column(
            children: [
              CardPerson(gambar: "hannan.jpeg",nama: "Muhammad Hannan", nim: "21120120120017",),
              CardPerson(gambar: "alya.png",nama: "Alya Zahra Fatikha", nim: "21120120140056",),
              CardPerson(gambar: "adivia.jpg",nama: "Adivia Khusnul Aisha", nim: "21120120120019",),
              CardPerson(gambar: "yusuf.jpg",nama: "Maulana Yusuf Suradin", nim: "21120120140051",),
              CardPerson(gambar: "sulthon.png",nama: "Muhammad Sulthon Auliya ", nim: "21120120130047",),
            ],
          )
        ],
      ),),
    );
  }
}