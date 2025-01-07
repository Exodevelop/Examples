//
//  FileDownloader.swift
//  MacTools
//
//  Created by Flavio Sinatra on 01/01/25.
//

import Foundation







/// Class for download files.
/// - Returns: A downloaded file from given URL.
class FileDownloader: NSObject {
    
    // Completion handler for the download
    var onDownloadComplete: ((URL?, Error?) -> Void)?
    // Progress handler for the download
    var onProgressUpdate: ((Double) -> Void)?
    
    private var urlSession: URLSession!
    private var downloadTask: URLSessionDownloadTask?
    
    override init() {
        super.init()
        let configuration = URLSessionConfiguration.default
        urlSession = URLSession(configuration: configuration, delegate: self, delegateQueue: OperationQueue.main)
    }
    
    /// Starts downloading a file from the given URL
    /// - Parameter urlString: The URL string of the file to download
    func downloadFile(from urlString: String) {
        guard let url = URL(string: urlString) else {
            onDownloadComplete?(nil, NSError(domain: "FileDownloader", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
            return
        }
        downloadTask = urlSession.downloadTask(with: url)
        downloadTask?.resume()
    }
    
    /// Cancels the ongoing download
    func cancelDownload() {
        downloadTask?.cancel()
    }
}

extension FileDownloader: URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        onDownloadComplete?(location, nil)
    }
    
    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
        if let error = error {
            onDownloadComplete?(nil, error)
        }
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        if totalBytesExpectedToWrite > 0 {
            let progress = Double(totalBytesWritten) / Double(totalBytesExpectedToWrite)
            onProgressUpdate?(progress)
        }
    }
}
