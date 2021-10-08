
class TaskModel {
  String img;
  String taskTitle;
  String time;
  int color;
  List<String> tags;

  TaskModel(
      {required this.img,
        required this.taskTitle,
        required this.tags,
        required this.color,
        required this.time});
}

List<TaskModel> tasks = [
  TaskModel(
      img: 'assets/desktop.svg',
      taskTitle: 'Ui Design',
      tags: ['Work', 'Rasion Project'],
      color: 0xff9B51E0,
      time: '00:42:21'),
  TaskModel(
      img: 'assets/barbell.svg',
      taskTitle: '100x Sit-Up',
      tags: ['Personal', 'Workout'],
      color: 0xffFFA656,
      time: '00:14:20'),
  TaskModel(
      img: 'assets/code-slash 1.svg',
      taskTitle: 'Learn HTML and CSS',
      tags: ['Personal', 'Coding'],
      color: 0xffFD5B71,
      time: '00:18:20'),
  TaskModel(
      img: 'assets/book.svg',
      taskTitle: 'Read 10 pages of a book',
      tags: ['Personal', 'Reading'],
      color: 0xff07E092,
      time: '00:14:20'),
  TaskModel(
      img: 'assets/desktop.svg',
      taskTitle: 'Ui Design',
      tags: ['Work', 'Rasion Project'],
      color: 0xff9B51E0,
      time: '00:42:21'),
  TaskModel(
      img: 'assets/barbell.svg',
      taskTitle: '100x Sit-Up',
      tags: ['Personal', 'Workout'],
      color: 0xffFFA656,
      time: '00:14:20'),
  TaskModel(
      img: 'assets/code-slash 1.svg',
      taskTitle: 'Learn HTML and CSS',
      tags: ['Personal', 'Coding'],
      color: 0xffFD5B71,
      time: '00:18:20'),
  TaskModel(
      img: 'assets/book.svg',
      taskTitle: 'Read 10 pages of a book',
      tags: ['Personal', 'Reading'],
      color: 0xff07E092,
      time: '00:14:20'),

];
