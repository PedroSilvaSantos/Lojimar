//
//  ProdutosTableTableViewController.swift
//  Lojimar
//
//  Created by pedro on 11/03/2020.
//  Copyright © 2020 Pedro Silva Santos. All rights reserved.
//

import UIKit

class ProdutosTableViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var produtos : [Produtos] = []
    
    func createArray() -> [Produtos]{
        var temmpProdutos: [Produtos] = []
        let produto = Produtos(image: #imageLiteral(resourceName: "bag"), title: "Produto 1")
        let produto2 = Produtos(image: #imageLiteral(resourceName: "taxes"), title: "Produto 2")
        let produto3 = Produtos(image: #imageLiteral(resourceName: "taxes"), title: "Produto 3")
        let produto4 = Produtos(image: #imageLiteral(resourceName: "settings"), title: "Produto 4")
        let produto5 = Produtos(image: #imageLiteral(resourceName: "bag"), title: "Produto 5")
        let produto6 = Produtos(image: #imageLiteral(resourceName: "bag"), title: "Produto 6")
        
        //Inserindo no array
        temmpProdutos.append(produto)
        temmpProdutos.append(produto2)
        temmpProdutos.append(produto3)
        temmpProdutos.append(produto4)
        temmpProdutos.append(produto5)
        temmpProdutos.append(produto6)
        
        //retorna o array completo
        return temmpProdutos
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Passou pelo viewDidLoad")
        produtos = createArray()
        tableview.delegate = self
        tableview.dataSource = self
    }
}

extension ProdutosTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return produtos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let produto_ = produtos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "produtoCell", for: indexPath) as! ProdutosTableViewCell
        cell.setProduto(produto: produto_)
        return cell
    }
}
