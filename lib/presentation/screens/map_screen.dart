// ignore_for_file: prefer_const_constructors

import 'package:fingarprintreset/business_logic/cubit/phone_auth/phone_auth_cubit.dart';
import 'package:fingarprintreset/constnats/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  PhoneAuthCubit phoneAuthCubit = PhoneAuthCubit();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocProvider<PhoneAuthCubit>(
        create: (context) => phoneAuthCubit,
        child: ElevatedButton(
          onPressed: () async {
            await phoneAuthCubit.logOut();
            Navigator.of(context).pushReplacementNamed(loginScreen);
          },
          child: Text(
            'Verify',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            maximumSize: Size(110, 50),
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
