class ToDo {
  final String title;
  final bool isCompleted;
  final int id;

  ToDo({
    required this.title,
    required this.isCompleted,
    required this.id,
  });
}

List<ToDo> todos = [
  ToDo(
    id: 1,
    title: "Aaja padhnu parcha",
    isCompleted: false,
  ),
  ToDo(
    id: 2,
    title: "Aaja ghumna janey",
    isCompleted: true,
  ),
  ToDo(
    id: 2,
    title: "Homework gara",
    isCompleted: false,
  ),
];
