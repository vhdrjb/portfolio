import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/content/project_gallery_widget.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/header/project_header_widget.dart';

import '../../../theme/dimensions.dart';
import 'content/content_widget.dart';
import 'content/meta/meta_data_widget.dart';
import 'header/project_name_widget.dart';

class ProjectDetailWidget extends StatefulWidget {
  final ProjectEntity project;

  const ProjectDetailWidget({super.key, required this.project});

  @override
  State<ProjectDetailWidget> createState() => _ProjectDetailWidgetState();
}

class _ProjectDetailWidgetState extends State<ProjectDetailWidget>
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: Dimensions.margin_16),
                  constraints: const BoxConstraints(
                    minWidth: Dimensions.homeContentWebMinWidth,
                    maxWidth: Dimensions.homeContentWebMaxWidth,
                  ),
                  child: TabBarView(
                      controller: _tabController,
                      children: [
                    ContentWidget(
                      project: widget.project,
                    ),
                    ProjectGalleryWidget(images: widget.project.gallery?.toList())
                  ]),
                ),
              ),
              Dimensions.marginHorizontal_32,
              Flexible(
                child: MetaDataWidget(
                  project: widget.project,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
