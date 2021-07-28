


import UIKit
import SnapKit
import iOSIntPackage

class ProfileViewController: UIViewController {
    
    
    func loadImage(image: UIImage) {
        let processor = ImageProcessor()
        processor.processImage(sourceImage: image, filter: .colorInvert) { resultImage in
            subView.image.image = resultImage
        }
    }
    
    
    lazy var buttonTitle: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("TitleChanged", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        return button
    }()
    
    @IBOutlet weak var subView: ProfileHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage(image: Images.mountain)
        view.addSubview(buttonTitle)
        buttonTitle.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(view.safeAreaLayoutGuide).offset(12)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-12)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-12)
        }
    }
    private var statusText: String?
    
    @IBAction func type(_ sender: UITextField) {
        statusText = sender.text
        print(statusText ?? "Hi")
    }
    }
    



