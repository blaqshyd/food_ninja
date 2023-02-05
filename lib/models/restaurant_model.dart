import 'package:equatable/equatable.dart';

class Res extends Equatable {
  Res({
    required this.resImage,
    required this.resName,
    required this.resDistance,
    this.index,
  });

  final String? resImage;
  final String? resName;
  final int? resDistance;
  final int? index;

  factory Res.fromJson(Map<String, dynamic> json, int index) => Res(
        resImage: json["resImage"],
        resName: json["resName"],
        resDistance: json["resDistance"],
        index: index,
      );

  Map<String, dynamic> toJson() => {
        "resImage": resImage,
        "resName": resName,
        "resDistance": resDistance,
      };

  @override
  List<Object?> get props => [resName, resImage, resDistance, index];

  @override
  bool get stringify => true;
}
