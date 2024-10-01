import 'package:flutter/material.dart';
import 'package:portfolio_v2/data/stub_datasource.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/services/service_widget.dart';

class ServicesComponents extends StatelessWidget {
  const ServicesComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: services.take(3).length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: Dimensions.minServiceWidth,
          childAspectRatio: 1,
          mainAxisSpacing: Dimensions.margin_16,
          crossAxisSpacing: Dimensions.margin_16,
          maxCrossAxisExtent: Dimensions.maxServiceWidth),
      itemBuilder: (context, index) => ServiceWidget(service: services[index]),
    );
  }
}
