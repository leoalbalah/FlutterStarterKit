class SharedData {
  int count;

  SharedData(
    {this.count = 0}
  );

  SharedData.fromJson(Map<String, dynamic> json)
      : count = json['count'];

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}
