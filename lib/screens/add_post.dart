import 'dart:core';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  bool isBarter = false;
  String delivery = "No";

  // list of images
  List imgList = [
    'https://img.freepik.com/free-photo/milford-sound-new-zealand-travel-destination-concept_53876-42945.jpg?w=2000',
    'https://img.freepik.com/free-photo/milford-sound-new-zealand-travel-destination-concept_53876-42945.jpg?w=2000'
  ];

  List deliveryList = ["No", "Free", "Paid"];

  List barterCategoryList = ["Mobiles", "Apple", "OPPO", "Panasonic", "HTC"];

  List addCategoryList = [];

  List currentValue = [];

  bool mainItemCategoryChosen = false;
  int indexCount = 0;

  Map itemCategoryMap = {
    //Vehicles
    "Vehicles": [
      "Cars For Sale",
      "Cars For Rent",
      "Vehicle Accessories",
      "Vehicle Spare Parts",
      "Number Plates",
      "Motorcycles & ATV",
    ],

    //Properties
    "Properties": [
      "Real Estate For Sale",
      "Apartments For Sale",
      "Real Estate for Rent",
    ],

    //Mobile & Tablet
    "Mobile & Tablet": [
      "Mobiles",
      "Tablets",
    ],

    //Furniture & Accessories
    "Furniture & Accessories": [
      "Furniture For Sale",
      "Furniture for Rent",
    ],

    //Food & Nutrition
    "Food & Nutrition": [
      "Food Sale",
      "Nutrition Sale",
    ],

    //Electronic Devices
    "Electronic Devices": [
      "Electronics",
      "Devices For Sale",
    ],

    // testiing
    "Testing": ["Bedspace", "Shared Room", "Studio", "1 Bedroom", "2 Bedrooms"]
  };

  @override
  Widget build(BuildContext context) {
    var entryList = itemCategoryMap.entries.toList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Color(0xFFFBFBFB),

            // Status bar brightness
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          backgroundColor: const Color(0xFFFBFBFB),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const AutoSizeText(
                    "Back",
                    style: TextStyle(
                        color: Color(0xFF007AFF),
                        fontSize: 17.0,
                        fontFamily: "SF-Pro"),
                  ),
                ),
              ),
              const AutoSizeText(
                "New Post",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF-Pro'),
              ),
              const Spacer(),
            ],
          ),
          automaticallyImplyLeading: false,
          shadowColor: const Color(0xFF707070),
          elevation: 0.1,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 23,
              ),
              Padding(
                //20.3
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).devicePixelRatio *
                        (32 / MediaQuery.of(context).devicePixelRatio)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AutoSizeText(
                      "Images of your product: 0/2",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          // left 16.0
                          // right 8
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context)
                                    .devicePixelRatio *
                                (19.7 /
                                    MediaQuery.of(context).devicePixelRatio),
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          (10 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                      right: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          (25 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                                  height:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (80 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                  width:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (80 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: const Color(0xFFE5E5E5))),
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .devicePixelRatio *
                                                  (8 /
                                                      MediaQuery.of(context)
                                                          .devicePixelRatio)),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: SvgPicture.string(
                                              '''<svg xmlns="http://www.w3.org/2000/svg" width="38.763" height="38.763" viewBox="0 0 38.763 38.763">
  <g id="Group_539" data-name="Group 539" transform="translate(-329 -324.631)">
    <g id="Path_2492" data-name="Path 2492" transform="translate(329 324.631)" fill="#fff">
      <path d="M 19.38165473937988 37.26331329345703 C 14.60529518127441 37.26331329345703 10.11481475830078 35.40329360961914 6.737414836883545 32.02589416503906 C 3.360024690628052 28.64849472045898 1.500004768371582 24.15801429748535 1.500004768371582 19.38165473937988 C 1.500004768371582 14.60529518127441 3.360024690628052 10.11481475830078 6.737414836883545 6.737414836883545 C 10.11481475830078 3.360024690628052 14.60529518127441 1.500004768371582 19.38165473937988 1.500004768371582 C 24.15801429748535 1.500004768371582 28.64849472045898 3.360024690628052 32.02589416503906 6.737414836883545 C 35.40329360961914 10.11481475830078 37.26331329345703 14.60529518127441 37.26331329345703 19.38165473937988 C 37.26331329345703 24.15801429748535 35.40329360961914 28.64849472045898 32.02589416503906 32.02589416503906 C 28.64849472045898 35.40329360961914 24.15801429748535 37.26331329345703 19.38165473937988 37.26331329345703 Z" stroke="none"/>
      <path d="M 19.38165473937988 2.999996185302734 C 15.00595474243164 2.999996185302734 10.89216423034668 4.703983306884766 7.798074722290039 7.798074722290039 C 4.703983306884766 10.89216423034668 2.999996185302734 15.00595474243164 2.999996185302734 19.38165473937988 C 2.999996185302734 23.75735473632812 4.703983306884766 27.87114334106445 7.798074722290039 30.96523475646973 C 10.89216423034668 34.0593147277832 15.00595474243164 35.7633056640625 19.38165473937988 35.7633056640625 C 23.75735473632812 35.7633056640625 27.87114334106445 34.0593147277832 30.96523475646973 30.96523475646973 C 34.0593147277832 27.87114334106445 35.7633056640625 23.75735473632812 35.7633056640625 19.38165473937988 C 35.7633056640625 15.00595474243164 34.0593147277832 10.89216423034668 30.96523475646973 7.798074722290039 C 27.87114334106445 4.703983306884766 23.75735473632812 2.999996185302734 19.38165473937988 2.999996185302734 M 19.38165473937988 -3.814697265625e-06 C 30.08584594726562 -3.814697265625e-06 38.7633056640625 8.677465438842773 38.7633056640625 19.38165473937988 C 38.7633056640625 30.08584594726562 30.08584594726562 38.7633056640625 19.38165473937988 38.7633056640625 C 8.677465438842773 38.7633056640625 -3.814697265625e-06 30.08584594726562 -3.814697265625e-06 19.38165473937988 C -3.814697265625e-06 8.677465438842773 8.677465438842773 -3.814697265625e-06 19.38165473937988 -3.814697265625e-06 Z" stroke="none" fill="#00b1ff"/>
    </g>
    <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M14.4,8.341H9.414V3.358A1.108,1.108,0,0,0,8.306,2.25H7.2A1.108,1.108,0,0,0,6.091,3.358V8.341H1.108A1.108,1.108,0,0,0,0,9.449v1.108a1.108,1.108,0,0,0,1.108,1.108H6.091v4.984A1.108,1.108,0,0,0,7.2,17.755H8.306a1.108,1.108,0,0,0,1.108-1.108V11.664H14.4a1.108,1.108,0,0,0,1.108-1.108V9.449A1.108,1.108,0,0,0,14.4,8.341Z" transform="translate(340.629 334.01)" fill="#00b1ff"/>
  </g>
</svg>

''',
                                            ),
                                            //size: MediaQuery.of(context).size.width / 15,
                                          ),
                                        ),
                                        const AutoSizeText(
                                          "Add",
                                          style: TextStyle(
                                            color: Color(0xFF555555),
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                for (var item in imgList)
                                  Container(
                                    //15
                                    margin: EdgeInsets.only(
                                        right: MediaQuery.of(context)
                                                .devicePixelRatio *
                                            (15 /
                                                MediaQuery.of(context)
                                                    .devicePixelRatio)),
                                    //w and h 90
                                    height: MediaQuery.of(context)
                                            .devicePixelRatio *
                                        (90 /
                                            MediaQuery.of(context)
                                                .devicePixelRatio),
                                    width: MediaQuery.of(context)
                                            .devicePixelRatio *
                                        (90 /
                                            MediaQuery.of(context)
                                                .devicePixelRatio),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .devicePixelRatio *
                                                  (10 /
                                                      MediaQuery.of(context)
                                                          .devicePixelRatio),
                                              right: MediaQuery.of(context)
                                                      .devicePixelRatio *
                                                  (10 /
                                                      MediaQuery.of(context)
                                                          .devicePixelRatio)),
                                          height: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (80 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio),
                                          width: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (80 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio),
                                          foregroundDecoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            // border: Border.all(color: Color(0xFFE5E5E5)),
                                            image: DecorationImage(
                                              image:
                                                  NetworkImage(item.toString()),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: SvgPicture.string(
                                            '''<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
  <g id="Group_703" data-name="Group 703" transform="translate(-333 -164.699)">
      <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M13.375,3.375a10,10,0,1,0,10,10A10,10,0,0,0,13.375,3.375Z" transform="translate(329.625 161.324)" fill="#fff"/>
      <path id="Icon_ionic-ios-remove-circle-2" data-name="Icon ionic-ios-remove-circle" d="M13.375,3.375a10,10,0,1,0,10,10A10,10,0,0,0,13.375,3.375Zm4.351,10.769h-8.7a.745.745,0,0,1-.769-.769.737.737,0,0,1,.769-.769h8.7a.769.769,0,0,1,0,1.538Z" transform="translate(329.625 161.324)" fill="#fd473e"/>
  </g>
</svg>

''',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.string(
                            '''<svg id="Q3_icons" data-name="Q3 icons" xmlns="http://www.w3.org/2000/svg" width="10.323" height="18" viewBox="0 0 10.323 18">
  <path id="Path_679" data-name="Path 679" d="M17.031,10.386,9.38,18.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929L12.22,18.854c-3.361-4.431-2.656,4.924,0,0L18.9,12.186a1.222,1.222,0,0,0-.129-1.929,1.35,1.35,0,0,0-1.736.129Z" transform="translate(-8.985 -10.001)" fill="#1eb1fc"/>
</svg>

''',
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SvgPicture.string(
                            '''<svg xmlns="http://www.w3.org/2000/svg" width="10.323" height="18" viewBox="0 0 10.323 18">
  <g id="Q3_icons" data-name="Q3 icons" transform="translate(10.323 18) rotate(180)">
    <path id="Path_679" data-name="Path 679" d="M17.031,10.386,9.38,18.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929L12.22,18.854c-3.361-4.431-2.656,4.924,0,0L18.9,12.186a1.222,1.222,0,0,0-.129-1.929,1.35,1.35,0,0,0-1.736.129Z" transform="translate(-8.985 -10.001)" fill="#1eb1fc"/>
  </g>
</svg>


''',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 23.1,
                    ),
                    TextField(
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintText: "Samsung A9 Pro",
                        filled: true,
                        fillColor: const Color(0xFFF9F9F9),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E5E5),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                              color: Color(0xFFE5E5E5), width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11.8,
                    ),
                    TextField(
                      maxLines: null,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintMaxLines: 10,
                        hintText:
                            "Description: The more you write, the better the chances are at finding…",
                        filled: true,
                        fillColor: const Color(0xFFF9F9F9),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E5E5),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                              color: Color(0xFFE5E5E5), width: 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 11.8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            maxLines: null,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              // prefixIconConstraints:
                              //     BoxConstraints(minWidth: 0, minHeight: 0),
                              // prefixIcon: Padding(
                              //     padding:
                              //         EdgeInsets.only(bottom: 5, left: 5),
                              //     child: Text(" Location: ")),
                              // isDense: true,
                              hintText: "Location: Type or Autolocate",
                              //hintMaxLines: 10,
                              filled: true,
                              fillColor: const Color(0xFFF9F9F9),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFFE5E5E5),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5), width: 1.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).devicePixelRatio *
                              (16 / MediaQuery.of(context).devicePixelRatio),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                  MediaQuery.of(context).devicePixelRatio *
                                      (100 /
                                          MediaQuery.of(context)
                                              .devicePixelRatio),
                                  MediaQuery.of(context).devicePixelRatio *
                                      (40 /
                                          MediaQuery.of(context)
                                              .devicePixelRatio)),
                              splashFactory: InkRipple.splashFactory,
                              shadowColor: Colors.transparent,
                              primary: const Color(0x000000ff),
                              onPrimary: const Color(0xFF007AFF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: const BorderSide(
                                      color: Color(0xFF1EB1FC), width: 0.7)),
                            ),
                            child: const AutoSizeText(
                              "Auto Locate",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF1EB1FC),
                                fontSize: 14,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 11.8,
                    ),
                    TextField(
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(bottom: 3, left: 5),
                          child: Text(" Price: "),
                        ),
                        prefixIconConstraints:
                            const BoxConstraints(minWidth: 0, minHeight: 0),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(bottom: 3, right: 34),
                          child: Text(" AED"),
                        ),
                        suffixIconConstraints:
                            const BoxConstraints(minWidth: 0, minHeight: 0),
                        isDense: true,
                        // prefixText: "Price: ",
                        // prefixStyle: const TextStyle(
                        //   color: Colors.black,
                        // ),
                        // suffixText: "AED",
                        // suffixStyle: const TextStyle(
                        //   color: Colors.black,
                        // ),
                        // labelText: "Price",
                        hintText: "Enter Amount",
                        filled: true,
                        fillColor: const Color(0xFFF9F9F9),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E5E5),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                              color: Color(0xFFE5E5E5), width: 1.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    //22.8
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).devicePixelRatio *
                            (34.5 / MediaQuery.of(context).devicePixelRatio)),
                    child: const AutoSizeText(
                      "Select your item category:",
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    //22.4
                    height: 22.4,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).devicePixelRatio *
                            (34.5 / MediaQuery.of(context).devicePixelRatio)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (addCategoryList.isNotEmpty)
                          Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.start,
                            runSpacing: MediaQuery.of(context)
                                    .devicePixelRatio *
                                (5 / MediaQuery.of(context).devicePixelRatio),
                            spacing: MediaQuery.of(context).devicePixelRatio *
                                (9.8 / MediaQuery.of(context).devicePixelRatio),
                            children: [
                              InkWell(
                                customBorder: const CircleBorder(),
                                onTap: () {
                                  setState(() {
                                    addCategoryList.removeLast();
                                    currentValue.removeLast();
                                  });
                                },
                                child: SimpleShadow(
                                  opacity: 0.16, // Default: 0.5
                                  color: Color(0xFF000000), // Default: Black
                                  offset: Offset(0, 3), // Default: Offset(2, 2)
                                  sigma: 6,
                                  child: SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="58" height="58" viewBox="0 0 58 58">
  
  <g id="Group_612" data-name="Group 612" transform="translate(-27.756 -387.572)">
      <g id="Group_46" data-name="Group 46" transform="translate(-61.297 40.925)">
        <g id="Message" transform="translate(98.053 352.647)">
          <g transform="matrix(1, 0, 0, 1, -9, -6)" filter="url(#Rectangle_2)">
          <g id="Rectangle_2-2" data-name="Rectangle 2" transform="translate(9 6)" fill="#f0f0f0" stroke="#007aff" stroke-width="1">
            <rect width="40" height="40" rx="20" stroke="none"/>
            <rect x="0.5" y="0.5" width="39" height="39" rx="19.5" fill="none"/>
          </g>
          </g>
        </g>
        <g id="Layer_2" data-name="Layer 2" transform="translate(116.463 364.639)">
          <g id="Q3_icons" data-name="Q3 icons" transform="translate(-8.059 -0.991)">
          <path id="Path_679" data-name="Path 679" d="M17.031,10.386,9.38,18.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929l-5.529-5.529H27a1.286,1.286,0,0,0,0-2.572H13.366L18.9,12.186a1.222,1.222,0,0,0-.129-1.929,1.35,1.35,0,0,0-1.736.129Z" transform="translate(-8.985 -10.001)" fill="#007aff"/>
          </g>
        </g>
      </g>
  </g>
</svg>


''',
                                  ),
                                ),
                              ),
                              for (int i = 0; i < addCategoryList.length; i++)
                                //var category in addCategoryList
                                Wrap(
                                  spacing:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (9.8 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                  children: [
                                    Container(
                                      //2.5 - sizedbox changed
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (8.5 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio)),

                                      // width: 87.36,
                                      // height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: (i == 0)
                                            ? const Color(0xFF00B1FF)
                                            : const Color(0xFFDDF3FF),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Wrap(
                                          children: [
                                            AutoSizeText(
                                              '${addCategoryList[i][0]}',
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: (i == 0)
                                                    ? const Color(0xFFFFFFFF)
                                                    : const Color(0xFF555555),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            AutoSizeText(
                                              '${addCategoryList[i].substring(1)}',
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: (i == 0)
                                                    ? const Color(0xFFFFFFFF)
                                                    : const Color(0xFF555555),
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      //top - 12.5 sizedbox changed
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (16.5 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio)),
                                      child: SvgPicture.string(
                                        '''<svg xmlns="http://www.w3.org/2000/svg" width="6.905" height="15" viewBox="0 0 6.905 15">
  <path id="Vector" d="M1.314,0,0,1.762,3.382,7.5,0,13.238,1.314,15,6.905,7.5Z" transform="matrix(1, 0, 0, 1, 0, 0)" fill="#1eb1fc"/>
</svg>
''',
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        if (addCategoryList.isNotEmpty)
                          const SizedBox(height: 24),
                        Wrap(
                          direction: Axis.horizontal,
                          runSpacing: MediaQuery.of(context).devicePixelRatio *
                              (10.0 / MediaQuery.of(context).devicePixelRatio),
                          spacing: MediaQuery.of(context).devicePixelRatio *
                              (10.0 / MediaQuery.of(context).devicePixelRatio),
                          children: buildWrap(entryList),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              //Divider
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).devicePixelRatio *
                        (11.7 / MediaQuery.of(context).devicePixelRatio)),
                child: const Divider(
                  color: Color(0xFFC6C5C9),
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Padding(
                padding: EdgeInsets.only(
                    //13.6
                    // - right - 26.1
                    right: MediaQuery.of(context).devicePixelRatio *
                        (12.3 / MediaQuery.of(context).devicePixelRatio),
                    left: MediaQuery.of(context).devicePixelRatio *
                        (26.5 / MediaQuery.of(context).devicePixelRatio)),
                child: Row(
                  children: [
                    const AutoSizeText(
                      "Barter / Exchange Features:",
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    (isBarter == false)
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).devicePixelRatio *
                                    (8 /
                                        MediaQuery.of(context)
                                            .devicePixelRatio)),
                            child: AutoSizeText(
                              "OFF",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 14,
                              ),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).devicePixelRatio *
                                    (8.0 /
                                        MediaQuery.of(context)
                                            .devicePixelRatio)),
                            child: const AutoSizeText(
                              "ON",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 14,
                              ),
                            ),
                          ),
                    Switch(
                      value: isBarter,
                      onChanged: (value) {
                        setState(() {
                          isBarter = value;
                        });
                      },
                      activeTrackColor: const Color(0xFF00B1FF),
                      inactiveTrackColor: const Color(0xFFFC5D56),
                    ),
                  ],
                ),
              ),
              (isBarter == false)
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                          //right: 13.6,
                          horizontal: MediaQuery.of(context).devicePixelRatio *
                              (26.5 / MediaQuery.of(context).devicePixelRatio)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          AutoSizeText(
                            "- Turn on: List your item to Barter / trade-in & for sale",
                            maxLines: 1,
                            style: TextStyle(
                              color: const Color(0xFF4F4F4F).withOpacity(0.6),
                              fontSize: 14.0,
                            ),
                          ),
                          AutoSizeText(
                            "- Turn off: Only for sale",
                            maxLines: 1,
                            style: TextStyle(
                              color: const Color(0xFF4F4F4F).withOpacity(0.6),
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(
                            height: 34,
                          ),
                        ],
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 19.5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              //right: MediaQuery.of(context).size.width / 23.1,
                              horizontal: MediaQuery.of(context)
                                      .devicePixelRatio *
                                  (27.6 /
                                      MediaQuery.of(context).devicePixelRatio)),
                          child: const AutoSizeText(
                            "- Add what you are interested in to barter to",
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xFF4F4F4F),
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                  MediaQuery.of(context).devicePixelRatio *
                                      (180 /
                                          MediaQuery.of(context)
                                              .devicePixelRatio),
                                  MediaQuery.of(context).devicePixelRatio *
                                      (40 /
                                          MediaQuery.of(context)
                                              .devicePixelRatio)),
                              splashFactory: InkRipple.splashFactory,
                              shadowColor: const Color(0xFFEEEEEE),
                              elevation: 3,
                              primary: const Color(0xFFFC5D56),
                              onPrimary: const Color(0xFFFF0B00),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: const AutoSizeText(
                              "Add Barter Categories",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 11.8,
                        ),
                        // padding 12.7 added initially
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.4),
                          child: Wrap(
                            direction: Axis.horizontal,
                            runSpacing: MediaQuery.of(context)
                                    .devicePixelRatio *
                                (12.8 /
                                    MediaQuery.of(context).devicePixelRatio),
                            spacing: MediaQuery.of(context).devicePixelRatio *
                                (12.2 /
                                    MediaQuery.of(context).devicePixelRatio),
                            children: [
                              for (var barterCategoryItem in barterCategoryList)
                                Stack(
                                  children: [
                                    if (barterCategoryItem == "Mobiles" ||
                                        barterCategoryItem == "Panasonic")
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (4.0 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio),
                                            left: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (3.0 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio)),
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .devicePixelRatio *
                                                  (15 /
                                                      MediaQuery.of(context)
                                                          .devicePixelRatio),
                                              left: MediaQuery.of(context)
                                                      .devicePixelRatio *
                                                  (15 /
                                                      MediaQuery.of(context)
                                                          .devicePixelRatio)),
                                          height: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (35 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFEFEF),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                                color: const Color(0xFFF7817D),
                                                width: 1.5),
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                  color: Color(0xFF1EB1FC)
                                                      .withOpacity(0.16),
                                                  blurRadius: 2,
                                                  spreadRadius: 0.5,
                                                  offset: Offset(0.0, 0.5))
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16.0),
                                                child: AutoSizeText(
                                                  barterCategoryItem.toString(),
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    if (barterCategoryItem == "Mobiles" ||
                                        barterCategoryItem == "Panasonic")
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (2.0 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio),
                                            left: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (1.3 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio)),
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .devicePixelRatio *
                                                  (15 /
                                                      MediaQuery.of(context)
                                                          .devicePixelRatio),
                                              left: MediaQuery.of(context)
                                                      .devicePixelRatio *
                                                  (15 /
                                                      MediaQuery.of(context)
                                                          .devicePixelRatio)),
                                          height: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (35 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFEFEF),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                                color: const Color(0xFFF7817D),
                                                width: 1.5),
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                  color: Color(0xFF1EB1FC)
                                                      .withOpacity(0.16),
                                                  blurRadius: 2,
                                                  spreadRadius: 0.5,
                                                  offset: Offset(0.0, 0.5))
                                            ],
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 16.0),
                                                child: AutoSizeText(
                                                  barterCategoryItem.toString(),
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (15 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio),
                                          left: MediaQuery.of(context)
                                                  .devicePixelRatio *
                                              (15 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio)),
                                      height: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          (35 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFEFEF),
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: const Color(0xFFF7817D),
                                            width: 1.5),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Color(0xFF1EB1FC)
                                                  .withOpacity(0.16),
                                              blurRadius: 2,
                                              spreadRadius: 0.5,
                                              offset: Offset(0.0, 0.5))
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            child: AutoSizeText(
                                              barterCategoryItem.toString(),
                                              maxLines: 1,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SvgPicture.string(
                                      '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <g id="Group_782" data-name="Group 782" transform="translate(-43.771 -321.131)">
      <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
  </g>
</svg>

''',
                                    ),
                                    // size: MediaQuery.of(context).size.width / 15,
                                  ],
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Padding(
                          //12.7
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).devicePixelRatio *
                                  (27.6 /
                                      MediaQuery.of(context).devicePixelRatio)),
                          child: AutoSizeText(
                            "- Describe the item/s you want to barter to:",
                            maxLines: 1,
                            style: TextStyle(
                              color: const Color(0xFF4F4F4F).withOpacity(0.6),
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Padding(
                          //12.7
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context)
                                      .devicePixelRatio *
                                  (32 /
                                      MediaQuery.of(context).devicePixelRatio)),
                          child: TextField(
                            maxLines: null,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              // labelText: "Description",
                              hintMaxLines: 10,
                              hintText:
                                  "Barter Description: The more you write the better chances for AI to give accurate matching. ",
                              filled: true,
                              fillColor: const Color(0xFFF9F9F9),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(
                                  color: Color(0xFFE5E5E5),
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: const BorderSide(
                                    color: Color(0xFFE5E5E5), width: 1.0),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 33,
                        ),
                      ],
                    ),

              //Divider
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).devicePixelRatio *
                        (11.7 / MediaQuery.of(context).devicePixelRatio)),
                child: const Divider(
                  color: Color(0xFFC6C5C9),
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Padding(
                //14.8
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).devicePixelRatio *
                        (27.8 / MediaQuery.of(context).devicePixelRatio),
                    //32
                    right: MediaQuery.of(context).devicePixelRatio *
                        (11 / MediaQuery.of(context).devicePixelRatio)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const AutoSizeText(
                          "Delivery:",
                          maxLines: 1,
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          //15.5
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).devicePixelRatio *
                                  (15.5 /
                                      MediaQuery.of(context).devicePixelRatio)),
                          child: Container(
                            height: MediaQuery.of(context).devicePixelRatio *
                                (35 / MediaQuery.of(context).devicePixelRatio),
                            //240
                            width: MediaQuery.of(context).devicePixelRatio *
                                (236 / MediaQuery.of(context).devicePixelRatio),
                            decoration: BoxDecoration(
                                color: const Color(0xFFF9F9F9),
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: const Color(0xFFE5E5E5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                for (var item in deliveryList)
                                  InkWell(
                                    onTap: () {
                                      if (item == "No") {
                                        setState(() {
                                          delivery = "No";
                                        });
                                      } else if (item == "Free") {
                                        setState(() {
                                          delivery = "Free";
                                        });
                                      } else if (item == "Paid") {
                                        setState(() {
                                          delivery = "Paid";
                                        });
                                      }
                                    },
                                    child: Container(
                                      height: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          (35 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                      //80
                                      width: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          (78 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                      child: Center(
                                        child: AutoSizeText(
                                          item,
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: (delivery == item)
                                                ? const Color(0xFFFFFFFF)
                                                : const Color(0xFF555555),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: (delivery == item)
                                            ? const Color(0xFF00B1FF)
                                            : const Color(0xFFF9F9F9),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 23,
                    // ),
                    // AutoSizeText(
                    //   "Do you offer a free delivery with your item?",
                    //   maxLines: 1,
                    //   style: TextStyle(
                    //     color: const Color(0xFF4F4F4F).withOpacity(0.6),
                    //     fontSize: 12.0,
                    //   ),
                    // ),
                    const SizedBox(
                      height: 42,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                                MediaQuery.of(context).devicePixelRatio *
                                    (273 /
                                        MediaQuery.of(context)
                                            .devicePixelRatio),
                                MediaQuery.of(context).devicePixelRatio *
                                    (40 /
                                        MediaQuery.of(context)
                                            .devicePixelRatio)),
                            splashFactory: InkRipple.splashFactory,
                            shadowColor: Colors.transparent,
                            primary: const Color(0xFF00B1FF),
                            onPrimary: const Color(0xFF008AC7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const AutoSizeText(
                            "Post",
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 20,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 85.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildWrap(List<MapEntry<dynamic, dynamic>> entryList) {
    final children = <Widget>[];
    if (currentValue.isEmpty) {
      for (int i = 0; i < entryList.length; i++) {
        children.add(
          InkWell(
            onTap: () {
              setState(() {
                indexCount = i;
                print("Number of apartments added on a specific date : " +
                    entryList[indexCount].value.length.toString());

                currentValue.add(entryList[i].key.toString());
                addCategoryList.add(entryList[i].key.toString());
                buildWrap(entryList);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF1EB1FC).withOpacity(0.15),
              ),
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio *
                    (8.0 / MediaQuery.of(context).devicePixelRatio)),
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: const TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 14.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '${entryList[i].key.toString()[0]}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: '${entryList[i].key.toString().substring(1)}',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    } else {
      for (int j = 0; j < entryList[indexCount].value.length; j++) {
        children.add(
          InkWell(
            onTap: () {
              print("Number of apartments added on a specific date : " +
                  entryList[indexCount].value.length.toString());
              setState(() {
                currentValue.add(entryList[indexCount].value[j].toString());
                addCategoryList.add(entryList[indexCount].value[j].toString());
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF1EB1FC).withOpacity(0.15),
              ),
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio *
                    (8.0 / MediaQuery.of(context).devicePixelRatio)),
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: const TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 14.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '${entryList[indexCount].value[j].toString()[0]}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text:
                            '${entryList[indexCount].value[j].toString().substring(1)}',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }
    return children;
  }
}
