import HeapModule

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var minHeap = Heap<Int>()
    //Build Heap from given array
    for ele in nums {
        minHeap.insert(ele)
    }

    var i = 0
    //Remove n - k  smallest
    while i < nums.count - k {
        minHeap.popMin()
        i += 1
    }
    return minHeap.popMin()!
}
