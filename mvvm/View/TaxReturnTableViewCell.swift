import UIKit

class TaxReturnTableViewCell: UITableViewCell {

    var taxReturn : TaxReturn? {
        didSet {
            guard let taxReturn = taxReturn else {
                return
            }
            nameLabel.text = "\(taxReturn.id)"
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(nameLabel)
        setLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("coder has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.text = "Hello World"
        label.textAlignment = .center
        return label
    }()
        
    func setLabelConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}
