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

function asRecursive(numbers, sum){
    if (numbers.length ==0) return sum;
    sum += numbers.pop();
    return asRecursive(numbers, sum);
}

exit_code = 0;

function runTest(label, result) {
    console.log(label, result);
    if (result != 21){
        exit_code += 1;
    }
}

runTest("asForLoop:", asForLoop(list()));
runTest("asWhileLoop:", asWhileLoop(list()));
runTest("asRecursive:", asRecursive(list(), 0));

process.exit(exit_code)
