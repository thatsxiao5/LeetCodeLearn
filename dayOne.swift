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
        
    

        var nums:[Int] = [0,1,1,7,6,32,2,3,3,3,4,4,4,4,5,5,5,6]
        //var nums:[Int] = [0,1,7,32,2,3,4,5,6]
        //[1,5,1,4,6,6]
		/*
         解法1
         1.初始化新数组
         2.loop判断新数组中是否有a[i]个元素,没有则添加
         3.不符合题目要求
         */
        let result0 = removeDuplicates0(&nums)
        print(result0)
        
        /*
         解法二
         copy by leetCode
         */
        let result1 = removeDuplicates1(&nums)
        print(result1)
        
        
        return true
    }
    
    
    func removeDuplicates0(_ nums: inout [Int] ) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        
        var newNums:[Int] = []
        for num in nums {
            if !newNums.contains(num) {
                newNums.append(num)
            }
        }
        print(newNums)
        return newNums.count;
    }

    
    func removeDuplicates1(_ nums: inout [Int] ) -> Int {
        
        if (nums.count == 0) { return 0 }
        var i = 0
        for j in 0..<nums.count{
            if nums[j] != nums[i]{
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }
    


}

