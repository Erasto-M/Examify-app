import 'package:examify/models/addUnit.dart';
import 'package:examify/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../../models/student_registered_units.dart';
import 'apply_special_exam_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'reason'),
  ],
)
class ApplySpecialExamView extends StackedView<ApplySpecialExamViewModel> {
  const ApplySpecialExamView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ApplySpecialExamViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            viewModel.navigateBack();
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        title: const Text(
          'Apply Special Exam',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(children: [
            const SizedBox(height: 20),

            const Center(
              child: Text(
                'Fill These Details',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Reason for Applying Special Exam',
                hintText: 'Type Reasons',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // semester stage
            const Text(
              'Select Units to apply special exam',
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Choose semester stage'),
                const SizedBox(width: 30),
                DropdownButton<String>(
                  value: viewModel.selectedSemesterStage,
                  items: const <String>[
                    'Y1S1',
                    'Y1S2',
                    'Y2S1',
                    'Y2S2',
                    'Y3S1',
                    'Y3S2',
                    'Y4S1',
                    'Y4S2'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    viewModel.setSelectedSemesterStage(newValue!);
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),

            viewModel.isBusy
                ? const SpinKitSpinningLines(color: primaryColor)
                : SizedBox(
                    height: 330,
                    child: StreamBuilder<List<StudentsRegisteredUnitsModel>>(
                        stream: viewModel.fetchMyUnits(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: SpinKitSpinningLines(
                                color: primaryColor,
                                size: 40,
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return const Center(
                              child: Text("Error fetching units"),
                            );
                          } else if (!snapshot.hasData ||
                              snapshot.data!.isEmpty) {
                            return const Center(
                              child:
                                  Text("No Units found for selected semester"),
                            );
                          } else {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  StudentsRegisteredUnitsModel units =
                                      snapshot.data![index];
                                  return snapshot.data!.isEmpty
                                      ? const Center(
                                          child: Text(
                                              "No Units found for this semester"),
                                        )
                                      : CheckboxListTile(
                                          title: Text(units.unitCode!),
                                          subtitle: Text(units.unitName!),
                                          value: viewModel
                                              .isUnitSelected(units.unitCode!),
                                          onChanged: (value) {
                                            viewModel.updateSelectedUnits(
                                                value!, units);
                                          },
                                        );
                                });
                          }
                        }),
                  ),

            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                "Apply Now!!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Note: You can apply for special exam only once per semester.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Special Exams List',
              style: TextStyle(
                color: primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }

  @override
  ApplySpecialExamViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ApplySpecialExamViewModel();
}
