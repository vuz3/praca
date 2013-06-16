<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

if (!empty($elements)) {
    $i = 1;
    ?>
    <div class="site">
        <table>
            <tr><th>LP</th><th>Wyświetlana nazwa</th><th>Link</th><th>Szablon</th><th>Język</th></tr>
            <?php
            foreach ($elements as $el) {
                echo "<tr>";
                echo "<td>" . $i++ . "</td>";
                echo "<td>" . $el->name . "</td>";
                echo "<td>" . $el->href . "</td>";
                echo "<td>" . $el->site . "</td>";
                echo "<td>" . $el->language->description . "</td>";
                echo "</tr>";
            }
            ?>

        </table>
    </div>
    <?php
} else {
    echo "<p>Brak stron</p>";
}
?>
<div class="add" id="content_add"><a href="<?= URL::base() ?>useful/content/add"><img src="<?= URL::base() ?>assets/images/manage/file_add.png" ></a></div>