import Foundation
import Capacitor
import AVFoundation

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(CapacitorQRScanner)
public class CapacitorQRScanner: CAPPlugin, QRScannerViewControllerDelegate {
    
    
    
    
    var call: CAPPluginCall?
    var qrScannerViewController: QRScannerViewController?
    
    @objc func scan(_ call: CAPPluginCall) {
        call.keepAlive = true
        self.call = call
        
        if let isSim = bridge?.isSimEnvironment, isSim || !UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
          call.reject("Camera not available while running in Simulator")
          return
        }
        
        DispatchQueue.main.async {
            self.qrScannerViewController = QRScannerViewController()
            self.qrScannerViewController!.delegate = self;
         }
        
        AVCaptureDevice.requestAccess(for: .video) { granted in
            if granted {
              DispatchQueue.main.async {

                self.bridge?.viewController?.present(self.qrScannerViewController!, animated: true, completion: nil)
                
              }
            } else {
                call.reject("User denied access to camera")
            }
        }
        
    }
    
    func didFoundCode(code: String) {
        self.call?.resolve(["code": code]);
    }

}
