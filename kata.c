#include<stdio.h>

int as_for_loop(int numbers[], int length){
  int result = 0;
  for (int i = 0; i < length; i++){
    result += numbers[i];
  }
  return result;
}

int as_while_loop(int numbers[], int length){
  int result = 0;
  int done = 0;
  int i = 0;

  while (i < length){
    result += numbers[i];
    i++;
  }
  return result;
}

int as_recursive(int arr[], int n, int sum){
  if (n < 0){
    return sum;
  } else {
    sum += arr[n];
  }
  return as_recursive(arr, --n, sum);
}

int assert_equals(int expected, int actual){
  if (expected != actual){
    printf("Error:\n\tExpected %d, got %d\n", expected, actual);
    return 1;
  }
  return 0;
}

int main(int argc, char** args){
  int allOk = 0;

  int input[] = {1,2,3,4,5,6};
  int expected = 21;

  int by_for_loop = as_for_loop(input, 6);
  int by_while_loop = as_while_loop(input, 6);
  int by_recursion = as_recursive(input, 5, 0);

  allOk += assert_equals(expected, by_for_loop);
  allOk += assert_equals(expected, by_recursion);
  allOk += assert_equals(expected, by_while_loop);

  return allOk;
}
