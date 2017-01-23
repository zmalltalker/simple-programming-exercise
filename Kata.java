public class Kata {
    public static void main(String[] args){
        int[] numbers = new int[]{1,2,3,4,5,6};
        int result1 = byForLoop(numbers);
        System.out.println("By for loop: " + result1);
        int result2 = byWhileLoop(numbers);
        System.out.println("By while loop: " + result2);
        int result3 = byRecursion(numbers, 0);
        System.out.println("By recursion: " + result3);
        if ((result1 + result2 + result3) == 63) {
            System.exit(0);
        } else {
            System.exit(1);
        }
    }

    private static int byForLoop(int[] numbers){
        int result = 0;
        for (int i = 0; i < numbers.length; i++) {
            result += numbers[i];
        }
        return result;
    }

    private static int byWhileLoop(int[] numbers){
        int result = 0;
        int index = 0;
        while (index < numbers.length){
            result += numbers[index];
            index++;
        }
        return result;
    }

    private static int byRecursion(int[] numbers, int sum){
        if (numbers.length == 0){
            return sum;
        }
        int current = numbers[0];
        int[] newList = new int[numbers.length-1];
        for (int i = 1; i < numbers.length; i++){
            newList[i-1] = numbers[i];
        }
        return byRecursion(newList, sum + current);
    }
}
