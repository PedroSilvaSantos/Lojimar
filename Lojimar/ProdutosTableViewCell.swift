//
//  ProdutosTableViewCell.swift
//  Lojimar
//
//  Created by pedro on 11/03/2020.
//  Copyright © 2020 Pedro Silva Santos. All rights reserved.
//

import UIKit

class ProdutosTableViewCell: UITableViewCell {
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var lbDescricao: UILabel!
    @IBOutlet weak var lbTituloproduto: UILabel!

    func setProduto(produto: Produtos){
        ivImage.image = produto.image
        lbTituloproduto.text = produto.title
    }
}
