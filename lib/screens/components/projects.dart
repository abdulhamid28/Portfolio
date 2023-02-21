import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/responsive/responsive.dart';

class ProjectsBox extends StatelessWidget {
  const ProjectsBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: project_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context)
            ? 1
            : Responsive.isLargeMobile(context) || Responsive.isTablet(context)
                ? 2
                : 3,
        childAspectRatio: Responsive.isDesktop(context)
            ? 1.3
            : (Responsive.isMobile(context))
                ? 1.7
                : 1.4,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(defaultPadding),
          color: Color(0XFF242430),
          child: Column(
            children: [
              Expanded(
                flex: Responsive.isDesktop(context) ? 2 : 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: defaultPadding,
                      left: defaultPadding,
                      right: defaultPadding),
                  child: Center(
                    child: Text(
                      '${project_list[index].projectName}',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context)
                              ? 14
                              : Responsive.isTablet(context)
                                  ? 13
                                  : Responsive.isLargeMobile(context)
                                      ? 11
                                      : 8,
                          letterSpacing: 1.1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: Responsive.isDesktop(context) ? 3 : 1,
                child: Padding(
                  padding: EdgeInsets.all(defaultPadding / 2),
                  child: SizedBox(
                    height: double.maxFinite,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        project_list[index].projectDesc,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: Responsive.isDesktop(context)
                              ? 16
                              : Responsive.isTablet(context)
                                  ? 14
                                  : Responsive.isLargeMobile(context)
                                      ? 10
                                      : 12,
                          color: bodyTextColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: defaultPadding / 2,
                      right: defaultPadding / 2,
                      bottom: defaultPadding / 2),
                  child: Row(
                    children: [
                      Text(
                        'TechStack  ',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '{ ',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: double.maxFinite,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Center(
                              child: Text(
                                project_list[index].projectstack,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    letterSpacing: 1.1,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        ' }',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
