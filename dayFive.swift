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
        var nums: [Int] = [2, 5, 5, 11]
        let target: Int = 10

        nums = twoSum(nums, target)

        print(nums)

        return true
    }

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let map: NSMapTable<AnyObject, AnyObject> = NSMapTable()
        for i in 0 ..< nums.count {
            map.setObject(nums[i] as AnyObject, forKey: i as AnyObject)
        }

        for i in 0 ..< nums.count {
            let a = nums[i]
            let c = target - a

            if (map.object(forKey: c as AnyObject) != nil) && map.object(forKey: c as AnyObject) ?? 0 != i {
                return [i, map.object(forKey: c as AnyObject)]
            }
        }

        return []
    }

//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//
//        //var map :NSMapTable<AnyObject, AnyObject>
//        for i in 0 ..< nums.count {
//            for j in i+1 ..< nums.count {
//                let a = nums[i]
//                let b = nums[j]
//                if  b == target - a {
//                    return [i, j]
//                }
//            }
//        }
//        return []
//    }
}
