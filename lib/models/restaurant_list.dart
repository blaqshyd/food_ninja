class ResList {
  String resImage, resName, resDistance;

  ResList({
    required this.resImage,
    required this.resName,
    required this.resDistance,
  });
  // static ResList fromJson(json) => ResList(
  //       resImage: json['resImage'],
  //       resName: json['resName'],
  //       resDistance: json['resDistance'],
  //     );

}

final List<ResList> resListModel = [
  ResList(
    resImage: 'assets/images/restaurant1.png',
    resName: 'Vegan Resto',
    resDistance: '12 mins',
  ),
  ResList(
    resImage: 'assets/images/restaurant4.png',
    resName: 'Healthy Food',
    resDistance: '4 mins',
  ),
  ResList(
    resImage: 'assets/images/restaurant3.png',
    resName: 'Good Food',
    resDistance: '15 mins',
  ),
];
