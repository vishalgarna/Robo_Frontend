import 'package:flutter/material.dart';

class customButtonWidgets extends StatelessWidget {
  double ? height ;
  double ? width ;
  double ? radius ;
  String  title;
  VoidCallback callback ;
  bool ? loading;
  Color ? colors;
   customButtonWidgets({super.key ,required this.title, required this.callback ,  this.height , this.radius , this.width, this.loading , this.colors});

  @override
  Widget build(BuildContext context) {



    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: callback,
        child: Container(
          height: height ?? 50,
          width: width ?? 150,

          decoration: BoxDecoration(
            color: colors ?? Colors.blue.shade400,
            borderRadius: BorderRadius.circular(0)
          ),
          child:  Center(child: loading == true ? const CircularProgressIndicator() :Text(title , style: const TextStyle(
            color:   Colors.white,
            fontSize: 20
          ),),),
        ),
      ),
    );
  }
}




