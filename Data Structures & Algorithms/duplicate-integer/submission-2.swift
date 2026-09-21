class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let numsSet = Set(nums)
        return nums.count != numsSet.count
    }
}
