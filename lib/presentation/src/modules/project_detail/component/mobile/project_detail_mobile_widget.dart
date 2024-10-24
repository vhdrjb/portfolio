import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/web/content/project_gallery_widget.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/header/project_header_widget.dart';

import '../../../../theme/dimensions.dart';
import '../web/content/content_widget.dart';
import '../web/content/meta/meta_data_widget.dart';
import 'content/content_mobile_widget.dart';

class ProjectDetailMobileWidget extends StatefulWidget {
  final ProjectEntity project;

  const ProjectDetailMobileWidget({super.key, required this.project});

  @override
  State<ProjectDetailMobileWidget> createState() => _ProjectDetailWidgetState();
}

class _ProjectDetailWidgetState extends State<ProjectDetailMobileWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectHeaderWidget(
          project: widget.project,
          tabController: _tabController,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: Dimensions.margin_16),
            constraints:  const BoxConstraints(
              minWidth: Dimensions.homeContentWebMinWidth,
              maxWidth: Dimensions.homeContentWebMaxWidth,
            ),
            child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                clipBehavior: Clip.none,
                controller: _tabController, children: [
              ContentMobileWidget(
                project: widget.project,
              ),
              ProjectGalleryWidget(
                  images: widget.project.gallery?.toList())
            ]),
          ),
        ),
      ],
    );
  }
}
