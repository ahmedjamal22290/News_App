import 'package:flutter/material.dart';
import 'package:p/custom_widgets/ListViewRequst&Builder.dart';
import 'package:p/custom_widgets/top_list_widget.dart';
import 'package:p/moduls/top_List_Pic.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _modeController;
  bool backgroundMode = true; // true == white mode, false == dark mode

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    _modeController =
        ColorTween(begin: Colors.white, end: Colors.black).animate(_controller);

    // Initially set backgroundMode to match the current darkMode state
    backgroundMode = darkMode;
    if (darkMode) {
      _controller.forward();
    }
  }

  // Callback to update darkMode and change the scaffold color
  void toggleDarkMode() {
    setState(() {
      backgroundMode = !backgroundMode;
      backgroundMode ? _controller.reverse() : _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: darkMode ? Colors.black : Colors.white,
        leading: darkModeWidgetAnnimation(
          onToggle: toggleDarkMode, // Pass the callback here
        ),
        title: RichText(
          text: TextSpan(
            text: "News",
            style: TextStyle(
              fontSize: 25,
              color: darkMode ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Cloud",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: topList.length,
                itemBuilder: (context, index) {
                  return topWIdget(
                    buildingVar: topList[index],
                  );
                },
              ),
            ),
          ),
          newsListViewBuilder(),
        ],
      ),
    );
  }
}

class darkModeWidgetAnnimation extends StatefulWidget {
  final VoidCallback onToggle;

  darkModeWidgetAnnimation({super.key, required this.onToggle});

  @override
  State<darkModeWidgetAnnimation> createState() =>
      _darkModeWidgetAnnimationState();
}

bool darkMode = false;

class _darkModeWidgetAnnimationState extends State<darkModeWidgetAnnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> _rotateAnimation;
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    _colorAnimation =
        ColorTween(begin: Colors.black, end: Colors.white).animate(_controller);

    _rotateAnimation = Tween<double>(begin: 0, end: 720).animate(_controller);

    _controller.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            darkMode = true;
          });
        } else if (status == AnimationStatus.dismissed) {
          setState(() {
            darkMode = false;
          });
        }
        // Notify parent (homePage) about the dark mode change
        widget.onToggle();
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return IconButton(
          onPressed: () {
            darkMode ? _controller.reverse() : _controller.forward();
          },
          icon: Transform.rotate(
            angle: _rotateAnimation.value,
            child: Icon(
              darkMode ? Icons.mode_night : Icons.sunny,
              color: _colorAnimation.value,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
