<?php

require 'lien_important.php';


$total = $_SESSION['total'];
$ids = array_keys($_SESSION['panier']);
$id_client = $_SESSION['idclient'];



$info_client = $DB->query_recap('select * FROM utilisateur u WHERE u.id = :id', array('id' => $id_client));

$article = $DB->query('SELECT a.* FROM article a WHERE a.id IN  ('.implode(',',$ids).')');



?>


<main class="livraison_conteneur">


    <h1 class="commande">Récapitulatif de commande</h1>

    <div class="toute_info">
        <div>1</div>
        <div class="info">Vos informations:</div>
        <div class="commande_personne">
            <div class="nom marge">Nom: <?= $info_client['prenom']?> </div>
            <div class="prenom marge">Prénom: <?= $info_client['nom'] . '<br>' ?></div>
            <div class="prenom marge">Email: <?= $info_client['email'] . '<br>' ?></div>
            <div class="prenom marge">Tel : <?= $info_client['tel'] . '<br>' ?></div>
        </div>
    </div>


    <div class="toute_autres_info">
        <div>3</div>
        <div class="titre_autre_info">Information sur la commande:</div>

        <div class="autre_info">

            <div class="montant marge"><H1>Produits Achetés : </H1>
                <?php
                foreach($article as $produit): ?>
                <div class="montant marge">Nom du produit :  <span><?= $produit->nom; ?> * <span><?= $_SESSION['panier'][$produit->id] ?></span>
                    <?php endforeach; ?></div>
                <div>
                    Prix total : <?= $total ?> $
                </div>

            </div>
        </div>


        <div class="conteneur_commander">

        </div>

</main>

<?php unset($_SESSION['panier']); ?>






