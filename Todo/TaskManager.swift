//
//  TaskManager.swift
//  Todo
//
//  Created by Arjun on 14/11/14.
//  Copyright (c) 2014 Techulus. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    
    var tasks = [task ]()
    
    func addTask (name : String, desc : String) {
        tasks.append(task(name: name, desc: desc))
    }

}
