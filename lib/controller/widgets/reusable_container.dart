
import '../linker/linker.dart';

class MyContainer extends StatelessWidget {
  String txt;
   MyContainer({super.key,required this.txt});

  @override
  Widget build(BuildContext context) {
    return  Container(

      // width: 100,
        decoration: BoxDecoration(
            color: Colors.lime.shade100,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(txt,style: TextStyle(fontSize:15
    , fontWeight: FontWeight.w500),)

        )
    );
  }
}
