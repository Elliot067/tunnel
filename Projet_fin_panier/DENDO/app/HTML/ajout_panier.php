<?php

require_once 'connected.php';


require 'lien_important.php';
if(!connecte()) {
    header('Location: ../../public/login');
    exit();
}
else{
    if(isset($_GET['id'])){
    $article = $DB->query('SELECT id FROM article WHERE id=:id', array('id' => $_GET['id']));
    if(empty($article)){
        echo "Ce produit n'existe pas";
    }else{
        $panier->ajouter($article[0]->id);

        header('Location: /public/panier');
        exit();
    }
}else{
    echo "Vous n'avez pas sélectionné de produit à ajouter au panier";
}
}

