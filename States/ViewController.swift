//
//  ViewController.swift
//  States
//
//  Created by user250623 on 2/24/24.
//
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var stateCapital: [StateCapital] = [
        StateCapital(state: "Alabama", capital: "Montgomery"),
        StateCapital(state: "Alaska", capital: "Juneau"),
        StateCapital(state: "Arizona", capital: "Phoenix"),
        StateCapital(state: "Arkansas", capital: "Little Rock"),
        StateCapital(state: "California", capital: "Sacramento"),
        StateCapital(state: "Colorado", capital: "Denver"),
        StateCapital(state: "Connecticut", capital: "Hartford"),
        StateCapital(state: "Delaware", capital: "Dover"),
        StateCapital(state: "Florida", capital: "Tallahassee"),
        StateCapital(state: "Georgia", capital: "Atlanta")

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateCapital.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        let stateCapital = stateCapital[indexPath.row]
        cell.textLabel?.text = stateCapital.state
        cell.detailTextLabel?.text = stateCapital.capital
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: stateCapital[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails",
           let destinationVC = segue.destination as? SecondViewController,
           let stateCapital = sender as? StateCapital { // Corrected struct name
            destinationVC.stateCapital = stateCapital
        }
    }
}
