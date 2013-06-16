<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>

<nav class="links">
    <ul>
        <li><a href="#" class="ico1">Messages <span class="num">26</span></a></li>
    </ul>
</nav>
<div class="profile-box">
    <span class="profile">
        <a href="#" class="section">
            <img class="image" src="<?= $user->avatar ?>" alt="avatar" width="26" height="26" />
            <span class="text-box">
                Welcome
                <strong class="name">
                   <p>Name: <?= $user->username ?></p>
                   <p>Last Login: <?= $user->last_login ?></p>
                </strong>
            </span>
        </a>
        <a href="#" class="opener">opener</a>
    </span>
    <?= HTML::anchor('/useful/manager/logout', 'On', array('class' => 'btn-on')) ?>
</div>
