






import UIKit

class PostViewController: UIViewController {
    
    static func storyboardInstance() -> PostViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: PostViewController.self)) as? PostViewController
    }
    
    
    var post: Post?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = post?.title
    }
}
