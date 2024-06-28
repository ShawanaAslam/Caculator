

import '../linker/linker.dart';

class MyFloatingButton extends StatelessWidget {
  VoidCallback onpressd;
  IconData icon;
   MyFloatingButton({super.key,
   required this.icon,required this.onpressd});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      onPressed: onpressd,
      child: Icon(icon),
      backgroundColor: Colors.lime.shade100,
    );
  }
}
