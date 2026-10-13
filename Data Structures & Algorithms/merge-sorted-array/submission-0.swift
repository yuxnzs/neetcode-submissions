class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var ptr1 = m - 1
        var ptr2 = n - 1
        var currentIndex = nums1.count - 1

        while ptr2 >= 0 {
            if ptr1 >= 0 && nums1[ptr1] > nums2[ptr2] {
                nums1[currentIndex] = nums1[ptr1]
                ptr1 -= 1
            } else {
                nums1[currentIndex] = nums2[ptr2]
                ptr2 -= 1
            }

            currentIndex -= 1
        }
    }
}
