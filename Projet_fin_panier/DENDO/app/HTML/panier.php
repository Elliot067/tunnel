<?php

require_once 'connected.php';
connexion_force();
obligation_admin();

require 'lien_important.php';

?>

<div class="block_panier">
    <div class="block_panier_mid">
        <h1> Panier</h1>
        <br>
        <form method="post" action="panier">
        <div class="tableau1">
            <div class="nom_produit produit">Produit</div>
            <div class="quantité_produit">Quantité</div>
            <div class="prix_produit">Prix</div>
            <div class="prix_tva">Prix avec TVA</div>
            <div class="delete">Supprimer</div>
        </div>
        <div>
            <?php
            $ids = array_keys($_SESSION['panier']);
            if(empty($ids)){
                $article = array();
            }else{
                $article = $DB->query('SELECT a.* FROM article a WHERE a.id IN  ('.implode(',',$ids).')');
            }
            foreach($article as $produit):
                ?>
                <div class="tableau1">

                    <span class="nom_produit"><a class="img_panier"> <img src="/public/<?= $produit->image; ?>"></a><span><?= $produit->nom; ?></span></span>
                    <span class="quantité_produit"><input type="number" min="0" max="100" name="panier[quantité][<?= $produit->id; ?>]" value="<?= $_SESSION['panier'][$produit->id]; ?>"></span>
                    <span class="prix_produit"><?= $produit->prix * $_SESSION['panier'][$produit->id]; ?> €</span>
                    <span class="prix_tva"><?= $produit->prix * 1.20 * $_SESSION['panier'][$produit->id]; ?> €</span>
                    <span class="delete">
					<a href="panier?delPanier=<?= $produit->id; ?>" class="del"><img src="../../public/assets/image/del.png "></a>
				</span>
                </div>
            <?php endforeach; ?>
            <div class="fin_panier">
                <div> Prix Total : <?= number_format($panier->total() * 1.20,0,',',' '); ?> € </div>
                <?php $_SESSION['total'] = $panier->total() * 1.20;
                ?>


                <div class="input_panier"><input type="submit" value="Recalculer"></div>

                <a href="/public/recap_commande">
                    <span>Commander</span>
                </a>
            </div>

<div>

        </div>
        </form>
    </div>
</div>
