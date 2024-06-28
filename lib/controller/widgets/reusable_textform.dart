

import '../linker/linker.dart';

class MyTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hinttxt;
   MyTextFormField({super.key,required this.controller,required this.hinttxt});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.lime.shade100),
      child: Padding(
        padding: const EdgeInsets.only(left:15),
        child: TextFormField(
          controller:controller,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: hinttxt,
            hintStyle: TextStyle(color: Colors.black),
            //prefixIcon:Icon(Icons.lock),
            //suffixIcon: Icon(Icons.remove_red_eye),
            //labelText: "Enter Pasword",
            //labelStyle: TextStyle(color: Colors.black)
          ),
        ),
      ),
    );
  }
}
