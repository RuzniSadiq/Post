import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBarterCategories extends StatefulWidget {
  const AddBarterCategories({Key? key}) : super(key: key);

  @override
  State<AddBarterCategories> createState() => _AddBarterCategoriesState();
}

class _AddBarterCategoriesState extends State<AddBarterCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Color(0xFFFBFBFB),

          // Status bar brightness
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: const Color(0xFFFBFBFB),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AutoSizeText(
              "Barter Categories (0/10)",
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.height / 8,
                      MediaQuery.of(context).size.height / 20),
                  splashFactory: InkRipple.splashFactory,
                  shadowColor: Colors.transparent,
                  primary: const Color(0xFF00B1FF),
                  onPrimary: const Color(0xFF008AC7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const AutoSizeText(
                  "Done",
                  maxLines: 1,
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                  ),
                )),
          ],
        ),
        automaticallyImplyLeading: false,
        shadowColor: const Color(0xFF707070),
        elevation: 0.1,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 23.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    const Center(
                      child: AutoSizeText(
                        "Selecting a category will add all of its sub categories",
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xFF5D5C5C),
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Center(
                      child: Wrap(
                        direction: Axis.horizontal,
                        runSpacing: 5.0,
                        spacing: 5.0,
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10.0,
                                    left:
                                        MediaQuery.of(context).size.width / 58),
                                height: MediaQuery.of(context).size.height / 18,
                                width: MediaQuery.of(context).size.height / 7.4,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFFEFEF),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: const Color(0xFFF7817D))),
                                child: const Center(
                                  child: AutoSizeText(
                                    "Mobiles",
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.remove_circle_sharp,
                                color: Colors.red,
                                size: MediaQuery.of(context).size.width / 15,
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10.0,
                                    left:
                                        MediaQuery.of(context).size.width / 58),
                                height: MediaQuery.of(context).size.height / 18,
                                width: MediaQuery.of(context).size.height / 7.4,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFFEFEF),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: const Color(0xFFF7817D))),
                                child: const Center(
                                  child: AutoSizeText(
                                    "Apple",
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.remove_circle_sharp,
                                color: Colors.red,
                                size: MediaQuery.of(context).size.width / 15,
                              )
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10.0,
                                    left:
                                        MediaQuery.of(context).size.width / 58),
                                height: MediaQuery.of(context).size.height / 18,
                                width: MediaQuery.of(context).size.height / 7.4,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFFEFEF),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: const Color(0xFFF7817D))),
                                child: const Center(
                                  child: AutoSizeText(
                                    "OPPO",
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.remove_circle_sharp,
                                color: Colors.red,
                                size: MediaQuery.of(context).size.width / 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Row(
                      children: [
                        Container(
                          // width: 40,
                          // height: 40,
                          //12
                          height: MediaQuery.of(context).size.width / 18,
                          width: MediaQuery.of(context).size.width / 18,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: const Color(0xFF828282), width: 0.2)),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_outlined,
                              color: const Color(0xFF000000),
                              //23
                              size: MediaQuery.of(context).size.width / 30,
                            ),
                          ),
                        ),
                        Container(
                          // width: 87.36,
                          // height: 35,
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 58),
                          height: MediaQuery.of(context).size.height / 18,
                          width: MediaQuery.of(context).size.width / 1.26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFFF0F0F0),
                              border: Border.all(
                                  color: const Color(0xFF828282), width: 0.2)),
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          25),
                                  child: Icon(
                                    Icons.mobile_friendly_rounded,
                                    size:
                                        MediaQuery.of(context).size.width / 25,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: AutoSizeText(
                                  "Mobile",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 11.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: MediaQuery.of(context).size.width / 30,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: AutoSizeText(
                                  "HUAWEI",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 11.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: MediaQuery.of(context).size.width / 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 25,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                // width: 87.36,
                                // height: 35,
                                margin: EdgeInsets.only(
                                    top: 10.0,
                                    left:
                                        MediaQuery.of(context).size.width / 58),
                                height:
                                    MediaQuery.of(context).size.height / 14.3,
                                width: MediaQuery.of(context).size.width / 1.26,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        //offset: Offset(0, 4),
                                        color: Color(0xFFF0F0F0), //edited
                                        spreadRadius: 10,
                                        blurRadius: 10 //edited
                                        ),
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFFFFFFF),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                15),
                                        child: const AutoSizeText(
                                          "Mate 40 Pro",
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              15),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.mobile_friendly_rounded,
                                            color: const Color(0xFF00B1FF),
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                25,
                                          ),
                                          Icon(
                                            Icons.mobile_friendly_rounded,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                25,
                                            color: const Color(0xFF00B1FF),
                                          ),
                                          Icon(
                                            Icons.mobile_friendly_rounded,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                25,
                                            color: const Color(0xFF00B1FF),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.add_circle_sharp,
                                color: Colors.blue,
                                size: MediaQuery.of(context).size.width / 15,
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 60,
                          ),
                          Stack(
                            children: [
                              Container(
                                // width: 87.36,
                                // height: 35,
                                margin: EdgeInsets.only(
                                    top: 10.0,
                                    left:
                                        MediaQuery.of(context).size.width / 58),
                                height:
                                    MediaQuery.of(context).size.height / 14.3,
                                width: MediaQuery.of(context).size.width / 1.26,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        //offset: Offset(0, 4),
                                        color: Color(0xFFF0F0F0), //edited
                                        spreadRadius: 10,
                                        blurRadius: 10 //edited
                                        ),
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFFFFFFF),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                15),
                                        child: const AutoSizeText(
                                          "Mate 30 Pro 5G",
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              15),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.mobile_friendly_rounded,
                                            size: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                25,
                                            color: const Color(0xFF00B1FF),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.add_circle_sharp,
                                color: Colors.blue,
                                size: MediaQuery.of(context).size.width / 15,
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 60,
                          ),
                          Stack(
                            children: [
                              Container(
                                // width: 87.36,
                                // height: 35,
                                margin: EdgeInsets.only(
                                    top: 10.0,
                                    left:
                                        MediaQuery.of(context).size.width / 58),
                                height:
                                    MediaQuery.of(context).size.height / 14.3,
                                width: MediaQuery.of(context).size.width / 1.26,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        //offset: Offset(0, 4),
                                        color: Color(0xFFF0F0F0), //edited
                                        spreadRadius: 10,
                                        blurRadius: 10 //edited
                                        ),
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFFFFFFF),
                                ),
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                15),
                                        child: const AutoSizeText(
                                          "Mate 20 X (5G)",
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.add_circle_sharp,
                                color: Colors.blue,
                                size: MediaQuery.of(context).size.width / 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.width / 30,
                right: MediaQuery.of(context).size.width / 30,
                child: Icon(
                  Icons.add_circle_sharp,
                  color: const Color(0xFF00B1FF),
                  size: MediaQuery.of(context).size.width / 10,
                ))
          ],
        ),
      ),
    );
  }
}
