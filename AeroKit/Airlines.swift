//
//  Airlines.swift
//  AeroKit
//
//  Created by feng on 8/28/24.
//

import Foundation

func parseDatFile(filePath: String) -> [[String]] {
    guard let fileContent = try? String(contentsOfFile: filePath) else {
        print("读取文件失败: \(filePath)")
        return []
    }
    
    let lines = fileContent.components(separatedBy: .newlines)
    var parsedData: [[String]] = []
    
    for line in lines {
        let columns = line.components(separatedBy: ",")
        if columns.count > 1 {  // 过滤空行
            parsedData.append(columns)
        }
    }
    
    return parsedData
}
