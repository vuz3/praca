<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

if (isset($user)) {
    if(isset($check_trans)) {
        if(!$check_trans) {
            echo HTML::anchor('comunity/publish/' . $user->username . '', 'Rozpocznij Transmisje na żywo!<br>');
        } else {
            echo "Już prowadzisz transmisje, wcelu jej zakończenia kliknij na zakończ\t";
            echo HTML::anchor('comunity/end','Zakończ<br>');
            echo "lub też możesz przywrucić swój chat\t";
            echo HTML::anchor('comunity/publish/' . $user->username . '', 'Przywróć<br>');
        }
    }
    
    echo HTML::anchor('login/logout', 'Wyloguj<br>');
    ?>
    <p>Twoje żetony : <?= $user->money ?></p>
    <?php
    echo HTML::anchor('my/coins/getMore','Doładuj żetony');
}


