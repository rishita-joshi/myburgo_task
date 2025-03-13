import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/theme_class.dart';

class ViewComponents extends StatefulWidget {
  const ViewComponents(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.percentage,
      required this.mrp,
      required this.sellingPrice});
  final image;
  final title;
  final subTitle;
  final percentage;
  final mrp;
  final sellingPrice;

  @override
  State<ViewComponents> createState() => _ViewComponentsState();
}

class _ViewComponentsState extends State<ViewComponents> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.network(
            errorBuilder: (context, _, s1) {
              return Image.asset(
                ImageConstant.ic_logo_purple,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.7,
              );
            },
            fit: BoxFit.fill,
            widget.image,
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.7,
          ),
          SizedBox(height: 6),
          SizedBox(
            // height: 50,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.fade,
              widget.title,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ).paddingSymmetric(vertical: 8),
          ),
          SizedBox(height: 6),
          Text(widget.subTitle).paddingSymmetric(horizontal: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                          height: 30,
                          width: 60,
                          child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            "${widget.percentage}%",
                            style: GoogleFonts.poppins(
                                color: Colors.red, fontSize: 18),
                          ).paddingSymmetric(vertical: 2)),
                      SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          widget.sellingPrice.toString(),
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.mrp,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 18,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 2, // Optional: Thickness of the line
                    ),
                  )
                ],
              ).paddingSymmetric(horizontal: 8),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    backgroundColor: ThemeClass.pinkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: GoogleFonts.poppins(color: Colors.white),
                  )).paddingSymmetric(horizontal: 8)
            ],
          )
        ],
      ),
    );
  }
}
