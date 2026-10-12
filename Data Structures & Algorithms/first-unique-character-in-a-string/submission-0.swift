class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var charCount: [Character: Int] = [:]

        for char in s {
            charCount[char, default: -1] += 1
        }

        var seen: Set<Character> = []
        var counts: [(Character, Int)] = []
        for char in s {
            if seen.insert(char).inserted {
                counts.append((char, charCount[char]!))
            }
        }

        for (char, count) in counts {
            if count == 0 {
                return Array(s).firstIndex(of: char)!
            }
        }

        return -1
    }
}
