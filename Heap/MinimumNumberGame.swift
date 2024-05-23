import HeapModule

func numberGame(_ nums: [Int]) -> [Int] {
        var result = [Int](), heap = Heap<Int>()

        //Build Heap from Given array
        for ele in nums {
            heap.insert(ele)
        }

        while !heap.isEmpty {
            let alice = heap.removeMin()
            let bob = heap.removeMin()
            result.append(bob)
            result.append(alice)
        }
        
        return result
    }
