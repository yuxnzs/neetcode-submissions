class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        let arrLength = nums.count
        var ans = Array(repeating: 1, count: arrLength)

        var leftProduct = 1
        for i in 1..<arrLength {
            leftProduct *= nums[i - 1]
            ans[i] *= leftProduct
        }

        var rightProduct = 1
        for i: Int in stride(from: arrLength - 2, through: 0, by: -1) {
            rightProduct *= nums[i + 1]
            ans[i] *= rightProduct
        }

        return ans
    }
}
