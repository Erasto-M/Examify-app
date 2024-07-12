import 'package:examify/models/addUnit.dart';
import 'package:examify/models/special_exams_model.dart';
import 'package:examify/models/student_registered_units.dart';
import 'package:examify/ui/common/app_colors.dart';
import 'package:examify/ui/common/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stacked/stacked.dart';

import 'lecturer_dashboard_viewmodel.dart';

class LecturerDashboardView extends StackedView<LecturerDashboardViewModel> {
  const LecturerDashboardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LecturerDashboardViewModel viewModel,
    Widget? child,
  ) {
    DateTime now = DateTime.now();
    String greeting = viewModel.getGreeting(now);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '${greeting} , ',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpaceTiny,
                          Text(
                            viewModel.userDetails["userName"] ?? "UserName",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${now.day}-${now.month}-${now.year}  ${now.hour}: ${now.minute} ${now.hour > 12 ? "PM" : "AM"}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        backgroundImage: AssetImage('Assets/Images/man1.jpeg'),
                      ),
                    ],
                  )),
                ),
                verticalSpaceSmall,
                const Text(
                  "Courses you are teaching",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpaceMedium,
                SizedBox(
                  height: 200,
                  child: FutureBuilder(
                    future: viewModel.fetchLecturerUnits(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: SpinKitSpinningLines(
                            color: primaryColor,
                            size: 80,
                          ),
                        );
                      } else {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            AddUnitModel unit = snapshot.data![index];
                            return Card(
                              color: Colors.white,
                              child: ListTile(
                                title: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(unit.unitCode),
                                        verticalSpaceTiny,
                                        // put text in a wrap widegt
                                        Column(
                                          children: [
                                            Text(
                                              unit.unitName,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.arrow_drop_up_outlined),
                                    ),
                                  ],
                                ),
                                subtitle: Center(
                                  child: InkWell(
                                    onTap: () {
                                      viewModel.navigateToViewStudents(
                                        unitCode: unit.unitCode,
                                        unitName: unit.unitName,
                                      );
                                    },
                                    child: Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Assign marks',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Special Exams',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpaceMedium,
                SizedBox(
                  height: 300,
                  child: StreamBuilder(
                      stream: viewModel.mySpecialExamUnits(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: primaryColor,
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                            child: Text(snapshot.error.toString()),
                          );
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: Text('No Specials'),
                          );
                        } else {
                          List<SpecialExamsModel> specials = snapshot.data!;
                          return ListView.builder(
                              itemCount: specials.length,
                              itemBuilder: (context, index) {
                                final units = specials[index];
                                return Card(
                                  color: Colors.white,
                                  child: ListTile(
                                    title: Text(
                                      units.studentName!,
                                      style: const TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(units.studeRegNo!),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              units.unitCode!,
                                              style: const TextStyle(),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(units.unitName!),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Text(
                                          "Reason for Special Exam:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(units.specialExamReason!),
                                      ],
                                    ),
                                    trailing: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: units.specialExamStatus ==
                                                  'Approved'
                                              ? Colors.green
                                              : units.specialExamStatus ==
                                                      'pending'
                                                  ? Colors.orange
                                                  : Colors.red),
                                      child: Text(units.specialExamStatus!),
                                    ),
                                  ),
                                );
                              });
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  LecturerDashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LecturerDashboardViewModel();
  @override
  void onViewModelReady(LecturerDashboardViewModel viewModel) {
    viewModel.getCurrentUserDetails();
    super.onViewModelReady(viewModel);
  }
}
