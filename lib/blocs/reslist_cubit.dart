import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/models/res_group.dart';

class ResListCubit extends Cubit<List<ResGroup>> {
  ResListCubit() : super([]);

  getResList() async {
    final List<ResGroup> resList = [];
    final resListJson =
        jsonDecode(await rootBundle.loadString("assets/json/res.json"));
    for (var element in (resListJson as Iterable)) {
      resList.add(ResGroup.fromJson(element));
    }

    emit(resList);
  }
}
