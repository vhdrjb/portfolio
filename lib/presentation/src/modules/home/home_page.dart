import 'package:flutter/material.dart';
import '../../base/page/base_page.dart';
import 'bloc/home_bloc.dart';

class HomePage extends BasePage<HomeBloc> {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _PageState();
}

class _PageState extends PageState<HomeBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome',style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }

}
