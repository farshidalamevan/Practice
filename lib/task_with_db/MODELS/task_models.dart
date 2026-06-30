class TaskModels {
  final int? id;
  final String title;
  final bool isDone;

  TaskModels({this.id, required this.title, required this.isDone});

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'isDone': isDone ? 1 : 0};
  }

  factory TaskModels.formMap(Map<String, dynamic> map) {
    return TaskModels(
      id: map['id'],
      title: map['title'],
      isDone: map['isDone'] == 1,
    );
  }
}
