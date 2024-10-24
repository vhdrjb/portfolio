import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/header/project_name_widget.dart';
import 'package:go_router/go_router.dart';
import '../../../../theme/dimensions.dart';
import '../../../../widget/tab/scrollable_tab_widget.dart';
import '../../../../widget/tab/tab_widget.dart';

class ProjectHeaderWidget extends StatelessWidget {
  final TabController tabController;
  final ProjectEntity project;

  const ProjectHeaderWidget({super.key, required this.project,required this.tabController});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: context.appColorScheme.headerColor,
          border: Border(
              bottom: BorderSide(
                  color: context.appColorScheme.dividerColor, width: 2))),
      child: Column(
        children: [
          Row(
            children: [
              Dimensions.marginHorizontal_32,
              Image(
                image: 'project'.toPngImage,
                height: Dimensions.socialIconSize,
                width: Dimensions.socialIconSize,
                color: context.appColorScheme.secondaryText,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.margin_16),
                      child: ProjectNameWidget(
                        projectName: project.name,
                        companyName: project.collaborateWith?.name,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer()
            ],
          ),
          Row(
            children: [
              Dimensions.marginHorizontal_16,
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 200,
                    child: TabBar(
                      indicatorColor: context.appColorScheme.accentColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      dividerColor: Colors.transparent,
                      dividerHeight: 0,
                      overlayColor:
                          const WidgetStatePropertyAll(Colors.transparent),
                      onTap: (value) {},
                      physics: const BouncingScrollPhysics(),
                      controller: tabController,
                      tabs: [
                        Tab(
                          child: ScrollableTabWidget(
                            label: 'Info',
                            iconPath: 'overview'.toSvg,
                          ),
                        ),
                        Tab(
                          child: ScrollableTabWidget(
                            label: 'Gallery',
                            iconPath: 'application'.toSvg,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer()
            ],
          )
        ],
      ),
    );
  }
}
