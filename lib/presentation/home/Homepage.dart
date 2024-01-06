import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/presentation/home/bloc/homebloc_bloc.dart';
import 'package:weather/presentation/home/components/elsewidget.dart';
import 'package:weather/presentation/home/components/errorwidget.dart';
import 'package:weather/presentation/home/components/loadingwidget.dart';
import 'package:weather/presentation/home/components/searchtextfield.dart';
import 'package:weather/presentation/home/components/successwidget.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final citycontroller = TextEditingController();
  final formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: screenwidth,
            height: screenheigth,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Textfield(formkey: formkey,citycontroller: citycontroller,),
                  ),
                  const SizedBox(height: 20,),

                  BlocBuilder<HomeblocBloc, HomeblocState>(
                    builder: (context, state) {
                      if(state is loadingstate){
                        return Loadingwidget(screenwidth: screenwidth, screenheigth: screenheigth);
                      }
                     else if(state is Errorstate){
                        return Errorwidget(screenwidth: screenwidth, screenheigth: screenheigth);
                      }
                      else if(state is WeatherFetchedState){
                        final detail=state.weather;
                       return SuccessWidget(screenwidth: screenwidth, detail: detail);
                      }
                      else{
                        return  Elsewidget(screenwidth: screenwidth, screenheigth: screenheigth);
                      }
                    },
                  )
                ],
              ),
            )
            ),
      ),
    );
  }
}




