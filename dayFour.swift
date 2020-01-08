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
        // 改标题
        // 1.两个有序数组nums1,元素个数为m ,nums2元素个数为n
        // 2.合并两个数组得到result
        // 3.使得result也是有序的

        let m: Int = 3
        let n: Int = 3

        var nums1: [Int] = [1, 5, 6, 0, 0, 0]

        let nums2: [Int] = [2, 3, 9]

        merge(&nums1, m, nums2, n)

        return true
    }

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let transNums = nums1[0 ..< m]
        nums1 = Array(transNums)
        nums1.append(contentsOf: nums2)
        nums1.sort()
    }
}
