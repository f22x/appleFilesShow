#!/usr/bin/env xcrun swift
println("apple files show")
//引入 Foundation框架
import Foundation
// 输入脚本命令来操作终端
let shell = "defaults write com.apple.finder AppleShowAllFiles -bool true"
// 创建NSTask实例
let task = NSTask()
// 使用bash
task.launchPath = "/bin/bash"
//参数 -c
task.arguments = ["-c", shell]
//运行
task.launch()