import 'package:flutter/material.dart';

class IconMenuButton extends StatelessWidget {
  final String tittle;
  final String pathImage;
  final Function() onTap;
  const IconMenuButton({Key? key, required this.tittle, required this.pathImage, required this.onTap, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(pathImage,width: 40,height: 40,),
            const SizedBox(height:7,),
            Text(tittle,textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
