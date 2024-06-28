

import '../linker/linker.dart';

class MyText extends StatelessWidget {
  String txt;
  double font;
  FontWeight fntwt;
   MyText({super.key,required this.fntwt,required this.font, required this.txt});

  @override
  Widget build(BuildContext context) {
    return  Text(txt,style: TextStyle(fontSize: font
    , fontWeight: fntwt
    ));

  }
}
