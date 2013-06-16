<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

if (isset($elements)) {
    echo "<table>";
    if (is_array($elements) || is_object($elements)) {
        ?>
        <tr>
            <td>Tytul</td>
            <td>Cena</td>
        </tr>
        <?php
        foreach ($elements as $element) {
            ?>
            <tr>
                <td><?= $element->title ?></td>
                <td><?= $element->price ?></td>
            </tr>
            <?php
        }
    }
    echo "</table>";
}
