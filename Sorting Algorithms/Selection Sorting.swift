import Foundation

/// https://takeuforward.org/sorting/selection-sort-algorithm/
///
/// Approach:
///
/// The algorithm steps are as follows:
///
/// 1). First, we will select the range of the unsorted array using a loop (say i) that indicates the starting index of the range.
/// The loop will run forward from 0 to n-1. The value i = 0 means the range is from 0 to n-1, and similarly, i = 1 means the range is from 1 to n-1, and so on.
/// (Initially, the range will be the whole array starting from the first index.)
/// 2). Now, in each iteration, we will select the minimum element from the range of the unsorted array using an inner loop.
/// 3). After that, we will swap the minimum element with the first element of the selected range(in step 1).
/// 4). Finally, after each iteration, we will find that the array is sorted up to the first index of the range.
/// Note: Here, after each iteration, the array becomes sorted up to the first index of the range. That is why the starting index of the range increases by 1 after each iteration. This increment is achieved by the outer loop and the starting index is represented by variable i in the following code. And the inner loop(i.e. j) helps to find the minimum element of the range [i…..n-1].
///

func selectionSort(arr: [Int]) -> [Int] {
    var arr = arr
    
    for i in stride(from: 0, through: arr.count - 2, by: 1) {
        var minIndex = i
        
        for j in stride(from: i + 1, through: arr.count - 1, by: 1) {
            // Select the minimum element from the range of the unsorted array using an inner loop
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        
        // Swap the minimum element with the first element of the selected range
        var temp = arr[i]
        arr[i] = arr[minIndex]
        arr[minIndex] = temp
    }
    
    return arr
}

let arr = [13, 46, 24, 52, 20, 9]
print("Result: \(selectionSort(arr: arr))")
