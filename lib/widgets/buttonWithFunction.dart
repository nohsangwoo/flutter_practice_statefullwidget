import 'package:flutter/material.dart';

class ButtonWithFunction extends StatelessWidget {
  final String title;
  String subTitle;
  final dynamic receivedFunction;

  ButtonWithFunction({
    super.key,
    required this.title,
    this.subTitle = "",
    required this.receivedFunction,
  });
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber[200],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue[600],
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (subTitle.isNotEmpty)
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[600],
                  ),
                ),
              IconButton(
                iconSize: 40,
                onPressed: receivedFunction,
                icon: const Icon(
                  Icons.add_box_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
