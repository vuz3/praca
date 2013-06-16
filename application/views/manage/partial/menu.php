<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<ul class="buttons">
    <li class="active">
        <?php echo HTML::anchor('/useful/', '<span>Dashboard</span><em></em>', array('class' => 'ico1')) ?>
        <span class="tooltip"><span>Dashboard</span></span>
    </li>
    <li>
        <?php echo HTML::anchor('/useful/sites/show/', '<span>Szablon</span><em></em>', array('class' => 'ico3')) ?>
        <span class="tooltip"><span>Szablon</span></span>
    </li>
    <li>
        <?php echo HTML::anchor('/useful/menu/show/', '<span>Menu</span><em></em>', array('class' => 'ico4')) ?>
        <span class="tooltip"><span>Menu</span></span>
    </li>
    <li>
        <?php echo HTML::anchor('/useful/content/show/', '<span>Content</span><em></em>', array('class' => 'ico7')) ?>
        <span class="tooltip"><span>Content</span></span>
    </li>
    <li>
        <span class="num">Other</span>
    </li>
    <li>
        <?php echo HTML::anchor('/useful/settings/show', '<span>Settings</span><em></em>', array('class' => 'ico8')) ?>
        <span class="tooltip"><span>Settings</span></span>
    </li>
</ul>