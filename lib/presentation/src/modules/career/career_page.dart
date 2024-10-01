import 'package:flutter/material.dart';
import 'package:portfolio_v2/data/stub_datasource.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/career/bloc/career_bloc.dart';
import 'package:portfolio_v2/presentation/src/widget/career/career_widget.dart';

class CareerPage extends BasePage<CareerBloc> {
  const CareerPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CareerState();
  }
}

class _CareerState extends PageState<CareerBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        itemBuilder: (context, index) => CareerWidget(career: careers[index],projects: ['sample','testing','coding','mobile application','testing application mobile','test'],),
        separatorBuilder: (_, i) => Divider(
              color: context.appColorScheme.dividerColor,
            ),
        itemCount: careers.length);
  }
}
