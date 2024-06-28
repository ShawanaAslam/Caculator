

import '../controller/linker/linker.dart';

class InputData extends StatefulWidget {
   InputData({super.key});

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {

TextEditingController n1=TextEditingController();
TextEditingController n2=TextEditingController();
int add=0;
int mul=0;
int sub=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title:MyText(fntwt: FontWeight.w800, font: 20, txt: 'Calculator'),
        centerTitle: true,
      ),

         body: Padding(
          padding: const EdgeInsets.all(45),
      child:
      SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                SizedBox(height: 70,),
              Center(child: MyTextFormField(controller: n1, hinttxt: "Enter 1st no")),
              SizedBox(height: 10,),

              MyTextFormField(controller: n2, hinttxt: "Enter 2nd no"),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyFloatingButton(icon: Icons.add, onpressd: (){
                    add=int.parse(n1.text) + int.parse(n2.text);
                     setState(() {

                     });
                    print("adding 2 numbers are:$add");
                  }),
                  SizedBox(width: 10,),
                  MyFloatingButton(icon: Icons.minimize, onpressd: ()
                  {
                    sub=int.parse(n1.text) - int.parse(n2.text);
                    setState(() {

                    });
                    print("subtruction of 2 numbers are:$sub");
                  },
                  ),
                  SizedBox(width: 10,),
                  MyFloatingButton(icon: Icons.star_rate_rounded, onpressd:() {
                    {
                      mul = int.parse(n1.text) * int.parse(n2.text);
                      setState(() {

                      });
                      print("multiplication of 2 numbers are:$mul");


                    }
                  }),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  MyContainer(txt: "Addition is =$add",),
                  SizedBox(width: 5,),
                   MyContainer(txt: "Subtraction is =$sub"),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  MyContainer(txt: "Multiplication is =$mul"),


                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  MyFloatingButton(icon:Icons.refresh_sharp, onpressd: (){
                    //Future.delayed(Duration(seconds: 0),(){
                      setState((){
                        n1.clear();
                        n2.clear();
                        add=0;
                        sub=0;
                        mul=0;

                    //  });

                    });

                  })


                ],
              ),


            ],
          ),
      ),
        )
    );
  }
}
