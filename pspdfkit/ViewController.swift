//
//  ViewController.swift
//  pspdfkit
//
//  Created by Channaprasad Patil on 3/13/23.
//

import UIKit
import PSPDFKit
import PSPDFKitUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Update to use your document name.
        let fileURL = Bundle.main.url(forResource: "Document", withExtension: "pdf")!
        let document = Document(url: fileURL)

        // The configuration closure is optional and allows additional customization.
        let pdfController = PDFViewController(document: document) {
                $0.isPageLabelEnabled = false
        }

        // Present the PDF view controller within a `UINavigationController` to show built-in toolbar buttons.
        present(UINavigationController(rootViewController: pdfController), animated: true)
    }
}

