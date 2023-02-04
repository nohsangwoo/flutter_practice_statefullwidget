import 'package:flutter/material.dart';
import 'package:flutter_practice_statefullwidget/widgets/inceaseButton.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void onJustIncreaseNum() {
    // setState메소드 안에포함된 state가 변했을땐 리렌더링해준다.
    // setState메소드안에 포함이 안되면 리렌더링하지 않는다.
    counter = counter + 1;
    // setState(() {});
  }

  void onRerenderAfterIncreaseNum() {
    // setState메소드 안에포함된 state가 변했을땐 리렌더링해준다.
    // setState메소드안에 포함이 안되면 리렌더링하지 않는다.
    setState(() {
      counter = counter + 1;
    });
  }

  void onForcedRerender() {
    setState(() {});
  }

  void onReset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Clcik Count",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  "$counter",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                IncreaseButton(
                  title: "reset",
                  receivedFunction: onReset,
                ),
                IncreaseButton(
                  title: "Force Render",
                  receivedFunction: onForcedRerender,
                ),
                IncreaseButton(
                    title: "increase number",
                    subTitle: "don't render widgets",
                    receivedFunction: onJustIncreaseNum),
                IncreaseButton(
                    title: "increase number",
                    subTitle: "Rerender widgets",
                    receivedFunction: onRerenderAfterIncreaseNum),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
