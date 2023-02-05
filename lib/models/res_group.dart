import 'package:equatable/equatable.dart';
import 'package:food_ninja/models/restaurant_model.dart';

class ResGroup extends Equatable {
  final String? resGroup;
  final List<Res>? res;

  const ResGroup({required this.resGroup, required this.res});
  factory ResGroup.fromJson(Map<String, dynamic> json) {
    List<Res> res = [];
    int index = 0;

    for (var re in (json['res'] as Iterable)) {
      res.add(Res.fromJson(re, index));
      index++;
      print('{$index}');
    }
    return ResGroup(resGroup: json['resGroup'] as String?, res: json['res']);
  }
  Map<String, dynamic> toJson() => {'resGroup': resGroup, 'res': res};

  @override
  List<Object?> get props => [resGroup, res];

  @override
  bool get stringify => true;
}
