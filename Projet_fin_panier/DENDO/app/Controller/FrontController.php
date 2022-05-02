<?php

namespace App\Controller;


class FrontController
{



    public function carousel_velo(): string
    {
        ob_start();

        //Definir les variables ici (ex. $title, $products, etc).
        $title = "Dendo Jitesha : Carousel Velo";

        $mainTemplate = ROOT_PROJECT . '/app/HTML/carousel_velo.php';
        $style_header = ROOT_URL . "/CSS/style_header.css";
        $header = ROOT_PROJECT . "/app/HTML/header_index.php";
        $logo = ROOT_URL . "/assets/image/logo.png";
        require ROOT_PROJECT . '/app/HTML/template.php';


        return ob_get_clean();
    }




    public function produit(): string
    {
        ob_start();

        //Definir les variables ici (ex. $title, $products, etc).
        $title = "Dendo Jitesha : Produit";

        $mainTemplate = ROOT_PROJECT . '/app/HTML/produit.php';
        $style_header = ROOT_URL . "/CSS/style_header.css";
        $header = ROOT_PROJECT . "/app/HTML/header_index.php";
        $logo = ROOT_URL . "/assets/image/logo.png";
        require ROOT_PROJECT . '/app/HTML/template.php';


        return ob_get_clean();
    }



    public function login(): string
    {
        ob_start();

        //Definir les variables ici (ex. $title, $products, etc).
        $title = "Dendo Jitesha : Login";

        $mainTemplate = ROOT_PROJECT . '/app/HTML/login.php';
        $style_header = ROOT_URL . "/CSS/style_header_white.css";
        $header = ROOT_PROJECT . "/app/HTML/header_index.php";
        $logo = ROOT_URL . "/assets/image/logo.png";
        require ROOT_PROJECT . '/app/HTML/template.php';


        return ob_get_clean();
    }
    public function panier(): string
    {
        ob_start();

        //Definir les variables ici (ex. $title, $products, etc).
        $title = "Dendo Jitesha : panier";

        $mainTemplate = ROOT_PROJECT . '/app/HTML/panier.php';
        $header = ROOT_PROJECT . "/app/HTML/header_index.php";
        $style_header = ROOT_URL . "/CSS/style_header_index.css";
        $logo = ROOT_URL . "/assets/image/Main.png";
        require ROOT_PROJECT . '/app/HTML/template.php';


        return ob_get_clean();
    }

    public function recap_commande(): string
    {
        ob_start();

        //Definir les variables ici (ex. $title, $products, etc).
        $title = "Dendo Jitesha : panier";

        $mainTemplate = ROOT_PROJECT . '/app/HTML/recap_commande.php';
        $style_header = ROOT_URL . "/CSS/style_header_white.css";
        $header = ROOT_PROJECT . "/app/HTML/header_index.php";
        $logo = ROOT_URL . "/assets/image/logo.png";
        require ROOT_PROJECT . '/app/HTML/template.php';


        return ob_get_clean();
    }



}