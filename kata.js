function list(){
    return [1,2,3,4,5,6];
}
function asForLoop(numbers){
    result = 0;
    for (i = 0; i < numbers.length; i++){
        result += numbers[i];
    }
    return result;
}

function asWhileLoop(numbers){
    result = 0;
    while (numbers.length > 0){
        result += numbers.pop();
    }
    return result;
}

function asRecursive(numbers, sum=0){
    if (numbers.length ==0) return sum;
    sum += numbers.pop();
    return asRecursive(numbers, sum);
}

exit_code = 0;

function runTest(label, result) {
    const correctAnswer = 21;
    console.log(label, result);
    if (result != correctAnswer){
        exit_code += 1;
    }
}


runTest("asForLoop:", asForLoop(list()));
runTest("asWhileLoop:", asWhileLoop(list()));
runTest("asRecursive:", asRecursive(list()));

process.exit(exit_code)
