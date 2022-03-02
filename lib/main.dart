import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My UI',
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent[200],
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Color(0xFFeeeeee),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(child: Text("U",style: TextStyle(fontSize: 25),), backgroundColor: Colors.deepPurpleAccent[400],),
            accountName: Text("User Name"), accountEmail: Text("user@gmail.com")),

            ListTile(
              onTap: (){

              },
              leading: Icon(Icons.home_work_rounded, color: Colors.deepPurpleAccent[400],),
              title: Text("My Bookings", style: TextStyle(color: Colors.deepPurpleAccent[400]),),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            ListTile(
              onTap: (){

              },
              leading: Icon(Icons.share, color: Colors.deepPurpleAccent[400],),
              title: Text("Share", style: TextStyle(color: Colors.deepPurpleAccent[400]),),
             // trailing: Icon(Icons.arrow_forward_ios),
            ),

             ListTile(
              onTap: (){

              },
              leading: Icon(Icons.login, color: Colors.deepPurpleAccent[400],),
              title: Text("Login", style: TextStyle(color: Colors.deepPurpleAccent[400]),),
             // trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],

           
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Your Stay",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Last Search",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Icon(
                            CupertinoIcons.arrow_right_circle_fill,
                            size: 35,
                            color: Colors.deepPurpleAccent.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Washington, 12.07 - 14.07,2 adults",
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/img2 (1).jpg",
                            width: 50,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/img2 (2).jpg",
                            width: 50,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/img2 (1).jpg",
                            width: 50,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/img2 (2).jpg",
                            width: 50,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.location_on_sharp,
                          color: Colors.deepPurpleAccent.withOpacity(0.8),
                          size: 20,
                        ),
                      ),
                    ),
                    title: Text(
                      "Location",
                      style: TextStyle(fontSize: 10, color: Colors.black38),
                    ),
                    subtitle: Text(
                      "London",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color:
                                    Colors.deepPurpleAccent.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.calendar_today_rounded,
                                color: Colors.deepPurpleAccent.withOpacity(0.8),
                                size: 20,
                              ),
                            ),
                          ),
                          title: Text(
                            "Check in",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black38),
                          ),
                          subtitle: Text(
                            "01.08.2020",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.black38,
                      ),
                      Expanded(
                        child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color:
                                    Colors.deepPurpleAccent.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.calendar_today_rounded,
                                color: Colors.deepPurpleAccent.withOpacity(0.8),
                                size: 20,
                              ),
                            ),
                          ),
                          title: Text(
                            "Check out",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black38),
                          ),
                          subtitle: Text(
                            "10.08.2020",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.people_alt_sharp,
                          color: Colors.deepPurpleAccent.withOpacity(0.8),
                          size: 20,
                        ),
                      ),
                    ),
                    title: Text(
                      "Persons",
                      style: TextStyle(fontSize: 10, color: Colors.black38),
                    ),
                    subtitle: Text(
                      "1 adult",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PricePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Find Stay"),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.deepPurpleAccent.withOpacity(0.8)),
                    elevation: MaterialStateProperty.all(20),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PricePage extends StatefulWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  List<String> carouselImage = [
    "https://images.click.in/classifieds/images/124/28_12_2019_14_34_53_656a309c06a78182732e05b26626925d_tey3z8cb9l.jpg",
    "https://pix10.agoda.net/hotelImages/906/906354/906354_15082416430034931111.jpg?s=1024x768",
    "https://www.chillpainai.com/src/wewakeup/scoop/images/db843f055f3ca5076838d73a2857e5d06166df10.jpg",
    "https://static.toiimg.com/thumb/30282584/WelcomHotel-Bella-Vista.jpg?width=1200&height=900"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: AppBar(
        backgroundColor: Color(0xFFeeeeee),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: 0,
        //leading: Icon(Icons.arrow_back, size: 50,color: Colors.black,),
      ),
      body: Column(
        children: [
          Stack(
            children: [
               CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 16 / 9, autoPlay: true, viewportFraction: 10,
                height: 300
                ),
              items: carouselImage.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                   
                    child: Image.network(i,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
          ),

            Positioned(
              top: 15,
              left: 15,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black38,
                   
                  ),
                  child:  Icon(Icons.arrow_back_rounded, color: Colors.white),
                ),
              )
              ),

            ],
          ),
        

          SizedBox(height: 20,),

        
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
              
                children: [
                Text("Signature Townhouse London Hyde Park",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),

                SizedBox(height: 20,),

                Text("The romantic London Gards Hotel is the best way to expirence London. Relax in rooms with flatscreen TVs, air conditioning and work desks.",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  height: 1.5
                ),),


                SizedBox(height: 20,),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        color: Colors.black.withOpacity(0.2)
                      )
                    ],
                    color: Colors.white
                  ),

                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 2, left: 10),
                      child: Container(
                          
                          child: Icon(Icons.star_border_purple500_rounded, color: Colors.yellow[700],size: 35,),
                      ),
                    ),
                    title: Text("Rating 4.5", style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("726 reviews", style: TextStyle(fontSize: 12)),
                  ),
                ),


              ],),
            ),
          
          SizedBox(height: 60,),

          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.99,
            
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
           
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("\$450", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                        SizedBox(height: 5,),
                        Text("For 9 nights", style: TextStyle(fontSize: 14, color: Colors.black38),)
                      ],
                    ),
                    Expanded(child: Container()),
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 18, left: 30, right: 30),
                        child: Text("Book", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent.withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))
                      ),
                      ),
                  ],
                ),
              ),
           
            ),
          ),

        ],
        
      ),
    );
  }
}
