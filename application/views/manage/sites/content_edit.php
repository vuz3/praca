<?php
/**
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
if (isset($elements)) {
    ?>
    <form action="" method="POST" class="content_edit" enctype="multipart/form-data">
        <label for="id">ID</label>
        <input type="text" name="id" id="id" value="<?= $elements->id ?>" /><br>
        <label for="title">Tytuł</label>
        <input type="text" name="title" id="title" value="<?= $elements->title ?>" /><br>
        <label for="template">Szablon</label>
        <input type="text" name="template" id="template" value="<?= $elements->sites->template ?>" /><br>        
        <?php
        if (null === $elements->img) {
            ?>
            <label for="img">Zdjęcie</label>
            <input type="file" name="img" id="img" value="<?= $elements->img ?>" /><br>
            <?php
        } else {
            ?>
            <label for = "img">Zdjęcie</label>
            <input type="text" name="img" id="img" value="<?= $elements->img ?>"/><br>
        <?php
    }
    ?>
        <label for="type">Typ</label>
        <input type="text" name="type" id="type" value="<?= $elements->type ?>" /><br>
        <label for="cont">Treść</label>
        <textarea name="cont" id="cont" cols="65" rows="30" required><?= $elements->content ?></textarea>
        <input type="submit" value="Edytuj" name="edytuj" id="edytuj"/>
    </form>

    <?php
}
?>