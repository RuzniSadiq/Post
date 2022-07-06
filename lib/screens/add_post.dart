import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: MediaQuery.of(context).size.width / 12,
                      color: const Color(0xFF007AFF),
                    ),
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
                              icon: Icon(
                                Icons.add,
                                size: MediaQuery.of(context).size.width / 15,
                              )),
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
                        child: Icon(
                          Icons.remove_circle_sharp,
                          color: Colors.red,
                          size: MediaQuery.of(context).size.width / 15,
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
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.red,
                          size: MediaQuery.of(context).size.width / 15,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      size: MediaQuery.of(context).size.width / 12,
                      color: const Color(0xFF007AFF),
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
                  SingleChildScrollView(
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
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: const Color(0xFF1EB1FC),
                          size: MediaQuery.of(context).size.width / 15,
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
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: const Color(0xFF1EB1FC),
                          size: MediaQuery.of(context).size.width / 15,
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
                  Container(
                    // width: 40,
                    // height: 40,
                    height: MediaQuery.of(context).size.width / 9,
                    width: MediaQuery.of(context).size.width / 9,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: const Color(0xFF007AFF),
                        )),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_outlined,
                            color: const Color(0xFF007AFF),
                            size: MediaQuery.of(context).size.width / 16,
                          )),
                    ),
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
                                      top: 10.0,
                                      left: MediaQuery.of(context).size.width /
                                          58),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
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
                                      left: MediaQuery.of(context).size.width /
                                          58),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
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
                                      left: MediaQuery.of(context).size.width /
                                          58),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
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
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 10.0,
                                      left: MediaQuery.of(context).size.width /
                                          58),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFEF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xFFF7817D))),
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
                                      left: MediaQuery.of(context).size.width /
                                          58),
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                  width:
                                      MediaQuery.of(context).size.height / 7.4,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFFEFEF),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xFFF7817D))),
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
                                Icon(
                                  Icons.remove_circle_sharp,
                                  color: Colors.red,
                                  size: MediaQuery.of(context).size.width / 15,
                                )
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
