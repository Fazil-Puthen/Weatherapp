import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/presentation/home/bloc/homebloc_bloc.dart';

class Textfield extends StatelessWidget {
  final TextEditingController citycontroller;
    final GlobalKey<FormState> formkey;
 Textfield({
    super.key,
    required this.citycontroller,
    required this.formkey,
  });



  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: TextFormField(
        // initialValue: 'Kochi',
        style: const TextStyle(color:white),
        validator: (value) {
          if(value==null||value.isEmpty){
            return 'Enter a city';
          }
          else {
            return null;
          }
        },
        controller: citycontroller,
        cursorColor: Colors.white,
        decoration:  InputDecoration(
          hintText: 'City....',
          hintStyle: TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.6)),
          suffixIcon: InkWell(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                if(formkey.currentState!.validate()){ 
                context.read<HomeblocBloc>().add(FetchWeather(city: citycontroller.text.trim()));
                citycontroller.clear();}},
              child:const  Icon(
                Icons.search,
                size: 40,
              )),
          suffixIconColor: Colors.white,
        ),
      ),
    );
  }
}