<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

if (!empty($content)) {
    ?>
    <div class="site">
        <table>
            <tr><th>ID</th><th>Template</th><th>Content</th</tr>
            <?php
            $i = 1;
            foreach ($content as $el) {
                if (75 < (int) strlen($el->content)) {
                    $string = substr($el->content, 0, 175);
                } else {
                    $string = $el->content;
                }
                ?>
                <tr>
                    <td><?php echo $i ?></td>
                    <td><?= $el->sites->template ?></td>
                    <td><?= $string ?></td>
                    <td><span value="<?= $el->id ?>" name="trash" id="trash" class="content">   
                            <img src="<?= URL::base() ?>assets/images/manage/nice_trash.png" />
                        </span>
                    </td>
                    <td><span value="<?= $el->id ?>" id="edit">   
                            <a href="<?= URL::base() ?>/useful/content/edit/<?= $el->id ?>"><img src="<?= URL::base() ?>assets/images/manage/Pencil-icon.png" /></a>
                        </span>
                    </td>
                </tr>
                <?php
                $i++;
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


<div id="dialog-confirm" title="Delete item?">
    <p><span class="ui-icon ui-icon-alert"></span>You shure u want to delete y</p>
</div>