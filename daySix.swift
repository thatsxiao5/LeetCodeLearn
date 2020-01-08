//
//  AppDelegate.swift
//  DeleteRepeatsOfTheArray
//
//  Created by KSummer on 2020/1/3.
//  Copyright © 2020 KSummer. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        var nums: [Int] = [0, 1, 0, 3, 12]

        moveZeroes(&nums)

        return true
    }

    //第六天,写错了.....
    func moveZeroes(_ nums: inout [Int]) {
        // 解法二
        // 遇0 后移

        // [0,1] nums[0] = nums[1]
        // [1,0] 不变
        // [1] 不变
        // [0] 不变

        // [1,0,1,0,2]

        // 记录有多少个元素不为0
        var index: Int = 0

        for i in 0 ..< nums.count {
            // 如果元素!= 0
            if nums[i] != 0 {
                // 不转移
                nums[index] = nums[i]
                // 标兵+1,最终记录的是最后有几个元素不为0
                index += 1
            }
        }

        while index < nums.count {
            // 将从index - 结尾的元素置为0
            nums[index] = 0
            index += 1
        }
    }

    // 暴力解法
//    func moveZeroes(_ nums: inout [Int]) {
//
//        var j: Int = 0
//        nums = nums.filter {
//            if $0 == 0 {
//                j += 1
//            }
//            return $0 != 0
//        }
//        while j != 0 {
//            nums.append(0)
//            j -= 1
//        }
//        print(nums)
//    }
}
