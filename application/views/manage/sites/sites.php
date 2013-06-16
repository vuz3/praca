<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

if (!empty($sites)) {
    $i = 1;
    foreach ($sites as $site) {
        ?>
        <div class="site">
            <?= $i++ . " " . $site->template ?>
            <span value="<?= $site->id ?>" name="trash" id="trash" class="site">   
                <img src="<?= URL::base() ?>assets/images/manage/nice_trash.png" />
            </span>
            <span value="<?= $site->id ?>" id="edit">   
                <img src="<?= URL::base() ?>assets/images/manage/Pencil-icon.png" />
            </span>
        </div>
        <hr/>
        <?php
    }
} else {
    echo "<p>Brak stron</p>"; 
}
?>
<div class="add" id="template_add"><img src="<?= URL::base() ?>assets/images/manage/file_add.png" ></div>

<div id="dialog-confirm" title="Delete item?">
    <p><span class="ui-icon ui-icon-alert"></span>You shure u want to delete y</p>
</div>

<div id="dialog-form" title="Stwórz nowy szablon">
    <p class="validateTips">Uzupełnij wszystkie pola</p>

    <form>
        <fieldset>
            <label for="template">Nazwa szablonu: </label>
            <input type="text" name="template" id="template" class="text ui-widget-content ui-corner-all" /><br>
            <label for="lang">Język: </label>
            <select>
                <?php
                    foreach($langs as $lang) {
                        echo "<option name=\"language\" id=\"language\" value=" . $lang->id . ">" . $lang->description . "</option>";
                    }
                ?>
            </select><br>
            <label for="content">Treść</label>
            <textarea rows="20" name="content" id="content" class="textarea ui-widget-content ui-corner-all"></textarea>  
      </fieldset>
    </form>
</div>