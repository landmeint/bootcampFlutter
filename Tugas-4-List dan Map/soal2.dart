
void main() {
  // No. 2 Range with Step

  print(rangeWithStep(1, 10,2));
  print(rangeWithStep(11, 23,3));
  print(rangeWithStep(5, 2,1));
  
}

rangeWithStep(num startNum,num finishNum , int step){
  List <num> nums = [];
  var first = startNum;
  if (startNum < finishNum) {
    for (startNum; startNum <= finishNum; startNum++) {
      if (first == startNum ) {
        nums.add(startNum);
        var s = first + step;
        first = s;
      } 
    }  
  } else if(startNum > finishNum) {
    for (startNum; startNum >= finishNum; startNum--) {
      if (first == startNum ) {
        nums.add(startNum);
        var s = first - step;
        first = s;
      } 
    }
  } else {
    nums.add(startNum);
  }
  
  return nums;
}
