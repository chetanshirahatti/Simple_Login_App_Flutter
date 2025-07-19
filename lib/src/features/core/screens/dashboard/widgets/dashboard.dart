import 'package:flutter/material.dart';
import 'package:my_login_app/src/constants/sizes.dart';
import 'package:my_login_app/src/constants/text_strings.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/courses.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/my_courses.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/search.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    //variables
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppbar(),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardpadding),
          child: Column(
            children: [
              //Headings
              Text(tDashboardTitle, style: txtTheme.bodyMedium),
              Text(tDashboardHeading, style: txtTheme.headlineLarge),
              const SizedBox(height: tDashboardpadding),

              //Search box
              searchbar(txtTheme: txtTheme),

              const SizedBox(height: tDashboardpadding),

              //Categories
              CategoriesSection(txtTheme: txtTheme),

              const SizedBox(height: tDashboardpadding),

              //Banners
              // Banner(txtTheme: txtTheme),
              const SizedBox(height: tDashboardpadding),

              // Top courses
              Courses(txtTheme: txtTheme),

              MyCourses(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}
