//
//  ViewController.swift
//  newky-test
//
//  Created by Aleksey Mikhailov on 27.06.2023.
//

import UIKit
import NewkyFace
import NewkyCardScanner

class ViewController: UIViewController {

    @IBAction func onFaceRegisterPhotoPressed() {
        let vc = FaceRegisterController.create(
            mode: .extractedPhoto(
                photo: UIImage(systemName: "square.and.pencil.circle.fill")!
            ),
            userId: UUID().uuidString
        )

        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true)
    }
    
    @IBAction func onFaceRegisterCameraPressed() {
        let vc = FaceRegisterController.create(
            mode: .onlyCamara,
            userId: UUID().uuidString
        )
        
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true)
    }
    
    @IBAction func onFaceRecognitionPressed() {
        let vc = FaceRecognitionController.create(
            userId: UUID().uuidString
        )

        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true)
    }

    @IBAction func onStepRegisterPhotoPressed() {
        let vc = StepController.create(
            state: .registerWithPhoto,
            userId: UUID().uuidString
        )
        
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true)
    }
    
    @IBAction func onStepRegisterPressed() {
        let vc = StepController.create(
            state: .register,
            userId: UUID().uuidString
        )
        
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true)
    }
    
    @IBAction func onScannerDriverLicenseHrvPressed() {
        let vc = NewkyScannerViewController.create(
            cardType: .driverLicense,
            country: .hrv,
            side: .front
        )
        
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true)
    }
    
    @IBAction func onDriverLicenseTrPressed() {
        let vc = NewkyScannerViewController.create(
            cardType: .driverLicense,
            country: .tr,
            side: .front
        )

        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true)
    }
}
