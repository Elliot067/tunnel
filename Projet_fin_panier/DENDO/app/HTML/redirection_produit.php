<?php
require 'lien_important.php';

if(isset($_GET['id'])){
    $produit = $DB->query('SELECT id FROM article WHERE id=:id', array('id' => $_GET['id']));
    if(empty($produit)){
        echo "Ce produit n'existe pas";
    }else{
        $aproduit->ajouter($produit[0]->id);

        header('Location: /public/produit?id='.$_GET['id']);
        exit();

    }
}else{
    echo "Vous n'avez pas sélectionné de produit";
}

