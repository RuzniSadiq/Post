import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

class AddBarterCategories extends StatefulWidget {
  const AddBarterCategories({Key? key}) : super(key: key);

  @override
  State<AddBarterCategories> createState() => _AddBarterCategoriesState();
}

class _AddBarterCategoriesState extends State<AddBarterCategories> {
  List barterCategoryList = ["Mobiles", "Apple", "OPPO"];

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
                // padding: EdgeInsets.symmetric(
                //     horizontal: MediaQuery.of(context).size.width / 23.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 23.0,
                    ),
                    //padding: EdgeInsets.symmetric(
                    //                           horizontal: MediaQuery.of(context).devicePixelRatio *
                    //                               (20 / MediaQuery.of(context).devicePixelRatio)
                    Center(
                      child: AutoSizeText(
                        "Selecting a category will add all of its sub categories",
                        maxLines: 3,
                        style: TextStyle(
                          color: Color(0xFF5D5C5C),
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Padding(
                      //l - 32, r - 16.9
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).devicePixelRatio *
                              (68.5 / MediaQuery.of(context).devicePixelRatio)),
                      //right: MediaQuery.of(context).size.width / 22),
                      child: Wrap(
                        direction: Axis.horizontal,
                        runSpacing: MediaQuery.of(context).devicePixelRatio *
                            (12 / MediaQuery.of(context).devicePixelRatio),
                        spacing: MediaQuery.of(context).devicePixelRatio *
                            (12.2 / MediaQuery.of(context).devicePixelRatio),
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
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color:
                                                (barterCategoryItem == "Apple")
                                                    ? Color(0xFFFD473E)
                                                    : Color(0xFFF7817D),
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
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color:
                                                (barterCategoryItem == "Apple")
                                                    ? Color(0xFFFD473E)
                                                    : Color(0xFFF7817D),
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
                                  height:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (35 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFEFEF),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: (barterCategoryItem == "Apple")
                                            ? Color(0xFFFD473E)
                                            : Color(0xFFF7817D),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                      height: 23,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          //19.6
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).devicePixelRatio *
                                (7.5 / MediaQuery.of(context).devicePixelRatio),
                          ),
                          child: SimpleShadow(
                            opacity: 0.16, // Default: 0.5
                            color: Color(0xFF1EB1FC), // Default: Black
                            offset: Offset(0, 3), // Default: Offset(2, 2)
                            sigma: 6,
                            child: SvgPicture.string(
                              '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="53" height="53" viewBox="0 0 53 53">
  <defs>
    <filter id="Rectangle_51" x="0" y="0" width="53" height="53" filterUnits="userSpaceOnUse">
      <feOffset dy="3" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="3" result="blur"/>
      <feFlood flood-color="#1eb1fc" flood-opacity="0.161"/>
      <feComposite operator="in" in2="blur"/>
      <feComposite in="SourceGraphic"/>
    </filter>
  </defs>
  <g id="Group_263" data-name="Group 263" transform="translate(-3.685 -152.027)">
    <g transform="matrix(1, 0, 0, 1, 3.68, 152.03)" filter="url(#Rectangle_51)">
      <g id="Rectangle_51-2" data-name="Rectangle 51" transform="translate(9 6)" fill="#f0f0f0" stroke="#828282" stroke-width="0.2">
        <rect width="35" height="35" rx="17.5" stroke="none"/>
        <rect x="0.1" y="0.1" width="34.8" height="34.8" rx="17.4" fill="none"/>
      </g>
    </g>
    <g id="Layer_2" data-name="Layer 2" transform="translate(28.39 168.018)">
      <g id="invisible_box" data-name="invisible box">
        <rect id="Rectangle_98" data-name="Rectangle 98" width="4" height="5" transform="translate(-0.41 0.224)" fill="none"/>
      </g>
      <g id="Q3_icons" data-name="Q3 icons" transform="translate(-6.246 0.009)">
        <path id="Path_679" data-name="Path 679" d="M15.69,10.322,9.314,16.751a1.018,1.018,0,0,0,0,1.5L15.69,24.68a1.125,1.125,0,0,0,1.447.107,1.018,1.018,0,0,0,.107-1.607l-4.607-4.607H23.994a1.072,1.072,0,0,0,0-2.143H12.636l4.607-4.607a1.018,1.018,0,0,0-.107-1.607,1.125,1.125,0,0,0-1.447.107Z" transform="translate(-8.985 -10.001)"/>
      </g>
    </g>
  </g>
</svg>




''',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).devicePixelRatio *
                                  (13.7 /
                                      MediaQuery.of(context).devicePixelRatio),
                              right: MediaQuery.of(context).devicePixelRatio *
                                  (19.6 /
                                      MediaQuery.of(context).devicePixelRatio)),
                          height: MediaQuery.of(context).devicePixelRatio *
                              (34.5 / MediaQuery.of(context).devicePixelRatio),
                          width: MediaQuery.of(context).devicePixelRatio *
                              (266.2 / MediaQuery.of(context).devicePixelRatio),
                          decoration: const BoxDecoration(
                            //borderRadius: BorderRadius.circular(12),
                            //color: const Color(0xFFF0F0F0),
                            border: Border(
                              top: BorderSide(
                                  width: 1.0, color: Color(0xFFC6C5C9)),
                              bottom: BorderSide(
                                  width: 1.0, color: Color(0xFFC6C5C9)),
                            ),
                          ),
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          (11.3 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                                  child: SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="23.585" height="25" viewBox="0 0 23.585 25">
  <image id="Rectangle_148" data-name="Rectangle 148" width="23.585" height="25" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAA1CAYAAAADOrgJAAACx0lEQVRoBWNggAJrVx8vS1fflZbufs/oja3cfK9buvmU6jv5SMPcQxZt5epdTm/HY7PPys33rLlnkAxZnrBw9nbBZuiAibn5biDPI66+a5Ed7R2V8iwqp5KuGNl+ENvMI9CSZM9YuvnegBkE8sTBuz/ojnuXbEfJlxYuPqmkewQpc8fkVtLdE6CAm7/9LIpHzF39ikc9AkpeozFCYb4aTVrIGQlWYo0mLQqT1ZAttY6eOvPs1JY5KHjnwvZn7RkecLyw2H3t9R7PYnz4aqe7GXLKYqBX0jpy/s6zSzNTnl3r9qIavt7tsfdOr5ss2EP08MjhG6+fXZ4eRzUPIAfG9W6v07cnefLRJUbOrO2jiSdgHrrZ49lKF49cnhqL4pF3Z5Y9+3RjF9n43ellKOZd6fE8RnOPHLjz+dnVHl+4xQ+W5j77+/kRxRhkDixGrvV43qe5R0DFK9zCbq9nNPFIt9ezUY+Q0m8ZjRE8eQklj4wmLRLbV6NJazRp0WjwYTRpjSat0aSFf3RyNI+M5pHRPDKaR8juKY62fknpSKGrHS1+R4vf4VL8hqTk02QOke55BDQOnNPQ+6xu4iKq4gHxCPKgNrXYox4hqdRCWjBAbAzEZuQ/O3n2Ak4Mkkc2CzlG7syMIrs2Rx4zBpmDbC6DBdoSDmQH4GLHpufh9ATIgyB5ZL3IFoLYIEeAmhjkYnRPgMxkMHf3dkS2lBi2d1jss6buPpwYJI9sDrpH8PF3VDs/64wzewai8alDlwPPWtF6mdPBZk+iHHWwwfmZtaE6HIP46A7GxgfPj8AmFGm58GxyngdRDlqabwv3BMhD60rsidIHnrGCeYSWNGiODzTXhy00kcXOtLk987PVAnsmwlHnGYiPLI+NfaPX8wh4DpGWHkA2GzT7CpqFxeYYdDFiYwJk3tV2dxVke+jGBs2P45s/J1YOfZ4dAPzrAB65+LlFAAAAAElFTkSuQmCC"/>
</svg>




''',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context)
                                            .devicePixelRatio *
                                        (5.7 /
                                            MediaQuery.of(context)
                                                .devicePixelRatio)),
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
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context)
                                            .devicePixelRatio *
                                        (9.7 /
                                            MediaQuery.of(context)
                                                .devicePixelRatio)),
                                child: SvgPicture.string(
                                  '''<svg id="Layer_2" data-name="Layer 2" xmlns="http://www.w3.org/2000/svg" width="8.932" height="10" viewBox="0 0 8.932 10">
  <g id="invisible_box" data-name="invisible box" transform="translate(0.721)">
      <rect id="Rectangle_96" data-name="Rectangle 96" width="7.491" height="10" fill="none"/>
  </g>
  <g id="Q3_icons" data-name="Q3 icons" transform="translate(0 1.001)">
      <path id="Path_676" data-name="Path 676" d="M14.208,17.828,17.749,14.4a.528.528,0,0,0,0-.8l-3.541-3.428a.645.645,0,0,0-.8-.057.539.539,0,0,0-.249.414.532.532,0,0,0,.189.443L15.9,13.429H9.6a.572.572,0,1,0,0,1.143H15.9l-2.559,2.457a.532.532,0,0,0-.189.443.539.539,0,0,0,.249.414A.645.645,0,0,0,14.208,17.828Z" transform="translate(-9 -10.001)"/>
  </g>
</svg>


''',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context)
                                            .devicePixelRatio *
                                        (9.7 /
                                            MediaQuery.of(context)
                                                .devicePixelRatio)),
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
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context)
                                            .devicePixelRatio *
                                        (4.7 /
                                            MediaQuery.of(context)
                                                .devicePixelRatio)),
                                child: SvgPicture.string(
                                  '''<svg id="Layer_2" data-name="Layer 2" xmlns="http://www.w3.org/2000/svg" width="8.932" height="10" viewBox="0 0 8.932 10">
  <g id="invisible_box" data-name="invisible box" transform="translate(0.721)">
      <rect id="Rectangle_96" data-name="Rectangle 96" width="7.491" height="10" fill="none"/>
  </g>
  <g id="Q3_icons" data-name="Q3 icons" transform="translate(0 1.001)">
      <path id="Path_676" data-name="Path 676" d="M14.208,17.828,17.749,14.4a.528.528,0,0,0,0-.8l-3.541-3.428a.645.645,0,0,0-.8-.057.539.539,0,0,0-.249.414.532.532,0,0,0,.189.443L15.9,13.429H9.6a.572.572,0,1,0,0,1.143H15.9l-2.559,2.457a.532.532,0,0,0-.189.443.539.539,0,0,0,.249.414A.645.645,0,0,0,14.208,17.828Z" transform="translate(-9 -10.001)"/>
  </g>
</svg>


''',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.4,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              // width: 87.36,
                              // height: 35,
                              // left - 67.36
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).devicePixelRatio *
                                      (15 /
                                          MediaQuery.of(context)
                                              .devicePixelRatio),
                                  left:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (83.3 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                  right:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (19.6 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                              height: MediaQuery.of(context).devicePixelRatio *
                                  (35 /
                                      MediaQuery.of(context).devicePixelRatio),
                              width: MediaQuery.of(context).devicePixelRatio *
                                  (311.09 /
                                      MediaQuery.of(context).devicePixelRatio),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFFFFEFEF),
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
                                                  .devicePixelRatio *
                                              (22 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio)),
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
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (4 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio)),
                                        child: SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="10.323" height="18" viewBox="0 0 10.323 18">
  <g id="Q3_icons" data-name="Q3 icons" transform="translate(10.323 18) rotate(180)">
    <path id="Path_679" data-name="Path 679" d="M8.046.385.4,8.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929L3.236,8.853c-3.361-4.431-2.656,4.924,0,0L9.911,2.185A1.222,1.222,0,0,0,9.782.256,1.35,1.35,0,0,0,8.046.385Z" transform="translate(0)" fill="#1eb1fc"/>
  </g>
</svg>




''',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (4 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio)),
                                        child: SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="10.323" height="18" viewBox="0 0 10.323 18">
  <g id="Q3_icons" data-name="Q3 icons" transform="translate(10.323 18) rotate(180)">
    <path id="Path_679" data-name="Path 679" d="M8.046.385.4,8.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929L3.236,8.853c-3.361-4.431-2.656,4.924,0,0L9.911,2.185A1.222,1.222,0,0,0,9.782.256,1.35,1.35,0,0,0,8.046.385Z" transform="translate(0)" fill="#1eb1fc"/>
  </g>
</svg>




''',
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (13.4 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio)),
                                        child: SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="10.323" height="18" viewBox="0 0 10.323 18">
  <g id="Q3_icons" data-name="Q3 icons" transform="translate(10.323 18) rotate(180)">
    <path id="Path_679" data-name="Path 679" d="M8.046.385.4,8.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929L3.236,8.853c-3.361-4.431-2.656,4.924,0,0L9.911,2.185A1.222,1.222,0,0,0,9.782.256,1.35,1.35,0,0,0,8.046.385Z" transform="translate(0)" fill="#1eb1fc"/>
  </g>
</svg>



''',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              //52.36
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (68.3 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                              child: SvgPicture.string(
                                '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <g id="Group_807" data-name="Group 807" transform="translate(-50.712 -452.04)">
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H7.286V3.107a.857.857,0,0,0-.857-.857H5.571a.857.857,0,0,0-.857.857V6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H4.714v3.857a.857.857,0,0,0,.857.857h.857a.857.857,0,0,0,.857-.857V9.536h3.857A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(60.712 459.79)" fill="#fff"/>
      <g id="Group_805" data-name="Group 805" transform="translate(6.941 130.909)">
        <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#00b1ff" stroke="#fff" stroke-width="2"/>
        <path id="Icon_awesome-plus-2" data-name="Icon awesome-plus" d="M11.143,6.964H7.286V3.107a.857.857,0,0,0-.857-.857H5.571a.857.857,0,0,0-.857.857V6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H4.714v3.857a.857.857,0,0,0,.857.857h.857a.857.857,0,0,0,.857-.857V9.536h3.857A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
      </g>
  </g>
</svg>


''',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.2,
                        ),
                        Stack(
                          children: [
                            Container(
                              // width: 87.36,
                              // height: 35,
                              // left - 67.36
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).devicePixelRatio *
                                      (15 /
                                          MediaQuery.of(context)
                                              .devicePixelRatio),
                                  left:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (83.3 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                  right:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (19.6 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                              height: MediaQuery.of(context).devicePixelRatio *
                                  (35 /
                                      MediaQuery.of(context).devicePixelRatio),
                              width: MediaQuery.of(context).devicePixelRatio *
                                  (311.09 /
                                      MediaQuery.of(context).devicePixelRatio),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFFFFEFEF),
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
                                                  .devicePixelRatio *
                                              (22 /
                                                  MediaQuery.of(context)
                                                      .devicePixelRatio)),
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
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.of(context)
                                                    .devicePixelRatio *
                                                (13.4 /
                                                    MediaQuery.of(context)
                                                        .devicePixelRatio)),
                                        child: SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="10.323" height="18" viewBox="0 0 10.323 18">
  <g id="Q3_icons" data-name="Q3 icons" transform="translate(10.323 18) rotate(180)">
    <path id="Path_679" data-name="Path 679" d="M8.046.385.4,8.1a1.222,1.222,0,0,0,0,1.8l7.651,7.715a1.35,1.35,0,0,0,1.736.129,1.222,1.222,0,0,0,.129-1.929L3.236,8.853c-3.361-4.431-2.656,4.924,0,0L9.911,2.185A1.222,1.222,0,0,0,9.782.256,1.35,1.35,0,0,0,8.046.385Z" transform="translate(0)" fill="#1eb1fc"/>
  </g>
</svg>



''',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              //52.36
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (68.3 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                              child: SvgPicture.string(
                                '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <g id="Group_807" data-name="Group 807" transform="translate(-50.712 -452.04)">
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H7.286V3.107a.857.857,0,0,0-.857-.857H5.571a.857.857,0,0,0-.857.857V6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H4.714v3.857a.857.857,0,0,0,.857.857h.857a.857.857,0,0,0,.857-.857V9.536h3.857A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(60.712 459.79)" fill="#fff"/>
      <g id="Group_805" data-name="Group 805" transform="translate(6.941 130.909)">
        <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#00b1ff" stroke="#fff" stroke-width="2"/>
        <path id="Icon_awesome-plus-2" data-name="Icon awesome-plus" d="M11.143,6.964H7.286V3.107a.857.857,0,0,0-.857-.857H5.571a.857.857,0,0,0-.857.857V6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H4.714v3.857a.857.857,0,0,0,.857.857h.857a.857.857,0,0,0,.857-.857V9.536h3.857A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
      </g>
  </g>
</svg>


''',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.2,
                        ),
                        Stack(
                          children: [
                            Container(
                              // width: 87.36,
                              // height: 35,
                              // left - 67.36
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).devicePixelRatio *
                                      (15 /
                                          MediaQuery.of(context)
                                              .devicePixelRatio),
                                  left:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (83.3 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio),
                                  right:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (19.6 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                              height: MediaQuery.of(context).devicePixelRatio *
                                  (35 /
                                      MediaQuery.of(context).devicePixelRatio),
                              width: MediaQuery.of(context).devicePixelRatio *
                                  (311.09 /
                                      MediaQuery.of(context).devicePixelRatio),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFFFFEFEF),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          (22 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
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
                            ),
                            Padding(
                              //52.36
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).devicePixelRatio *
                                          (68.3 /
                                              MediaQuery.of(context)
                                                  .devicePixelRatio)),
                              child: SvgPicture.string(
                                '''<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32">
  <g id="Group_807" data-name="Group 807" transform="translate(-50.712 -452.04)">
      <path id="Icon_awesome-plus" data-name="Icon awesome-plus" d="M11.143,6.964H7.286V3.107a.857.857,0,0,0-.857-.857H5.571a.857.857,0,0,0-.857.857V6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H4.714v3.857a.857.857,0,0,0,.857.857h.857a.857.857,0,0,0,.857-.857V9.536h3.857A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(60.712 459.79)" fill="#fff"/>
      <g id="Group_805" data-name="Group 805" transform="translate(6.941 130.909)">
        <path id="Icon_ionic-ios-remove-circle" data-name="Icon ionic-ios-remove-circle" d="M18.375,3.375a15,15,0,1,0,15,15A15,15,0,0,0,18.375,3.375Z" transform="translate(41.396 318.756)" fill="#00b1ff" stroke="#fff" stroke-width="2"/>
        <path id="Icon_awesome-plus-2" data-name="Icon awesome-plus" d="M11.143,6.964H7.286V3.107a.857.857,0,0,0-.857-.857H5.571a.857.857,0,0,0-.857.857V6.964H.857A.857.857,0,0,0,0,7.821v.857a.857.857,0,0,0,.857.857H4.714v3.857a.857.857,0,0,0,.857.857h.857a.857.857,0,0,0,.857-.857V9.536h3.857A.857.857,0,0,0,12,8.679V7.821A.857.857,0,0,0,11.143,6.964Z" transform="translate(53.771 328.881)" fill="#fff"/>
      </g>
  </g>
</svg>


''',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).devicePixelRatio *
                    (30.6 / MediaQuery.of(context).devicePixelRatio),
                right: MediaQuery.of(context).devicePixelRatio *
                    (33 / MediaQuery.of(context).devicePixelRatio),
                child: SvgPicture.string(
                  '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(0 22)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>



''',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
