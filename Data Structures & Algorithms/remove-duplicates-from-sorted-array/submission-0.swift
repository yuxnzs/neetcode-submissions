class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var seen: Set<Int> = []

        for i in 0..<nums.count {
            if seen.insert(nums[i]).inserted {
                nums.swapAt(seen.count - 1, i)
            }
        }

        return seen.count
    }
}
