import 'dart:io';

void main() {
  performTasks();
  performSome();
  performSome2();
}

void performSome(){
  for(int i = 0; i< 100000; i++)
    print('yo: $i');
}

void performSome2(){
  for(int i = 0; i< 100000; i++)
    print('yo2: $i');
}

void performTasks()  async {
  task1();
  String data = await task2();
  task3(data);
  task4();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {

  Duration duration = Duration(seconds: 3);
  String result;
  await Future.delayed(duration, (){
    print('=========================');
    result = 'task 2 data';
  });

  await print('Task 2 complete');
  return result;
}

void task3(String data) {
  String result = 'task 3 data';
  print('Task 3 complete with $data');
}

void task4() {
  String result = 'task 4 data';
  print('Task 4 complete');
}