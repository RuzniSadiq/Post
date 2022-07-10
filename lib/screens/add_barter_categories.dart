import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class AddBarterCategories extends StatefulWidget {
  const AddBarterCategories({Key? key}) : super(key: key);

  @override
  State<AddBarterCategories> createState() => _AddBarterCategoriesState();
}

class _AddBarterCategoriesState extends State<AddBarterCategories> {
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
                    SizedBox(
                      height: 8.0,
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
                      height: 37.3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0, right: 16.9),
                      child: Wrap(
                        direction: Axis.horizontal,
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
    <text id="Mobiles" fill="black" transform="translate(87.383 200.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">Mobiles</tspan></text>
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
    <text id="Apple" fill="black" transform="translate(220.574 204.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">Apple</tspan></text>
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
    <text id="OPPO" fill="black" transform="translate(343.266 200.834)" font-size="17" font-family="ArialMT, Arial"><tspan x="0" y="0">OPPO</tspan></text>
    <g id="Group_796" data-name="Group 796" transform="translate(259.201 -162.798)">
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
                      height: 35.8,
                    ),
                    Row(
                      children: [
                        SvgPicture.string(
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
      <g id="Layer_2" data-name="Layer 2" transform="translate(28.39 168.018)">
        <g id="invisible_box" data-name="invisible box">
          <rect id="Rectangle_98" data-name="Rectangle 98" width="4" height="5" transform="translate(-0.41 0.224)" fill="none"/>
        </g>
      </g>
      <g id="Group_808" data-name="Group 808">
        <g transform="matrix(1, 0, 0, 1, 3.68, 152.03)" filter="url(#Rectangle_51)">
          <g id="Rectangle_51-2" data-name="Rectangle 51" transform="translate(9 6)" fill="#f0f0f0" stroke="#828282" stroke-width="0.2">
            <rect width="35" height="35" rx="17.5" stroke="none"/>
            <rect x="0.1" y="0.1" width="34.8" height="34.8" rx="17.4" fill="none"/>
          </g>
        </g>
        <path id="Path_679" data-name="Path 679" d="M15.69,10.322,9.314,16.751a1.018,1.018,0,0,0,0,1.5L15.69,24.68a1.125,1.125,0,0,0,1.447.107,1.018,1.018,0,0,0,.107-1.607l-4.607-4.607H23.994a1.072,1.072,0,0,0,0-2.143H12.636l4.607-4.607a1.018,1.018,0,0,0-.107-1.607,1.125,1.125,0,0,0-1.447.107Z" transform="translate(13.16 158.026)"/>
      </g>
  </g>
</svg>



''',
                        ),
                        Container(
                          // width: 87.36,
                          // height: 35,
                          margin: EdgeInsets.only(left: 12.8),
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
                                  child: SvgPicture.string(
                                    '''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="23.585" height="25" viewBox="0 0 23.585 25">
  <image id="Rectangle_148" data-name="Rectangle 148" width="23.585" height="25" xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAA1CAYAAAADOrgJAAACx0lEQVRoBWNggAJrVx8vS1fflZbufs/oja3cfK9buvmU6jv5SMPcQxZt5epdTm/HY7PPys33rLlnkAxZnrBw9nbBZuiAibn5biDPI66+a5Ed7R2V8iwqp5KuGNl+ENvMI9CSZM9YuvnegBkE8sTBuz/ojnuXbEfJlxYuPqmkewQpc8fkVtLdE6CAm7/9LIpHzF39ikc9AkpeozFCYb4aTVrIGQlWYo0mLQqT1ZAttY6eOvPs1JY5KHjnwvZn7RkecLyw2H3t9R7PYnz4aqe7GXLKYqBX0jpy/s6zSzNTnl3r9qIavt7tsfdOr5ss2EP08MjhG6+fXZ4eRzUPIAfG9W6v07cnefLRJUbOrO2jiSdgHrrZ49lKF49cnhqL4pF3Z5Y9+3RjF9n43ellKOZd6fE8RnOPHLjz+dnVHl+4xQ+W5j77+/kRxRhkDixGrvV43qe5R0DFK9zCbq9nNPFIt9ezUY+Q0m8ZjRE8eQklj4wmLRLbV6NJazRp0WjwYTRpjSat0aSFf3RyNI+M5pHRPDKaR8juKY62fknpSKGrHS1+R4vf4VL8hqTk02QOke55BDQOnNPQ+6xu4iKq4gHxCPKgNrXYox4hqdRCWjBAbAzEZuQ/O3n2Ak4Mkkc2CzlG7syMIrs2Rx4zBpmDbC6DBdoSDmQH4GLHpufh9ATIgyB5ZL3IFoLYIEeAmhjkYnRPgMxkMHf3dkS2lBi2d1jss6buPpwYJI9sDrpH8PF3VDs/64wzewai8alDlwPPWtF6mdPBZk+iHHWwwfmZtaE6HIP46A7GxgfPj8AmFGm58GxyngdRDlqabwv3BMhD60rsidIHnrGCeYSWNGiODzTXhy00kcXOtLk987PVAnsmwlHnGYiPLI+NfaPX8wh4DpGWHkA2GzT7CpqFxeYYdDFiYwJk3tV2dxVke+jGBs2P45s/J1YOfZ4dAPzrAB65+LlFAAAAAElFTkSuQmCC"/>
</svg>




''',
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
                    SizedBox(
                      height: 18.4,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              // width: 87.36,
                              // height: 35,
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 27,
                                left: 67.36,
                              ),
                              height: MediaQuery.of(context).size.height / 14.3,
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
                                        right:
                                            MediaQuery.of(context).size.width /
                                                15),
                                    child: Row(
                                      children: [
                                        SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(0 22)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>



''',
                                        ),
                                        SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(0 22)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>



''',
                                        ),
                                        SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(0 22)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>



''',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 52.36),
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
                        SizedBox(
                          height: 6.2,
                        ),
                        Stack(
                          children: [
                            Container(
                              // width: 87.36,
                              // height: 35,
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 27,
                                  left: 67.36),
                              height: MediaQuery.of(context).size.height / 14.3,
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
                                        right:
                                            MediaQuery.of(context).size.width /
                                                15),
                                    child: Row(
                                      children: [
                                        SvgPicture.string(
                                          '''<svg xmlns="http://www.w3.org/2000/svg" width="13" height="27" viewBox="0 0 13 27">
  <text id="_" data-name="􀆊" transform="translate(0 22)" fill="#00b1ff" font-size="20" font-family="SegoeUI, Segoe UI"><tspan x="0" y="0">􀆊</tspan></text>
</svg>



''',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 52.36),
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
                        SizedBox(
                          height: 4.4,
                        ),
                        Stack(
                          children: [
                            Container(
                              // width: 87.36,
                              // height: 35,
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 27,
                                  left: 67.36),
                              height: MediaQuery.of(context).size.height / 14.3,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 52.36),
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
                bottom: 30.6,
                right: 33,
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
