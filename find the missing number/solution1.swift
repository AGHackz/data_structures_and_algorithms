func findMissingNumber(_ array: [Int], n: Int) -> Int {
    var sumtotal = (n * (n + 1))/2;

    for num in array {
        sumtotal -= num;
    }

    return sumtotal;
}

let testResult1 = findMissingNumber([1, 2, 4, 6, 3, 7, 8], n: 8)
print("Result Test case 1: \(testResult1)")

let testResult2 = findMissingNumber([1, 2, 3, 5], n: 5)
print("Result Test case 2: \(testResult2)")

// Time Complexity: O(N)
// Auxiliary Space: O(1)