import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myburgo_test/components/view_components.dart';
import 'package:myburgo_test/main.dart';
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
    return Observer(builder: (context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Image.asset(
            ImageConstant.ic_logo_purple,
            height: 80,
            width: 80,
          ),
          backgroundColor: Colors.white,
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                    )),
                Image.network(
                        fit: BoxFit.fill,
                        height: 40,
                        width: 40,
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D")
                    .cornerRadiusWithClipRRect(50)
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: appStore.challengeList.length > 0
              //  &&
              //         appStore.videoRecordedList.length > 0
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          contentPadding: EdgeInsets.all(20),
                          hintText: "Search",
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.grey,
                            size: 18,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 18,
                          )),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    HorizontalList(
                      itemBuilder: (context, index) {
                        return Container(
                          child: Image.asset(
                            imagesList[index],
                            height: 30,
                            width: 30,
                          ),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ThemeClass.primeryColor),
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
                              fit: BoxFit.fitHeight,
                              ImageConstant.back_1,
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                            ).cornerRadiusWithClipRRect(10),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.black12,
                                    Colors.black12
                                  ])),
                            ),
                            Positioned(
                                top: 4,
                                left: 10,
                                child: Image.asset(
                                  ImageConstant.ic_logo_white,
                                  height: 60,
                                  width: 60,
                                )),
                            Positioned(
                                top: 40,
                                left: 10,
                                child: Text(
                                  "GET 50% off",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
                    SizedBox(height: 16),
                    Text(
                      "Challenges curated for you",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    SizedBox(height: 16),
                    HorizontalList(
                        itemCount: appStore.challengeList.length,
                        itemBuilder: (context, index) {
                          var percentage = ((appStore.challengeList[index].mrp -
                                      appStore
                                          .challengeList[index].sellingPrice) /
                                  appStore.challengeList[index].mrp) *
                              100;

                          return ViewComponents(
                              image: appStore.challengeList[index]
                                  .workshopExperts[0].image,
                              title: appStore.challengeList[index].title,
                              subTitle: appStore.challengeList[index]
                                  .workshopExperts[index].firstName,
                              percentage: percentage.toStringAsFixed(1),
                              mrp: appStore.challengeList[index].mrp.toString(),
                              sellingPrice: appStore
                                  .challengeList[index].sellingPrice
                                  .toString());

                          // return Card(
                          //   color: Colors.white,
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     mainAxisSize: MainAxisSize.max,
                          //     children: [
                          //       Image.network(
                          //         fit: BoxFit.fill,
                          //         appStore.challengeList[index]
                          //             .workshopExperts[0].image,
                          //         height:
                          //             MediaQuery.of(context).size.height * 0.2,
                          //         width:
                          //             MediaQuery.of(context).size.width * 0.7,
                          //       ),
                          //       SizedBox(
                          //         height: 4,
                          //       ),
                          //       Text(
                          //         appStore.challengeList[index].title,
                          //         style: GoogleFonts.poppins(
                          //             color: Colors.black,
                          //             fontWeight: FontWeight.bold,
                          //             fontSize: 18),
                          //       ),
                          //       Text(appStore.challengeList[index]
                          //           .workshopExperts[index].firstName),
                          //       Row(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         mainAxisSize: MainAxisSize.max,
                          //         children: [
                          //           Column(
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.start,
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.start,
                          //             mainAxisSize: MainAxisSize.max,
                          //             children: [
                          //               Row(
                          //                 crossAxisAlignment:
                          //                     CrossAxisAlignment.start,
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.spaceBetween,
                          //                 mainAxisSize: MainAxisSize.max,
                          //                 children: [
                          //                   SizedBox(
                          //                       height: 30,
                          //                       width: 60,
                          //                       child: Text(
                          //                         maxLines: 1,
                          //                         overflow: TextOverflow.clip,
                          //                         "${percentage.toStringAsFixed(1)}%",
                          //                         style: GoogleFonts.poppins(
                          //                             color: Colors.red,
                          //                             fontSize: 18),
                          //                       ).paddingSymmetric(
                          //                           vertical: 2)),
                          //                   SizedBox(
                          //                     width: 6,
                          //                   ),
                          //                   SizedBox(
                          //                     height: 30,
                          //                     child: Text(
                          //                       appStore.challengeList[index]
                          //                           .sellingPrice
                          //                           .toString(),
                          //                       style: GoogleFonts.poppins(
                          //                           fontSize: 24,
                          //                           fontWeight:
                          //                               FontWeight.bold),
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //               Text(
                          //                 appStore.challengeList[index].mrp
                          //                     .toString(),
                          //                 maxLines: 1,
                          //                 style: TextStyle(
                          //                   fontSize: 18,
                          //                   decoration:
                          //                       TextDecoration.lineThrough,
                          //                   decorationThickness:
                          //                       2, // Optional: Thickness of the line
                          //                 ),
                          //               )
                          //             ],
                          //           ),
                          //           SizedBox(
                          //             width: 30,
                          //           ),
                          //           ElevatedButton(
                          //               style: ElevatedButton.styleFrom(
                          //                 elevation: 1,
                          //                 backgroundColor: ThemeClass.pinkColor,
                          //                 shape: RoundedRectangleBorder(
                          //                   borderRadius:
                          //                       BorderRadius.circular(8),
                          //                 ),
                          //               ),
                          //               onPressed: () {},
                          //               child: Text(
                          //                 "Buy Now",
                          //                 style: GoogleFonts.poppins(
                          //                     color: Colors.white),
                          //               ))
                          //         ],
                          //       )
                          //     ],
                          //   ),
                          // );
                        }),
                    SizedBox(height: 16),
                    Text(
                      "Recorded videos for you",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    SizedBox(height: 16),
                    HorizontalList(
                        itemCount: appStore.videoRecordedList.length,
                        itemBuilder: (context, index) {
                          var percentage =
                              ((appStore.videoRecordedList[index].mrp -
                                          appStore.videoRecordedList[index]
                                              .sellingPrice) /
                                      appStore.videoRecordedList[index].mrp) *
                                  100;

                          return ViewComponents(
                              image: appStore.videoRecordedList[index]
                                          .workshopExperts[0].image !=
                                      null
                                  ? appStore.videoRecordedList[index]
                                      .workshopExperts[0].image
                                  : "",
                              title: appStore.videoRecordedList[index].title,
                              subTitle: appStore.videoRecordedList[index]
                                  .workshopExperts[0].firstName,
                              percentage: percentage.toStringAsFixed(1),
                              mrp: appStore.videoRecordedList[index].mrp
                                  .toString(),
                              sellingPrice: appStore
                                  .videoRecordedList[index].sellingPrice
                                  .toString());
                        }),
                    SizedBox(height: 16),
                    Text(
                      "Live WorkShops for you",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    SizedBox(height: 16),
                    HorizontalList(
                        itemCount: appStore.liveWorkshopList.length,
                        itemBuilder: (context, index) {
                          var percentage =
                              ((appStore.liveWorkshopList[index].mrp -
                                          appStore.liveWorkshopList[index]
                                              .sellingPrice) /
                                      appStore.liveWorkshopList[index].mrp) *
                                  100;

                          return ViewComponents(
                              image: appStore.liveWorkshopList[index]
                                          .workshopExperts[0].image !=
                                      null
                                  ? appStore.liveWorkshopList[index]
                                      .workshopExperts[0].image
                                  : "",
                              title: appStore.liveWorkshopList[index].title,
                              subTitle: appStore.liveWorkshopList[index]
                                  .workshopExperts[0].firstName,
                              percentage: percentage.toStringAsFixed(1),
                              mrp: appStore.liveWorkshopList[index].mrp
                                  .toString(),
                              sellingPrice: appStore
                                  .liveWorkshopList[index].sellingPrice
                                  .toString());
                        }),
                  ],
                ).paddingSymmetric(horizontal: 16)
              : Center(child: Text("Something Goes Wrong")),
        ),
      );
    });
  }
}
//Recorded videos for you
