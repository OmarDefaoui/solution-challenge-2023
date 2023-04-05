import 'package:flutter/material.dart';
import 'package:save_water/diseases/tab_page.dart';
import 'package:save_water/diseases/view_image_region.dart';

import 'diagnosis.dart';
import 'disease_card.dart';

class DiseaseDetectionPage extends TabPage {
  const DiseaseDetectionPage({Key? key, required String pageTitle})
      : super(key: key, pageTitle: pageTitle);

  @override
  _DiseaseDetectionPageState createState() => _DiseaseDetectionPageState();
}

class _DiseaseDetectionPageState extends TabPageState<DiseaseDetectionPage> {
  Diagnosis _diagnosis = Diagnosis();

  void initState() {
    tabListView.add(ViewImageRegion(diagnosis: _diagnosis));
    tabListView.add(DiseaseCard());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
    return Column(
      children: [
        ViewImageRegion(diagnosis: _diagnosis),
        DiseaseCard(),
      ],
    );
    // return ChangeNotifierProvider<Diagnosis>.value(
    //   value: _diagnosis,
    //   child: super.build(context),
    // );
  }
}
