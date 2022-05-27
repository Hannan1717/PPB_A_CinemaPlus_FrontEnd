import 'package:cinemaplus/pages/PostResult.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InputMovie extends StatefulWidget {
  const InputMovie({Key? key}) : super(key: key);

  @override
  State<InputMovie> createState() => _InputMovieState();
}

class _InputMovieState extends State<InputMovie> {
  TextEditingController gambarcont = TextEditingController();
  TextEditingController titlecont = TextEditingController();
  TextEditingController durationcont = TextEditingController();
  String? urlPoster;
  String? title;
  String? duration;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Color(0xFF222831),
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF222831),
        title:  Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
          child: Center(child: Text("Add Movie",style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w600,color: Colors.white))),
        ),
      ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  onChanged: (String valueUrlPoster){
                    setState(() {
                      urlPoster=valueUrlPoster;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Url Poster",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xffF05455)
                    )
                  ),
                  controller: gambarcont,
                ),
                TextFormField(
                  onChanged: (String valuetitle){
                    setState(() {
                      title=valuetitle;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Title Movie",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xffF05455)
                    )
                  ),
                  controller: titlecont,
                ),
                TextFormField(
                  onChanged: (String valueDuration){
                    setState(() {
                      duration=valueDuration;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Duration",
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xffF05455)
                    )
                  ),
                  controller: durationcont,
                ),
                SizedBox(height: 30,),
                ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Color(0xffF05455)
                ),
                  onPressed: (){
                  PostResult.connectToAPI(urlPoster!,title!,duration!);
                }, child: Text("Submit"))
              ],
            ),
          ),
        ),
        floatingActionButton: backNavigationButton(),
        ),
    );
  }
  Widget backNavigationButton() => FloatingActionButton(
    backgroundColor: Colors.white,
    child: Icon(Icons.chevron_left,color: Color(0xffF05460),),
    onPressed: (){
      Navigator.pop(context);
    },
  );
}
  
  