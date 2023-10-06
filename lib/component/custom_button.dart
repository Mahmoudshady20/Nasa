import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  IconData icon;
  String title;
  Function voidCallBack;
  CustomButton({super.key, required this.icon,required this.title,required this.voidCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      height: MediaQuery.of(context).size.height * .17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [ // B675FD
            Color(0xFF45446F),
            // Color(0xFF332E61),
            Color(0xFF231B55),
          ],
        ),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0
          ),
          onPressed: (){
            voidCallBack;
          },
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title),
          Icon(icon)
        ],
      )
      ),
    );
  }
}
