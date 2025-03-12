import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myburgo_test/utils/theme_class.dart';
import 'package:nb_utils/nb_utils.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imagesList = [
    ImageConstant.img_1,
    ImageConstant.img_2,
    ImageConstant.img_3,
    ImageConstant.img_4,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            HorizontalList(
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    imagesList[index],
                    height: 50,
                    width: 50,
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ThemeClass.greyColor),
                );
              },
              itemCount: imagesList.length,
            ),
            SizedBox(
              height: 10,
            ),
            HorizontalList(
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Image.asset(
                      ImageConstant.back_1,
                      height: MediaQuery.of(context).size.height * 1,
                      width: MediaQuery.of(context).size.width * 0.1,
                    ).cornerRadiusWithClipRRect(10),
                    Container(
                      height: MediaQuery.of(context).size.height * 1,
                      width: MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Colors.black12, Colors.black12])),
                    ),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: Image.asset(ImageConstant.ic_logo_white)),
                    Positioned(
                        top: 40,
                        left: 20,
                        child: Text(
                          "GET 50% off",
                          style: GoogleFonts.poppins(fontSize: 30),
                        )),
                    //    Container(
                    //      child: Image.asset(),
                    //      padding: EdgeInsets.all(8),
                    //      decoration: BoxDecoration(
                    //          shape: BoxShape.circle, color: ThemeClass.greyColor),
                    //    ),
                  ],
                );
              },
              itemCount: 3,
            ),
            SizedBox(height: 10),
            Text(
              "Challenges curated for you",
              style: GoogleFonts.poppins(fontSize: 30, color: Colors.black),
            ),
            SizedBox(height: 10),
            HorizontalList(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "",
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text(""),
                        Text(""),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("-50%"),
                                    Text("-50%"),
                                  ],
                                ),
                                Text("")
                              ],
                            ),
                            ElevatedButton(
                                style: ButtonStyle(),
                                onPressed: () {},
                                child: Text("Buy Now"))
                          ],
                        )
                      ],
                    ),
                  );
                }),
            SizedBox(height: 10),
            Text(
              "Recorded videos for you",
              style: GoogleFonts.poppins(fontSize: 30, color: Colors.black),
            ),
            SizedBox(height: 10),
            HorizontalList(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "",
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text(""),
                        Text(""),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("-50%"),
                                    Text("-50%"),
                                  ],
                                ),
                                Text("")
                              ],
                            ),
                            ElevatedButton(
                                style: ButtonStyle(),
                                onPressed: () {},
                                child: Text("Buy Now"))
                          ],
                        )
                      ],
                    ),
                  );
                }),
            SizedBox(height: 10),
            Text(
              "Live WorkShops for you",
              style: GoogleFonts.poppins(fontSize: 30, color: Colors.black),
            ),
            HorizontalList(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "",
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Text(""),
                        Text(""),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("-50%"),
                                    Text("-50%"),
                                  ],
                                ),
                                Text("")
                              ],
                            ),
                            ElevatedButton(
                                style: ButtonStyle(),
                                onPressed: () {},
                                child: Text("Buy Now"))
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
//Recorded videos for you