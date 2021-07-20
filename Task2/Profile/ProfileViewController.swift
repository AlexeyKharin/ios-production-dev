


import UIKit
class ProfileViewController: UIViewController {
    var pof = ProfileHeaderView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pof.button)
        pof.button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                                        pof.button.bottomAnchor.constraint(equalTo: pof.safeAreaLayoutGuide.bottomAnchor, constant: -100),
                                        pof.button.trailingAnchor.constraint(equalTo: pof.safeAreaLayoutGuide.trailingAnchor, constant: 0),
                                        pof.button.leadingAnchor.constraint(equalTo: pof.safeAreaLayoutGuide.leadingAnchor, constant: 0),
        pof.button.heightAnchor.constraint(equalToConstant: 50)])
    }


    private var statusText: String?
    
    @IBAction func type(_ sender: UITextField) {
        self.statusText = sender.text
        print(statusText ?? "HI")
    }
}

