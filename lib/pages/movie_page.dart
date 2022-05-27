import 'package:cinemaplus/pages/person.dart';
import 'package:flutter/material.dart';
import 'package:cinemaplus/pages/InputMovie.dart';
import 'package:cinemaplus/pages/cardDetail.dart';
import 'package:cinemaplus/model/movie_model.dart';
import 'package:cinemaplus/service/movie_service.dart';
import 'package:google_fonts/google_fonts.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({ Key? key }) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222831),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF222831),
        title:  Text("CinemaPLUS+",style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w600,color: Color(0xffF05460))),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
              return Persons();
            }));
              },
              child: Icon(
                  Icons.person
              ),
            )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FutureBuilder(
          future: MovieService().getMovies(),
           builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Text('loading...');
            default:
              if (snapshot.hasError){
                return Text('Error: ${snapshot.error}');
              }
              else{
                return createListView(context, snapshot);
              }
          }
        },
        ),
      ),
      floatingActionButton: buildNavigationButton(),
    );
  }

  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    List<MovieModel> values = snapshot.data;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: values.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              cardmovie(
                gambar: values[index].urlPoster,title: values[index].title,duration: values[index].duration
              ),
              const Divider(height: 2.0),
            ],
          );
        },
    );
  }

  Widget buildNavigationButton() => FloatingActionButton(
    backgroundColor: Colors.white,
    child: Icon(Icons.add,color: Color(0xffF05460),),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return InputMovie();
      }));
    },
  );
}