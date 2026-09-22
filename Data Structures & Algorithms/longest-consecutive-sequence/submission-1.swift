class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var longestCount = 0
        let numsSet = Set(nums)

        for n in numsSet {
            if numsSet.contains(n - 1) {
                continue
            }

            var count = 1
            while numsSet.contains(n + count) {
                count += 1
            }

            longestCount = max(longestCount, count)
        }

        return longestCount
    }
}
