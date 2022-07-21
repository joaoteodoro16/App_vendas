import 'package:flutter/material.dart';

class ButtonEdit extends StatelessWidget {
  final String tittle;
  final Function() onPress;

  const ButtonEdit({Key? key, required this.tittle, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(3.5),
          child: TextButton(
            onPressed: onPress,
            child: Text(
              tittle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ));
  }
}
