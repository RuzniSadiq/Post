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
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 23.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              const AutoSizeText(
                "Images of your product: 0/2",
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.string(
                      '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(13 5) rotate(180)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>

''',
                    ),
                    //size: MediaQuery.of(context).size.width / 12,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 10.0,
                        left: MediaQuery.of(context).size.width / 58,
                        right: MediaQuery.of(context).size.width / 58),
                    height: MediaQuery.of(context).size.width / 4.5,
                    width: MediaQuery.of(context).size.width / 4.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xFFE5E5E5))),
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
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 10.0,
                            right: MediaQuery.of(context).size.width / 58),
                        height: MediaQuery.of(context).size.width / 4.5,
                        width: MediaQuery.of(context).size.width / 4.5,
                        foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 10.0,
                            right: MediaQuery.of(context).size.width / 58),
                        height: MediaQuery.of(context).size.width / 4.5,
                        width: MediaQuery.of(context).size.width / 4.5,
                        foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
                        //  size: MediaQuery.of(context).size.width / 15,
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.string(
                      '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(0 22)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>


''',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
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
                    borderSide:
                        const BorderSide(color: Color(0xFFE5E5E5), width: 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
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
                    borderSide:
                        const BorderSide(color: Color(0xFFE5E5E5), width: 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
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
                height: MediaQuery.of(context).size.height / 30,
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
                    borderSide:
                        const BorderSide(color: Color(0xFFE5E5E5), width: 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              const AutoSizeText(
                "Select your item category:",
                maxLines: 1,
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 7,
                          ),
                          Container(
                            // width: 87.36,
                            // height: 35,
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.height / 8.1,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.height / 8.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFF1EB1FC).withOpacity(0.15),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.height / 8.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xFF1EB1FC).withOpacity(0.15),
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
  <g id="Group_808" data-name="Group 808" transform="translate(-89.053 -346.647)">
    <g id="Group_807" data-name="Group 807" transform="translate(98.053 352.647)">
      <g transform="matrix(1, 0, 0, 1, -9, -6)" filter="url(#Rectangle_2)">
        <g id="Rectangle_2-2" data-name="Rectangle 2" transform="translate(9 6)" fill="#f0f0f0" stroke="#007aff" stroke-width="1">
          <rect width="40" height="40" rx="20" stroke="none"/>
          <rect x="0.5" y="0.5" width="39" height="39" rx="19.5" fill="none"/>
        </g>
      </g>
    </g>
    <g id="Layer_2" data-name="Layer 2" transform="translate(116.463 364.639)">
      <g id="invisible_box" data-name="invisible box">
        <rect id="Rectangle_98" data-name="Rectangle 98" width="4" height="5" transform="translate(-0.41 0.224)" fill="rgba(0,0,0,0)"/>
      </g>
      <g id="Q3_icons" data-name="Q3 icons" transform="translate(-8.059 -0.991)">
        <path id="Path_679" data-name="Path 679" d="M17.031,10.386,9.38,18.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929l-5.529-5.529H27a1.286,1.286,0,0,0,0-2.572H13.366L18.9,12.186a1.222,1.222,0,0,0-.129-1.929,1.35,1.35,0,0,0-1.736.129Z" transform="translate(-8.985 -10.001)" fill="#007aff"/>
      </g>
    </g>
  </g>
</svg>
''',
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Divider(color: Colors.black),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
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
                          "No",
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
              (isBarter == false)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          "- Add what you are interested in to barter to",
                          maxLines: 1,
                          style: TextStyle(
                            color: const Color(0xFF4F4F4F).withOpacity(0.6),
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
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
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          runSpacing: 5.0,
                          spacing: 5.0,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          27,
                                      left: MediaQuery.of(context).size.width /
                                          25),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFEF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xFFF7817D),
                                          width: 0.7)),
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
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          27,
                                      left: MediaQuery.of(context).size.width /
                                          25),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFEF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xFFF7817D),
                                          width: 0.7)),
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
                                SvgPicture.string(
                                  '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <g id="Group_782" data-name="Group 782" transform="translate(-43.771 -321.131)">
    <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
    <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
  </g>
</svg>

''',
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          27,
                                      left: MediaQuery.of(context).size.width /
                                          25),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFEF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xFFF7817D),
                                          width: 0.7)),
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
                                SvgPicture.string(
                                  '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <g id="Group_782" data-name="Group 782" transform="translate(-43.771 -321.131)">
    <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#fd473e" stroke="#fff" stroke-width="2"/>
    <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H11.143A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
  </g>
</svg>

''',
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          27,
                                      left: MediaQuery.of(context).size.width /
                                          25),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFEF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xFFF7817D),
                                          width: 0.7)),
                                  child: const Center(
                                    child: AutoSizeText(
                                      "Panasonic",
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17.0,
                                      ),
                                    ),
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
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          27,
                                      left: MediaQuery.of(context).size.width /
                                          25),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFEF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xFFF7817D),
                                          width: 0.7)),
                                  child: const Center(
                                    child: AutoSizeText(
                                      "HTC",
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17.0,
                                      ),
                                    ),
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
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        AutoSizeText(
                          "- Describe the item/s you want to barter to:",
                          maxLines: 1,
                          style: TextStyle(
                            color: const Color(0xFF4F4F4F).withOpacity(0.6),
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        TextField(
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                      ],
                    ),
              const Divider(color: Colors.black),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
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
                          "No",
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
                height: MediaQuery.of(context).size.height / 30,
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
                height: MediaQuery.of(context).size.height / 30,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width / 1.32,
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
                height: MediaQuery.of(context).size.height / 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
