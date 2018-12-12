import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func showMessage(sender: UIButton) {
    let aController = UIAlertController(title: "Here's the app", message: "This is the app",
  preferredStyle: UIAlertController.Style.alert)
    aController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,
  handler: nil))
    present(aController, animated: true, completion: nil)
  }
}
