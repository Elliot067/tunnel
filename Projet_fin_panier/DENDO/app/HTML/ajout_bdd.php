<?php
require 'lien_important.php';

$recap_commande = serialize($_SESSION['panier']);
$prix_total = $_SESSION['total'];
$id_client = $_SESSION['idclient'];

$panier_insertion = $DB->sql('INSERT INTO commande (Recap_produit, Prix_total, Id_utilisateur) VALUES (:recap_commande, :prix_total, :id_client)',
    array(
        'recap_commande' => $recap_commande,
        'prix_total' => $prix_total,
        'id_client' => $id_client,));

//$datas = unserialize($data);
//$data = array($_SESSION['panier'], $_SESSION['user']);

//foreach($_SESSION['panier'] as $id_article => $quantite_article){
//    echo $id_article;
//    var_dump($_SESSION['panier']);
//    $_SESSION['panier'] = [$id_article, $quantite_article, $_SESSION['user']];
//    var_dump($_SESSION['panier']);
//}
//$insertion = $DB->query('INSERT INTO article_has_commande (Article_id, quantite) VALUES ($data, )');

//var_dump($datas);

//echo 'bonjour';
//var_dump($data);
//var_dump($_SESSION['panier']);
//
//$_SESSION['user']
//$_SESSION['panier']
