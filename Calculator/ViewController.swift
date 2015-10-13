import UIKit

class ViewController: UIViewController {
    
    let calcEngine = CalcEngine()
    
    var eingabe = ""
    var ggT = false;
    var ggtV1 = 0;
    var ggtV2 = 0;
    
    @IBOutlet var lable : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setzteLable() {
        lable!.text = eingabe
    }

    @IBAction func loeschenBtn(sender : AnyObject) {
        eingabe = ""
        ggT = false
        setzteLable()
    }
    
    @IBAction func nullEingabeBtn(sender : AnyObject) {
        eingabe += "0"
        setzteLable()
    }
    
    @IBAction func einsEingabeBtn(sender : AnyObject) {
        eingabe += "1"
        setzteLable()
    }
    
    @IBAction func zweiEingabeBtn(sender : AnyObject) {
        eingabe += "2"
        setzteLable()
    }

    @IBAction func dreiEingabeBtn(sender : AnyObject) {
        eingabe += "3"
        setzteLable()
    }
    
    @IBAction func vierEingabeBtn(sender : AnyObject) {
        eingabe += "4"
        setzteLable()
    }
    
    @IBAction func fuenfEingabeBtn(sender : AnyObject) {
        eingabe += "5"
        setzteLable()
    }
    
    @IBAction func sechsEingabeBtn(sender : AnyObject) {
        eingabe += "6"
        setzteLable()
    }
    
    @IBAction func siebenEingabeBtn(sender : AnyObject) {
        eingabe += "7"
        setzteLable()
    }
    
    @IBAction func achtEingabeBtn(sender : AnyObject) {
        eingabe += "8"
        setzteLable()
    }
    
    @IBAction func neunEingabeBtn(sender : AnyObject) {
        eingabe += "9"
        setzteLable()
    }
    
    @IBAction func plusEingabeBtn(sender : AnyObject) {
        eingabe += "+"
        setzteLable()
    }
    
    @IBAction func minusEingabeBtn(sender : AnyObject) {
        eingabe += "-"
        setzteLable()
    }
    
    @IBAction func malEingabeBtn(sender : AnyObject) {
        eingabe += "*"
        setzteLable()
    }
    
    @IBAction func geteiltEingabeBtn(sender : AnyObject) {
        eingabe += "/"
        setzteLable()
    }
    
    @IBAction func kommaEingabeBtn(sender : AnyObject) {
        eingabe += "."
        setzteLable()
    }
    
    @IBAction func modoloEingabeBtn(sender : AnyObject) {
        eingabe += "%"
        setzteLable()
    }
    
    @IBAction func gleichEingabeBtn(sender : AnyObject) {
        if(ggT) {
            ggtV2 = Int(eingabe)!;
            eingabe = "\(calcEngine.ggt(ggtV1, v2: ggtV2))"
        } else {
            eingabe = "\(calcEngine.calc(eingabe))"
        }
        ggT = false
        setzteLable()
    }
    
    @IBAction func ggTEingabeBtn(sender : AnyObject) {
        ggT=true
        ggtV1 = Int(eingabe)!;
        eingabe = ""
        setzteLable()
    }
    
}

