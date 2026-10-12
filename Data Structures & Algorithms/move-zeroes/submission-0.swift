class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var pointer = 0

        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(i, pointer)
                pointer += 1
            }
        }
    }
}
