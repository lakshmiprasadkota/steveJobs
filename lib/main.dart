import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <String> img = ["https://content.fortune.com/wp-content/uploads/2020/01/CNV.02.20.Sundar-Pichai-A.jpg",
    "https://i.pinimg.com/originals/b7/f5/ba/b7f5ba6af831a8592d40fcd785f3b262.jpg",
  "https://content.fortune.com/wp-content/uploads/2008/03/stevejobs_brian_6800012_max.jpg"];
  List <String> title = ["Sunder Pichai " , "Girls love beard guys" , "steve jobs "];
  List <String> subtitle = ["friend tech " , "pavan Ramagiri" , "lp tech"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(

                            child: Image.network("https://i.ytimg.com/vi/aEr6K1bwIVs/maxresdefault.jpg")
                        ),
                        Positioned(
                          right: 5,
                            bottom: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.black
                            ),
                            child: Text(" 2:41" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w700),),
                          ),
                        )
                      ],
                    ),

                    Container(
                       margin: EdgeInsets.only(left: 5 ,
                       top: 10, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                     Container(
                         child: Image.network("https://www.entertainmentrocks.com/wp-content/uploads/2019/04/new-ush-logo-web-no-tagline.png" , height: 45, width: 50,)
                      ,decoration: BoxDecoration(
                          shape: BoxShape.circle,
                       color: Colors.black
                     ),
                     ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 3,),
                                Text("Steve jobs - Official Trailer(HD)" , style: TextStyle(fontSize: 15, color: Colors.black ,fontWeight: FontWeight.w600 ),),
                                SizedBox(height: 3,),
                                Text("Universal Picture .1.5 crore views . 5 yeras ago" , style: TextStyle(fontSize: 10, color: Colors.grey ,fontWeight: FontWeight.w400  ),)
                              ],
                            ),
                          ),
                          IconButton(icon: Icon(Icons.more_vert), onPressed: (){

                          })
                        ],

                      ),
                    ),
                    Divider(height: 1,
                    color: Colors.grey, thickness: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.network("https://uxwing.com/wp-content/themes/uxwing/download/10-brands-and-social-media/youtube-shorts.png" , height: 25, width: 40,),
                          SizedBox(width: 5,),
                          Text("Shorts" , style: TextStyle(fontSize: 16, color: Colors.black ,fontWeight: FontWeight.w500,)
                          )],
                      ),
                    ),


                    Container(
                      height: 300,
                      child: ListView.builder(itemCount: img.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context , index){
                        return ListClass(img: img[index],
                        title: title[index],
                        subtitle: subtitle[index],);
                      }),
                    )
                  ],

                ),


              ),

            )
        )
    );
  }
}


class ListClass extends StatefulWidget {
  ListClass({this.img , this.subtitle , this.title });
  final String img;
  final String title ;
  final String subtitle;
  @override
  _ListClassState createState() => _ListClassState();
}

class _ListClassState extends State<ListClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
             Stack(children: [

               Container(
                   child: Image.network(widget.img  ,height: 300,)),
               Positioned(
                   right: -5,
                   top: -5,
                   child: IconButton(icon: Icon(Icons.more_vert , color: Colors.white, ), onPressed: (){

                   })),

               Positioned(
                left: 10,
                   bottom: 25,
                   child: Text(widget.title , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w600),)),

               Positioned(
              left: 10,
                   bottom: 5,
                   child: Text(widget.subtitle , style: TextStyle( fontSize: 13,color: Colors.white),)),
             ],),

        ],
      ),
    );
  }
}
