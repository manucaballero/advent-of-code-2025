import 'package:aoc2025/utils/utils.dart';

int partOne(){

  int counter = 0;
  int dialSize = 100;
  int currentPoint = 50;

  List<String> lines = obtainFileLines('lib/day01/input.txt');

  for(int i = 0; i < lines.length; i++){

    String direction = lines.elementAt(i)[0];

    if(direction == 'L'){

      currentPoint -= int.parse(lines.elementAt(i).substring(1));
    }else{
      
      currentPoint += int.parse(lines.elementAt(i).substring(1));
    }
    
    currentPoint = currentPoint % dialSize;

    if(currentPoint == 0) counter++;

  }

  return counter;
}