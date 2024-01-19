
void main() {
  // No. 1 Range

  print(range(1, 10));
  print(range(20, 10));
  
}

range(num startNum,num finishNum){
  List <num> nums = [];

  if (startNum < finishNum) {
    for (startNum; startNum <= finishNum; startNum++) {
    nums.add(startNum);
    }  
  } else if(startNum > finishNum) {
    for (startNum; startNum >= finishNum; startNum--) {
    nums.add(startNum);
    }
  } else {
    nums.add(startNum);
  }
  
  return nums;
}
