import 'package:flutter/material.dart';
class UiHelper{
  static CustomTextField(TextEditingController controller,String text,IconData icondata){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      child: TextField(
        style: TextStyle(color: Colors.black),
        controller: controller,
        decoration: InputDecoration(
            hintStyle: TextStyle(decorationColor: Colors.black),
            hintText: text,
            suffixIcon: Icon(icondata),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            )
        ),
      ),



    );
  }

  static CustomButton(VoidCallback callback,String text){

    return SizedBox(
      height: 50,
      width: 330,
      child: ElevatedButton(onPressed: (){
        callback();
      },style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF0D47A1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                  side: BorderSide(color: Color(0xFF512DA8),)
              ))
      ),
          child: Text(text,style: TextStyle(fontSize: 19,color: Colors.white),)),
    );
  }

  static CustomAlertBox(BuildContext context,String text){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(text),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("ok"))
        ],
      );
    });
  }
}