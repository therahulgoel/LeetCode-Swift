import Collections

func minStoneSum(_ piles: [Int], _ k: Int) -> Int {
    var heap = Heap<Int>(), total = 0

    //Build Heap from given elements
    for ele in piles {
        heap.insert(ele)
    }

    var i = 0
    while i < k {
        //Remove max element from heap
        let max = heap.removeMax()
        //apply given operation
        let afterOperation = Int(ceil(Double(max)/Double(2)))
        print(max)
        //Put it back in heap after operation
        heap.insert(afterOperation)
        i += 1
    }

    //Count total of all the stones after k operations
    while !heap.isEmpty {
        total += heap.removeMax()
    }

    return total
}
