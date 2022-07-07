import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:posts/screens/menu/tab_navigator.dart';

class Menu extends StatefulWidget {
  const Menu();

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String _currentPage = "Page1";
  List<String> pageKeys = ["Page1", "Page2", "Page3", "Page4", "Page5"];
  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "Page1": GlobalKey<NavigatorState>(),
    "Page2": GlobalKey<NavigatorState>(),
    "Page3": GlobalKey<NavigatorState>(),
    "Page4": GlobalKey<NavigatorState>(),
    "Page5": GlobalKey<NavigatorState>(),
  };
  int _selectedIndex = 0;

  void _selectTab(String tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentPage]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != "Page1") {
            _selectTab("Page1", 1);

            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator("Page1"),
          _buildOffstageNavigator("Page2"),
          _buildOffstageNavigator("Page3"),
          _buildOffstageNavigator("Page4"),
          _buildOffstageNavigator("Page5"),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          //type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          iconSize: MediaQuery.of(context).size.width / 15,
          // selectedFontSize: 20,
          // unselectedFontSize: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,

          //selectedItemColor: Colors.blueAccent,
          onTap: (int index) {
            _selectTab(pageKeys[index], index);
          },
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.string(
                '''<svg xmlns="http://www.w3.org/2000/svg" width="23.752" height="25" viewBox="0 0 23.752 25">
  <path id="Path_622" data-name="Path 622" d="M93.039,4.986a4.542,4.542,0,0,1,5.449-.15l.2.15,7.612,6.089a3.749,3.749,0,0,1,1.439,2.662l.012.251V24.125A4.9,4.9,0,0,1,103.1,29h-2.488a2.289,2.289,0,0,1-2.238-2.111l-.012-.176V23.139a.794.794,0,0,0-.675-.776l-.113-.013H94.238a.794.794,0,0,0-.774.675l-.012.114V26.7a1.363,1.363,0,0,1-.025.224l-.013.026-.014.086a2.278,2.278,0,0,1-2.111,1.951L91.127,29H88.889A4.9,4.9,0,0,1,84,24.375V13.988a3.71,3.71,0,0,1,1.25-2.739ZM97.6,6.348a2.82,2.82,0,0,0-3.3-.138l-.189.138-7.6,6.127a1.937,1.937,0,0,0-.761,1.324l-.014.2V24.125a3.136,3.136,0,0,0,2.952,3.125h2.438a.539.539,0,0,0,.549-.449l.026-.225.012-.064V23.139a2.528,2.528,0,0,1,2.338-2.527h3.525a2.529,2.529,0,0,1,2.525,2.339v3.762a.549.549,0,0,0,.438.538h2.324A3.125,3.125,0,0,0,106,24.325l.014-.2V14a2.025,2.025,0,0,0-.625-1.411l-.163-.139Z" transform="translate(-84.001 -4.001)" fill="#958e9d"/>
</svg>

''',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.string(
                '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24.05" viewBox="0 0 24 24.05">
  <path id="Path_619" data-name="Path 619" d="M170.053,4a10.933,10.933,0,0,1,11.053,10.809,10.641,10.641,0,0,1-2.908,7.307l3.551,3.462a.82.82,0,0,1,0,1.177.866.866,0,0,1-1.109.082l-.1-.08-3.593-3.5a11.161,11.161,0,0,1-6.9,2.365A10.933,10.933,0,0,1,159,14.809,10.933,10.933,0,0,1,170.053,4Zm0,1.665a9.249,9.249,0,0,0-9.351,9.144,9.353,9.353,0,0,0,18.7,0A9.249,9.249,0,0,0,170.053,5.665Z" transform="translate(-158.5 -3.5)" stroke="#000" stroke-width="1"/>
</svg>

''',
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.string(
                  '''<svg xmlns="http://www.w3.org/2000/svg" width="37.7" height="37.7" viewBox="0 0 37.7 37.7">
  <g id="Group_806" data-name="Group 806" transform="translate(-188.65 -829.65)">
    <path id="Path_2730" data-name="Path 2730" d="M19.5,38A18.5,18.5,0,1,1,38,19.5,18.5,18.5,0,0,1,19.5,38Zm0-35.767A17.267,17.267,0,1,0,36.767,19.5,17.267,17.267,0,0,0,19.5,2.233Z" transform="translate(188 829)" fill="#958e9d" stroke="#958e9d" stroke-width="0.7"/>
    <circle id="Ellipse_32" data-name="Ellipse 32" cx="14.5" cy="14.5" r="14.5" transform="translate(193 834)" fill="#958e9d"/>
    <path id="Path_2731" data-name="Path 2731" d="M26.639,17.139H18.861V9.361a.861.861,0,1,0-1.723,0v7.777H9.361a.861.861,0,1,0,0,1.723h7.777v7.777a.861.861,0,1,0,1.723,0V18.861h7.777a.861.861,0,0,0,0-1.723Z" transform="translate(189.5 830.5)" fill="#fffe37" stroke="#fffe37" stroke-width="0.7"/>
  </g>
</svg>'''),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.string(
                '''<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 25 25">
  <path id="Path_620" data-name="Path 620" d="M19.572,5a12.5,12.5,0,1,1-5.925,23.56l-.057-.02a.023.023,0,0,1-.012-.016l-.853-.483a.848.848,0,0,0-.484-.053,22.123,22.123,0,0,1-2.714.784l-.169.02A1.413,1.413,0,0,1,7.835,27.2l.024-.2a23.383,23.383,0,0,1,.847-2.755.652.652,0,0,0-.054-.506l-.23-.448A12.5,12.5,0,0,1,19.572,5ZM19.56,6.743l-.351.005A10.756,10.756,0,0,0,9.971,22.484l.226.441a2.411,2.411,0,0,1,.158,1.881,22.161,22.161,0,0,0-.8,2.6l.118-.46.493-.129q.254-.07.51-.148l.515-.163.523-.18a2.624,2.624,0,0,1,1.719.122c.122.059.272.14.462.247l.528.3.023.006-.015,0,.36.18a10.79,10.79,0,0,0,11.532-1.375l.275-.234A10.754,10.754,0,0,0,19.56,6.743ZM14.02,16.074A1.426,1.426,0,1,1,12.593,17.5,1.426,1.426,0,0,1,14.02,16.074Zm5.546,0A1.426,1.426,0,1,1,18.139,17.5,1.426,1.426,0,0,1,19.566,16.074Zm5.546,0A1.426,1.426,0,1,1,23.685,17.5,1.426,1.426,0,0,1,25.112,16.074Z" transform="translate(-7 -5)" fill="#958e9d"/>
</svg>

''',
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.string(
                '''<svg xmlns="http://www.w3.org/2000/svg" width="20" height="25" viewBox="0 0 20 25">
  <path id="Path_623" data-name="Path 623" d="M315.287,20.026a30.854,30.854,0,0,1,5.424,0l.576.049a21.16,21.16,0,0,1,2.341.364c1.962.4,3.388,1.122,4.019,2.452a3.656,3.656,0,0,1,0,3.13c-.633,1.334-2.076,2.057-4,2.438l-.584.121a19.611,19.611,0,0,1-2.351.306,31.407,31.407,0,0,1-4.364.07c-.157,0-.262,0-.355,0l-.18-.007a2.85,2.85,0,0,1-.5-.059,19.235,19.235,0,0,1-2.916-.423l-.319-.067c-1.786-.4-3.108-1.112-3.72-2.377A3.67,3.67,0,0,1,308,24.453a3.6,3.6,0,0,1,.359-1.579c.637-1.279,2.133-2.049,4-2.435A20.891,20.891,0,0,1,315.287,20.026Zm5.267,1.8a29.132,29.132,0,0,0-5.126,0,19.218,19.218,0,0,0-2.7.381,4.04,4.04,0,0,0-2.756,1.461,1.78,1.78,0,0,0-.174.779,1.841,1.841,0,0,0,.174.785c.323.669,1.321,1.169,2.784,1.456l.441.093a19.4,19.4,0,0,0,2.342.311,2.448,2.448,0,0,0,.358.042l.492.008a30.051,30.051,0,0,0,4.178-.065,18.017,18.017,0,0,0,2.7-.394l.281-.06a3.5,3.5,0,0,0,2.466-1.385,1.842,1.842,0,0,0,0-1.575c-.313-.66-1.3-1.158-2.761-1.458a19.411,19.411,0,0,0-2.69-.38ZM318.006,4a6.669,6.669,0,1,1-6.641,6.669A6.655,6.655,0,0,1,318.006,4Zm0,1.81a4.859,4.859,0,1,0,4.839,4.859A4.849,4.849,0,0,0,318.006,5.81Z" transform="translate(-308 -4)" fill="#958e9d"/>
</svg>

''',
              ),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(String tabItem, {bool keepState = false}) {
    if (!keepState) {
      return Visibility(
        visible: _currentPage == tabItem,
        child: TabNavigator(
          navigatorKey: _navigatorKeys[tabItem]!,
          tabItem: tabItem,
        ),
      );
    } else {
      return Offstage(
        offstage: _currentPage != tabItem,
        child: TabNavigator(
          navigatorKey: _navigatorKeys[tabItem]!,
          tabItem: tabItem,
        ),
      );
    }
  }
}
