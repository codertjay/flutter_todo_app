class Task {
  int? id;
  String? title;
  String? note;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  int? color;
  int? remind;
  String? repeat;

  Task({
    this.date,
    this.color,
    this.endTime,
    this.id,
    this.isCompleted,
    this.note,
    this.title,
    this.remind,
    this.repeat,
    this.startTime,
  });

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    endTime = json['endTime'];
    note = json['note'];
    date = json['date'];
    title = json['title'];
    color = json['color'];
    startTime = json['startTime'];
    isCompleted = json['isCompleted'];
    repeat = json['repeat'];
    remind = json['remind'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['endTime'] = this.endTime;
    data['note'] = this.note;
    data['date'] = this.date;
    data['title'] = this.title;
    data['color'] = this.color;
    data['startTime'] = this.startTime;
    data['isCompleted'] = this.isCompleted;
    data['repeat'] = this.repeat;
    data['remind'] = this.remind;
    return data;
  }
}
