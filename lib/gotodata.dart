import 'package:flutter/material.dart';
import 'views/veiwdata.dart';
class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.black.withOpacity(0.005) ,
      appBar:AppBar(backgroundColor: Colors.black,title: Center(child: Text('Data department',style: TextStyle(color: Colors.white),))),
      body:

          Center(
            child: MaterialButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(

                  builder: (context) => const MainScreen(),)
            );},child:
            Stack(
      children: [
        Image(image:NetworkImage("https://th.bing.com/th/id/OIP.ZMeUlDDiptJeT2ji0WWe6AHaE7?pid=ImgDet&w=192&h=128&c=7")),
        Container(
            color:Colors.blueGrey.withOpacity(.7),child: Text("Go to data!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Color(0xff070d65)),))

      ],
    ),

      ),
          ),
    );
  }
}
