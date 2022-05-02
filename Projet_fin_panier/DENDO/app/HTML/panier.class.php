<?php
class panier{

	private $DB;

	public function     __construct($DB){
		if(!isset($_SESSION)){
			session_start();
		}
		if(!isset($_SESSION['panier'])){
			$_SESSION['panier'] = array();
		}
		$this->DB = $DB;

		if(isset($_GET['delPanier'])){
			$this->delete($_GET['delPanier']);
		}
		if(isset($_POST['panier']['quantité'])){
			$this->recalculer();
		}
	}

    public function ajouter($produit_id){
        if(isset($_SESSION['panier'][$produit_id])){
            $_SESSION['panier'][$produit_id]++;
        }else{
            $_SESSION['panier'][$produit_id] = 1;
        }
    }

    public function delete($produit_id){
        unset($_SESSION['panier'][$produit_id]);
    }

	public function recalculer(){
		foreach($_SESSION['panier'] as $produit_id => $quantite){
			if(isset($_POST['panier']['quantité'][$produit_id])){
				$_SESSION['panier'][$produit_id] = $_POST['panier']['quantité'][$produit_id];
			}
		}
	}

	public function total(){
		$total = 0;
		$ids = array_keys($_SESSION['panier']);
		if(empty($ids)){
			$produits = array();
		}else{
			$produits = $this->DB->query('SELECT id, prix FROM article WHERE id IN ('.implode(',',$ids).')');
		}
		foreach( $produits as $produit ) {
			$total += $produit->prix * $_SESSION['panier'][$produit->id];
		}
		return $total;
	}



}