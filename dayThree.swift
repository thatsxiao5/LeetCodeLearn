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
        return true
    }

    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        if l1 == nil {
            return l2
        } else if l2 == nil {
            return l1
        }
        
        let a = CGFloat.init(Float(l1?.val ?? 0))
        let b = CGFloat.init(Float(l2?.val ?? 0))
        
        if (a < b) {
            l1?.next = mergeTwoLists(l1?.next, l2)
            return l1
        } else {
            l2?.next = mergeTwoLists(l1, l2?.next)
            return l2
        }
    }
}

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        next = nil
    }
}
