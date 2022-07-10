import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  bool isBarter = false;
  bool isDelivery = false;

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            //11.7
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 30.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 23,
                ),
                Padding(
                  //20.3
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 18.3),
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
                      SizedBox(
                        height: 15,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            // left 16.0
                            // right 8
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 23.0,
                                right: 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, right: 25),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: const Color(0xFFE5E5E5))),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: SvgPicture.string(
                                              '''<svg xmlns="http://www.w3.org/2000/svg" width="26" height="52" viewBox="0 0 26 52">
  <text id="Symbol" transform="translate(13 42)" fill="#00b1ff" font-size="39" font-family="SegoeUI, Segoe UI"><tspan x="-12.587" y="0">􀁌</tspan></text>
</svg>
''',
                                            ),
                                            //size: MediaQuery.of(context).size.width / 15,
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
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    height: 90,
                                    width: 90,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 10.0, right: 10),
                                          height: 80,
                                          width: 80,
                                          foregroundDecoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            // border: Border.all(color: Color(0xFFE5E5E5)),
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/free-photo/milford-sound-new-zealand-travel-destination-concept_53876-42945.jpg?w=2000'),
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
                                  Container(
                                    height: 90,
                                    width: 90,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 10.0, right: 10),
                                          height: 80,
                                          width: 80,
                                          foregroundDecoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            // border: Border.all(color: Color(0xFFE5E5E5)),
                                            image: const DecorationImage(
                                              image: NetworkImage(
                                                  'https://img.freepik.com/free-photo/milford-sound-new-zealand-travel-destination-concept_53876-42945.jpg?w=2000'),
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
                              '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(13 5) rotate(180)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>

''',
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SvgPicture.string(
                              '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(13 5) rotate(180)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>

''',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23.1,
                      ),
                      TextField(
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          labelText: "Name",
                          hintText: "Product Name",
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
                      SizedBox(
                        height: 11.8,
                      ),
                      TextField(
                        maxLines: null,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          labelText: "Description",
                          hintText: "Product Description",
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
                      SizedBox(
                        height: 11.8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Location",
                                hintText: "Type or Autolocate",
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
                            width: MediaQuery.of(context).size.height / 30,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
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
                      SizedBox(
                        height: 11.8,
                      ),
                      TextField(
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixText: "Price ",
                          prefixStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          suffixText: "AED",
                          suffixStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          labelText: "Price",
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
                SizedBox(
                  height: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.8),
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
                    SizedBox(
                      height: 22.4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.8),
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 62.6, top: 8.0),
                            width: 279.81,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // width: 87.36,
                                    // height: 35,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width: MediaQuery.of(context).size.height /
                                        8.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color(0xFF00B1FF),
                                    ),
                                    child: const Center(
                                      child: AutoSizeText(
                                        "Mobiles",
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 9.8),
                                    child: SvgPicture.string(
                                      '''<svg xmlns="http://www.w3.org/2000/svg" width="6.905" height="15" viewBox="0 0 6.905 15">
  <path id="Vector" d="M1.314,0,0,1.762,3.382,7.5,0,13.238,1.314,15,6.905,7.5Z" transform="matrix(1, 0, 0, 1, 0, 0)" fill="#1eb1fc"/>
</svg>
''',
                                    ),
                                  ),
                                  Container(
                                    // width: 87.36,
                                    // height: 35,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width: MediaQuery.of(context).size.height /
                                        8.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color(0xFF1EB1FC)
                                          .withOpacity(0.15),
                                    ),
                                    child: const Center(
                                      child: AutoSizeText(
                                        "Samsung",
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Color(0xFF555555),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 9.8),
                                    child: SvgPicture.string(
                                      '''<svg xmlns="http://www.w3.org/2000/svg" width="6.905" height="15" viewBox="0 0 6.905 15">
  <path id="Vector" d="M1.314,0,0,1.762,3.382,7.5,0,13.238,1.314,15,6.905,7.5Z" transform="matrix(1, 0, 0, 1, 0, 0)" fill="#1eb1fc"/>
</svg>
''',
                                    ),
                                  ),
                                  Container(
                                    // width: 87.36,
                                    // height: 35,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    width: MediaQuery.of(context).size.height /
                                        8.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: const Color(0xFF1EB1FC)
                                          .withOpacity(0.15),
                                    ),
                                    child: const Center(
                                      child: AutoSizeText(
                                        "A9 Pro",
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Color(0xFF555555),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SvgPicture.string(
                            '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="58" height="58" viewBox="0 0 58 58">
  <defs>
      <filter id="Rectangle_2" x="0" y="0" width="58" height="58" filterUnits="userSpaceOnUse">
        <feOffset dy="3" input="SourceAlpha"/>
        <feGaussianBlur stdDeviation="3" result="blur"/>
        <feFlood flood-opacity="0.161"/>
        <feComposite operator="in" in2="blur"/>
        <feComposite in="SourceGraphic"/>
      </filter>
  </defs>
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
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 33,
                ),
                const Divider(color: Colors.black),
                SizedBox(
                  height: 39.5,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: 13.6,
                      left: MediaQuery.of(context).size.width / 23.1),
                  child: Row(
                    children: [
                      const AutoSizeText(
                        "Barter/Exchange Features:",
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      (isBarter == false)
                          ? const AutoSizeText(
                              "OFF",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 14,
                              ),
                            )
                          : const AutoSizeText(
                              "Yes",
                              maxLines: 1,
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 14,
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
                        padding: EdgeInsets.only(
                            right: 13.6,
                            left: MediaQuery.of(context).size.width / 23.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
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
                            SizedBox(
                              height: 34,
                            ),
                          ],
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 19.5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 13.6,
                                left: MediaQuery.of(context).size.width / 23.1),
                            child: AutoSizeText(
                              "- Add what you are interested in to barter to",
                              maxLines: 1,
                              style: TextStyle(
                                color: const Color(0xFF4F4F4F).withOpacity(0.6),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  splashFactory: InkRipple.splashFactory,
                                  shadowColor: Colors.transparent,
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
                                )),
                          ),
                          SizedBox(
                            height: 11.8,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.7),
                            child: Wrap(
                              direction: Axis.horizontal,
                              runSpacing: 5.0,
                              spacing: 5.0,
                              children: [
                                SvgPicture.string(
                                  '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="119.588" height="63.5" viewBox="0 0 119.588 63.5">
  <defs>
    <filter id="Rectangle_51" x="16" y="17.5" width="103.588" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur"/>
      <feComposite in="SourceGraphic"/>
    </filter>
    <filter id="Rectangle_51-2" x="14.281" y="15.5" width="103.588" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur-2"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur-2"/>
      <feComposite in="SourceGraphic"/>
    </filter>
    <filter id="Rectangle_51-3" x="13" y="13.5" width="103.588" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur-3"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur-3"/>
      <feComposite in="SourceGraphic"/>
    </filter>
  </defs>
  <g id="Group_794" data-name="Group 794" transform="translate(-53.589 -158.334)">
    <g id="Group_790" data-name="Group 790" transform="translate(14.366 63.46)">
      <g transform="matrix(1, 0, 0, 1, 39.22, 94.87)" filter="url(#Rectangle_51)">
        <g id="Rectangle_51-4" data-name="Rectangle 51" transform="translate(19 20)" fill="none" stroke="#f7817d" stroke-width="0.7">
          <rect width="97.588" height="40" rx="12" stroke="none"/>
          <rect x="0.35" y="0.35" width="96.888" height="39.3" rx="11.65" fill="none"/>
        </g>
      </g>
    </g>
    <g id="Group_789" data-name="Group 789" transform="translate(-114.719 -6.5)">
      <g id="Group_788" data-name="Group 788" transform="translate(127.366 67.96)">
        <g transform="matrix(1, 0, 0, 1, 40.94, 96.87)" filter="url(#Rectangle_51-2)">
          <g id="Rectangle_51-5" data-name="Rectangle 51" transform="translate(17.28 18)" fill="none" stroke="#f7817d" stroke-width="0.7">
            <rect width="97.588" height="40" rx="12" stroke="none"/>
            <rect x="0.35" y="0.35" width="96.888" height="39.3" rx="11.65" fill="none"/>
          </g>
        </g>
      </g>
    </g>
    <g id="Group_711" data-name="Group 711" transform="translate(11.366 59.46)">
      <g transform="matrix(1, 0, 0, 1, 42.22, 98.87)" filter="url(#Rectangle_51-3)">
        <g id="Rectangle_51-6" data-name="Rectangle 51" transform="translate(16 16)" fill="#ffefef" stroke="#f7817d" stroke-width="0.7">
          <rect width="97.588" height="40" rx="12" stroke="none"/>
          <rect x="0.35" y="0.35" width="96.888" height="39.3" rx="11.65" fill="none"/>
        </g>
      </g>
    </g>
    <text id="Mobiles" fill= "black" transform="translate(87.383 200.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">Mobiles</tspan></text>
    <g id="Group_782" data-name="Group 782" transform="translate(9.818 -162.798)">
      <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
    </g>
  </g>
</svg>

''',
                                ),
                                SvgPicture.string(
                                  '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="116.588" height="59.5" viewBox="0 0 116.588 59.5">
  <defs>
    <filter id="Rectangle_51" x="13" y="13.5" width="103.588" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur"/>
      <feComposite in="SourceGraphic"/>
    </filter>
  </defs>
  <g id="Group_793" data-name="Group 793" transform="translate(-178.781 -162.334)">
    <g id="Group_791" data-name="Group 791" transform="translate(136.558 63.46)">
      <g transform="matrix(1, 0, 0, 1, 42.22, 98.87)" filter="url(#Rectangle_51)">
        <g id="Rectangle_51-2" data-name="Rectangle 51" transform="translate(16 16)" fill="#ffefef">
          <path d="M 85.58837890625 39.65000152587891 L 12.00000190734863 39.65000152587891 C 8.888164520263672 39.65000152587891 5.962602138519287 38.43818664550781 3.762202024459839 36.23780059814453 C 1.561814427375793 34.03739929199219 0.3500019609928131 31.11183738708496 0.3500019609928131 28 L 0.3500019609928131 12 C 0.3500019609928131 8.888175010681152 1.561814427375793 5.962600231170654 3.762202024459839 3.762212514877319 C 5.962602138519287 1.561812520027161 8.888176918029785 0.3499999940395355 12.00000190734863 0.3499999940395355 L 85.58837890625 0.3499999940395355 C 88.70020294189453 0.3499999940395355 91.62577819824219 1.561812520027161 93.82617950439453 3.762212514877319 C 96.02656555175781 5.962600231170654 97.23838043212891 8.888175010681152 97.23838043212891 12 L 97.23838043212891 28 C 97.23838043212891 31.11183738708496 96.02656555175781 34.03739929199219 93.82617950439453 36.23780059814453 C 91.62577819824219 38.43818664550781 88.70021820068359 39.65000152587891 85.58837890625 39.65000152587891 Z" stroke="none"/>
          <path d="M 12 0.7000007629394531 C 8.981666564941406 0.7000007629394531 6.143974304199219 1.875400543212891 4.009689331054688 4.009689331054688 C 1.875404357910156 6.143974304199219 0.7000045776367188 8.981662750244141 0.7000045776367188 12 L 0.7000045776367188 28 C 0.7000045776367188 31.01833724975586 1.875404357910156 33.85601043701172 4.009689331054688 35.99029922485352 C 6.143974304199219 38.12459945678711 8.981666564941406 39.29999923706055 12 39.29999923706055 L 85.58837890625 39.29999923706055 C 88.60671234130859 39.29999923706055 91.44440460205078 38.12459945678711 93.57868957519531 35.99029922485352 C 95.71297454833984 33.85601043701172 96.88837432861328 31.01833724975586 96.88837432861328 28 L 96.88837432861328 12 C 96.88837432861328 8.981662750244141 95.71297454833984 6.143974304199219 93.57868957519531 4.009689331054688 C 91.44440460205078 1.875400543212891 88.60671234130859 0.7000007629394531 85.58837890625 0.7000007629394531 L 12 0.7000007629394531 M 12 0 L 85.58837890625 0 C 92.21580505371094 0 97.58837890625 5.372573852539062 97.58837890625 12 L 97.58837890625 28 C 97.58837890625 34.62741088867188 92.21580505371094 40 85.58837890625 40 L 12 40 C 5.372573852539062 40 0 34.62741088867188 0 28 L 0 12 C 0 5.372573852539062 5.372573852539062 0 12 0 Z" stroke="none" fill="#f7817d"/>
        </g>
      </g>
    </g>
    <text id="Apple" fill= "black" transform="translate(220.574 204.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">Apple</tspan></text>
    <g id="Group_792" data-name="Group 792" transform="translate(135.01 -158.798)">
      <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
    </g>
  </g>
</svg>

''',
                                ),
                                SvgPicture.string(
                                  '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="116.588" height="59.5" viewBox="0 0 116.588 59.5">
  <defs>
    <filter id="Rectangle_51" x="13" y="13.5" width="103.588" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur"/>
      <feComposite in="SourceGraphic"/>
    </filter>
  </defs>
  <g id="Group_797" data-name="Group 797" transform="translate(-302.972 -158.334)">
    <g id="Group_795" data-name="Group 795" transform="translate(260.749 59.46)">
      <g transform="matrix(1, 0, 0, 1, 42.22, 98.87)" filter="url(#Rectangle_51)">
        <g id="Rectangle_51-2" data-name="Rectangle 51" transform="translate(16 16)" fill="#ffefef" stroke="#f7817d" stroke-width="0.7">
          <rect width="97.588" height="40" rx="12" stroke="none"/>
          <rect x="0.35" y="0.35" width="96.888" height="39.3" rx="11.65" fill="none"/>
        </g>
      </g>
    </g>
    <text id="OPPO" fill= "black" transform="translate(343.266 200.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">OPPO</tspan></text>
    <g id="Group_796" data-name="Group 796" transform="translate(259.201 -162.798)">
      <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
    </g>
  </g>
</svg>


''',
                                ),
                                SvgPicture.string(
                                  '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="133.013" height="63.5" viewBox="0 0 133.013 63.5">
  <defs>
    <filter id="Rectangle_51" x="16" y="17.5" width="117.013" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur"/>
      <feComposite in="SourceGraphic"/>
    </filter>
    <filter id="Rectangle_51-2" x="14.281" y="15.5" width="117.013" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur-2"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur-2"/>
      <feComposite in="SourceGraphic"/>
    </filter>
    <filter id="Rectangle_51-3" x="13" y="13.5" width="117.013" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur-3"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur-3"/>
      <feComposite in="SourceGraphic"/>
    </filter>
  </defs>
  <g id="Group_794" data-name="Group 794" transform="translate(-53.589 -158.334)">
    <g id="Group_790" data-name="Group 790" transform="translate(72.589 178.334)">
      <g transform="matrix(1, 0, 0, 1, -19, -20)" filter="url(#Rectangle_51)">
        <g id="Rectangle_51-4" data-name="Rectangle 51" transform="translate(19 20)" fill="none" stroke="#f7817d" stroke-width="0.7">
          <rect width="111.013" height="40" rx="12" stroke="none"/>
          <rect x="0.35" y="0.35" width="110.313" height="39.3" rx="11.65" fill="none"/>
        </g>
      </g>
    </g>
    <g id="Group_789" data-name="Group 789" transform="translate(70.87 176.334)">
      <g id="Group_788" data-name="Group 788" transform="translate(0)">
        <g transform="matrix(1, 0, 0, 1, -17.28, -18)" filter="url(#Rectangle_51-2)">
          <g id="Rectangle_51-5" data-name="Rectangle 51" transform="translate(17.28 18)" fill="none" stroke="#f7817d" stroke-width="0.7">
            <rect width="111.013" height="40" rx="12" stroke="none"/>
            <rect x="0.35" y="0.35" width="110.313" height="39.3" rx="11.65" fill="none"/>
          </g>
        </g>
      </g>
    </g>
    <g id="Group_711" data-name="Group 711" transform="translate(69.589 174.334)">
      <g transform="matrix(1, 0, 0, 1, -16, -16)" filter="url(#Rectangle_51-3)">
        <g id="Rectangle_51-6" data-name="Rectangle 51" transform="translate(16 16)" fill="#ffefef" stroke="#f7817d" stroke-width="0.7">
          <rect width="111.013" height="40" rx="12" stroke="none"/>
          <rect x="0.35" y="0.35" width="110.313" height="39.3" rx="11.65" fill="none"/>
        </g>
      </g>
    </g>
    <text id="Panasonic" fill= "black" transform="translate(84.096 200.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">Panasonic</tspan></text>
    <g id="Group_782" data-name="Group 782" transform="translate(9.818 -162.798)">
      <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
    </g>
  </g>
</svg>



''',
                                ),
                                SvgPicture.string(
                                  '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="89.845" height="59.5" viewBox="0 0 89.845 59.5">
  <defs>
    <filter id="Rectangle_51" x="13" y="13.5" width="76.845" height="46" filterUnits="userSpaceOnUse">
      <feOffset dy="0.5" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="1" result="blur"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur"/>
      <feComposite in="SourceGraphic"/>
    </filter>
  </defs>
  <g id="Group_793" data-name="Group 793" transform="translate(-178.781 -162.334)">
    <g id="Group_791" data-name="Group 791" transform="translate(136.558 63.46)">
      <g transform="matrix(1, 0, 0, 1, 42.22, 98.87)" filter="url(#Rectangle_51)">
        <g id="Rectangle_51-2" data-name="Rectangle 51" transform="translate(16 16)" fill="#ffefef">
          <path d="M 62.13380813598633 39.65000152587891 L 8.711528778076172 39.65000152587891 C 4.100968360900879 39.65000152587891 0.3499984443187714 34.423828125 0.3499984443187714 28 L 0.3499984443187714 12 C 0.3499984443187714 5.576169967651367 4.100968360900879 0.3499999940395355 8.711528778076172 0.3499999940395355 L 62.13380813598633 0.3499999940395355 C 66.74436950683594 0.3499999940395355 70.49533843994141 5.576169967651367 70.49533843994141 12 L 70.49533843994141 28 C 70.49533843994141 34.423828125 66.74436950683594 39.65000152587891 62.13380813598633 39.65000152587891 Z" stroke="none"/>
          <path d="M 8.711528778076172 0.7000007629394531 C 6.614700317382812 0.7000007629394531 4.628219604492188 1.845661163330078 3.118011474609375 3.925949096679688 C 1.558731079101562 6.073841094970703 0.6999969482421875 8.941259384155273 0.6999969482421875 12 L 0.6999969482421875 28 C 0.6999969482421875 31.05873870849609 1.558731079101562 33.9261589050293 3.118011474609375 36.07405090332031 C 4.628219604492188 38.15433883666992 6.614700317382812 39.29999923706055 8.711528778076172 39.29999923706055 L 62.13380813598633 39.29999923706055 C 64.23062896728516 39.29999923706055 66.21710968017578 38.15433120727539 67.72731781005859 36.07405090332031 C 69.28659820556641 33.9261589050293 70.14533996582031 31.05873870849609 70.14533996582031 28 L 70.14533996582031 12 C 70.14533996582031 8.941259384155273 69.28659820556641 6.073841094970703 67.72731781005859 3.925949096679688 C 66.21710968017578 1.845668792724609 64.23062896728516 0.7000007629394531 62.13380813598633 0.7000007629394531 L 8.711528778076172 0.7000007629394531 M 8.711528778076172 0 L 62.13380813598633 0 C 66.94504547119141 0 70.8453369140625 5.372581481933594 70.8453369140625 12 L 70.8453369140625 28 C 70.8453369140625 34.62741851806641 66.94504547119141 40 62.13380813598633 40 L 8.711528778076172 40 C 3.900276184082031 40 0 34.62741851806641 0 28 L 0 12 C 0 5.372581481933594 3.900276184082031 0 8.711528778076172 0 Z" stroke="none" fill="#f7817d"/>
        </g>
      </g>
    </g>
    <text id="HTC" fill="black" transform="translate(212.703 204.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">HTC</tspan></text>
    <g id="Group_792" data-name="Group 792" transform="translate(135.01 -158.798)">
      <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
    </g>
  </g>
</svg>




''',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.7),
                            child: AutoSizeText(
                              "- Describe the item/s you want to barter to:",
                              maxLines: 1,
                              style: TextStyle(
                                color: const Color(0xFF4F4F4F).withOpacity(0.6),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.7),
                            child: TextField(
                              maxLines: null,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "Description",
                                hintText: "Barter Description",
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
                            height: 33,
                          ),
                        ],
                      ),
                const Divider(color: Colors.black),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 33,
                      ),
                      Row(
                        children: [
                          const AutoSizeText(
                            "Include Free Delivery?",
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          (isDelivery == false)
                              ? const AutoSizeText(
                                  "NO",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Color(0xFF4F4F4F),
                                    fontSize: 14,
                                  ),
                                )
                              : const AutoSizeText(
                                  "Yes",
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Color(0xFF4F4F4F),
                                    fontSize: 14,
                                  ),
                                ),
                          Switch(
                            value: isDelivery,
                            onChanged: (value) {
                              setState(() {
                                isDelivery = value;
                              });
                            },
                            activeTrackColor: const Color(0xFF00B1FF),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      AutoSizeText(
                        "Do you offer a free delivery with your item?",
                        maxLines: 1,
                        style: TextStyle(
                          color: const Color(0xFF4F4F4F).withOpacity(0.6),
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width / 1.32,
                                  MediaQuery.of(context).size.width / 9),
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
                                fontSize: 15,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 66.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
