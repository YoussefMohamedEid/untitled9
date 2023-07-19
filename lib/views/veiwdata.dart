import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/bloks_cubit.dart';
import 'blocs/bloks_state.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BloksCubit()..getTodo(),
      child: BlocConsumer<BloksCubit,TodoState>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = BloksCubit.get(context);
          return Scaffold(
         appBar:AppBar(backgroundColor: Colors.black,title: Center(child: Text('The Data',style: TextStyle(color: Colors.white),))),

            body: ListView.builder(
              itemBuilder: (context , index) {
                return ListTile(
                  title: Text(cubit.todos[index].title??"--",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  trailing: TextButton(

                    onPressed: () {  },
                    child: Text(
                        cubit.todos[index].completed.toString()),),
                );
              },
              itemCount: cubit.todos.length,

            ),
          );
        },
      ),
    );
  }
}