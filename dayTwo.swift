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
        // 给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。

        /*
          解法一:
         a[i + k] = a[i];
         if (i >= k){
          a[i - k] = a [i];
         }
         */

        /*
         解法二:
         将末尾元素转移至index0 直到 k-- = 0
         */

        // var nums:[Int] = [1,2,3,4,5,6,7]
        // let k:Int = 3

        var nums: [Int] = [1, 2]
        let k: Int = 2

        rotate(&nums, k)

        return true
    }

    func rotate(_ nums: inout [Int], _ k: Int) {
        var mk: Int = 0

        if k > nums.count {
            mk = k % nums.count
        } else {
            mk = k
        }

        /*
         1.将数组后k位取出
         2.直接插入数组前三位
         */
        var newNums: [Int] = []
        for i in 0 ..< nums.count {
            if i > nums.count - mk - 1 {
                newNums.append(nums[i])
                // nums.remove(at: i)
            }
        }

        newNums.append(contentsOf: nums)
        
        var tK = mk
        
        while tK != 0 {
            newNums.removeLast()
            tK -= 1
        }

        nums = newNums

        print(nums)
    }
}
