//
//  Log.swift
//  partyq
//
//  Created by Liam1 on 10/21/22.
//
import Foundation
import os

enum Log {
    // MARK: Internal

    static func info(_ msg: String,
                     fileName: String = #file,
                     functionName: String = #function,
                     lineNumber: Int = #line)
    {
        let prefix = buildLogPrefix(fileName, functionName, lineNumber)
        logger.info("\(prefix)\(msg)")
    }

    static func debug(_ msg: String,
                      fileName: String = #file,
                      functionName: String = #function,
                      lineNumber: Int = #line)
    {
        let prefix = buildLogPrefix(fileName, functionName, lineNumber)
        logger.debug("\(prefix)\(msg)")
    }

    static func error(_ msg: String,
                      fileName: String = #file,
                      functionName: String = #function,
                      lineNumber: Int = #line)
    {
        let prefix = buildLogPrefix(fileName, functionName, lineNumber)
        logger.error("\(prefix)\(msg)")
    }

    // MARK: Private

    private static let logger = Logger()

    private static func buildLogPrefix(_ fileName: String,
                                       _ functionName: String,
                                       _ lineNumber: Int) -> String
    {
        "\((fileName as NSString).lastPathComponent):\(functionName):L\(lineNumber) - "
    }
}
