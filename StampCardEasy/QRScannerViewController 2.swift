//
//  QRScannerViewController.swift
//  StampCardEasy
//
//  Created by Bilal Fakhro on 2018-10-23.
//  Copyright © 2018 Bilal Fakhro. All rights reserved.
//

import UIKit
import AVFoundation

class QRScannerViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate, UINavigationControllerDelegate {
    
 @IBOutlet var messageLabel:UILabel!
 @IBOutlet var topbar: UIView!
 
 var crossCheckedImg = stampCardViewController()
 
 var captureSession = AVCaptureSession()
 
 var videoPreviewLayer: AVCaptureVideoPreviewLayer?
 var qrCodeFrameView: UIView?
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Get the back-facing camera for capturing videos
        let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualCamera], mediaType: AVMediaType.video, position: .back)
 
        guard let captureDevice = deviceDiscoverySession.devices.first else {
            print("Failed to get the camera device")
            return
        }
 
        do {
            // Get an instance of the AVCaptureDeviceInput class using the previous device object.
            let input = try AVCaptureDeviceInput(device: captureDevice)
 
            // Set the input device on the capture session.
            captureSession.addInput(input)
 
            // Initialize a AVCaptureMetadataOutput object and set it as the output device to the capture session.
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(captureMetadataOutput)
 
            // Set delegate and use the default dispatch queue to execute the call back
            captureMetadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
 
        } catch {
            // If any error occurs, simply print it out and don't continue any more.
            print(error)
            return
        }
 
        // Initialize the video preview layer and add it as a sublayer to the viewPreview view's layer.
        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        videoPreviewLayer?.frame = view.layer.bounds
        view.layer.addSublayer(videoPreviewLayer!)
 
        // Start video capture.
        captureSession.startRunning()
 
        // ADD
        // This app has crashed because it attempted to access privacy-sensitive data without a usage description.  The app's Info.plist must contain an NSCameraUsageDescription key with a string value explaining to the user how the app uses this data.
 
        // Move the message label and top bar to the front
        view.bringSubviewToFront(messageLabel)
        view.bringSubviewToFront(topbar)
 
        // Initialize QR Code Frame to highlight the QR code
        // In order to highlight the QR code, we’ll first create a UIView object and set its border to green.
        qrCodeFrameView = UIView()
 
        if let qrCodeFrameView = qrCodeFrameView {
            qrCodeFrameView.layer.borderColor = UIColor.green.cgColor
            qrCodeFrameView.layer.borderWidth = 2
            view.addSubview(qrCodeFrameView)
            view.bringSubviewToFront(qrCodeFrameView)
            }
    }

 
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
    // Check if the metadataObjects array is not nil and it contains at least one object.
    if metadataObjects.count == 0 {
        qrCodeFrameView?.frame = CGRect.zero
        messageLabel.text = "No QR code is detected"
        return
    }
 
        // Get the metadata object.
        let metadataObj = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
 
        if metadataObj.type == AVMetadataObject.ObjectType.qr {
            // If the found metadata is equal to the QR code metadata then update the status label's text and set the bounds
            let barCodeObject = videoPreviewLayer?.transformedMetadataObject(for: metadataObj)
            qrCodeFrameView?.frame = barCodeObject!.bounds
 
            if metadataObj.stringValue != nil {
            self.performSegue(withIdentifier: "stampCardSegue", sender: self)
 
        }
    }
 }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 }
 /*
 func launchApp(decodedURL: String) {
 
 if presentedViewController != nil {
 return
 }
 
 let alertPrompt = UIAlertController(title: "Open App", message: "You're going to open \(decodedURL)", preferredStyle: .actionSheet)
 let confirmAction = UIAlertAction(title: "Confirm", style: UIAlertActionStyle.default, handler: { (action) -> Void in
 
 if let url = URL(string: decodedURL) {
 if UIApplication.shared.canOpenURL(url) {
 UIApplication.shared.open(url, options: [:], completionHandler: nil)
 }
 }
 })
 
 let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
 
 alertPrompt.addAction(confirmAction)
 alertPrompt.addAction(cancelAction)
 
 present(alertPrompt, animated: true, completion: nil)
 }
 
 }
 
 extension QRScannerController: AVCaptureMetadataOutputObjectsDelegate {
 
 func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
 // Check if the metadataObjects array is not nil and it contains at least one object.
 if metadataObjects.count == 0 {
 qrCodeFrameView?.frame = CGRect.zero
 messageLabel.text = "No QR code is detected"
 return
 }
 
 // Get the metadata object.
 let metadataObj = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
 
 if supportedCodeTypes.contains(metadataObj.type) {
 // If the found metadata is equal to the QR code metadata (or barcode) then update the status label's text and set the bounds
 let barCodeObject = videoPreviewLayer?.transformedMetadataObject(for: metadataObj)
 qrCodeFrameView?.frame = barCodeObject!.bounds
 
 if metadataObj.stringValue != nil {
 launchApp(decodedURL: metadataObj.stringValue!)
 messageLabel.text = metadataObj.stringValue
 }
 }
 }
 */
 }
