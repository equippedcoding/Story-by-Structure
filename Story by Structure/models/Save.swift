//
//  Save.swift
//  Story by Structure
//
//  Created by James Mitchell on 7/4/20.
//  Copyright © 2020 James Mitchell. All rights reserved.
//

import UIKit


class Save {
    
    
    
    func listFiles() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        
        let url = NSURL(fileURLWithPath: path)
        
        let filePath = url.path
        let fileManager = FileManager.default
        print(try! fileManager.contentsOfDirectory(atPath: filePath!))
        
    }
    
    func removeFile() {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let removeFile = dir.appendingPathComponent("copy.txt")
            let fileManager = FileManager.default
            
            do{
                try fileManager.removeItem(at: removeFile)
            }catch{
                print("cant remove file...")
            }
            
        }
        
        
    }
    
    func readFile(){
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let file = "file1.txt"
            let fileURL = dir.appendingPathComponent(file)
            
            do {
                let text = try String(contentsOf: fileURL, encoding: .utf8)
                print(text)
            }catch{
                print("")
            }
        }
        
    }
    
    func writeToFile(){
        let file = "file1.txt"
        let text = "some text"
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = dir.appendingPathComponent(file)
            
            do {
                try text.write(to: fileURL, atomically: false, encoding: .utf8)
            } catch {
                print("cant write...")
            }
        }
    }
    
    
    func createDir() {
        
        let documentsPath = NSURL(fileURLWithPath: NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0])
        
        let logsPath = documentsPath.appendingPathComponent("data")
        
        print(logsPath ?? "")
        
        do {
            try FileManager.default.createDirectory(atPath: logsPath!.path, withIntermediateDirectories: true, attributes: nil)
            
            
        }catch let error as NSError {
            print("Unable to create directory", error)
        }
        
    }
    
    
    
    
    
    
}
