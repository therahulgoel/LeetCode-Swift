import Collections

func pickGifts(_ gifts: [Int], _ k: Int) -> Int {
    var heap = Heap<Int>(), totalGifts = 0
    for ele in gifts {
        heap.insert(ele)
    }
    var i = 0
    while i < k {
        let max = heap.removeMax()
        let remainingGifts = Int(floor(sqrt(Double(max))))
        heap.insert(remainingGifts)
         i += 1
    }

    while !heap.isEmpty {
        let max = heap.removeMax()
        totalGifts += max
    }
    return totalGifts
}
