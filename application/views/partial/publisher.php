
<p>Link do Twojego czatu: <?php
    if (isset($link)) {
        echo URL::base() . 'comunity/publish/' . $link->username;
    } else {
        $link = null;
    }
    ?></p>
<script type="text/javascript">
    var flashvars = {
        streamer: "rtmp://localhost/show4u",
        type: "rtmp",
        file: "rtmp://localhost/show4u/vuz3",
        name: "vuze",
        controlbar: 'bottom',
        stretching: 'none',
        frontcolor: '86C29D', // text & icons                  (green)
        backcolor: '849BC1', // playlist background           (blue)
        lightcolor: 'C286BA', // selected text/track highlight (pink)
        screencolor: 'FFFFFF', // screen background             (black)
        id: 'playerID',
        autostart: 'true'
    };

    var params = {
        allowfullscreen: "true",
        allowscriptscreen: "always",
        bgcolor: "#FFFFFF"
    };
    var attributes = {
        id: "flash",
        name: "flash",
    };
    swfobject.embedSWF("<?= URL::base() ?>assets/swf/simpleBroadcaster.swf", "flash", "400px", "400px", "9.0.0", false, flashvars, params, attributes);
</script>


<div id="flash">
    <h1>You need the Adobe Flash Player for this demo, download it by clicking the image below.</h1>
    <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
</div>

<div id="chat" class="chat_<?= $link->id ?>">
    <div id="chatbox">

    </div>
    <input type="text" id="usermsg" name="message"/>
    <input type="button" id="add" name="add" value="Send"/>
</div>

<div id="services">
    <table id="listaOsob">
        <thead>
            <tr>
                <th>Lp</th>
                <th>Tytuł</th>
                <th>Cena</th>
                <th>+/-</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type="text" name="user_id" id="user_id" value="<?= $link->id ?>"/></td></td>
                <td><input type="text" name="title" id="title"/></td>
                <td><input type="text" name="price" id="price"/></td>
                <td><img src="http://antczak.org/source/dynamic_forms/11.png" id="dodajUsluge" alt="dodaj"></td>
            </tr>
        </tbody>
    </table>
</div>

<div id="service">
    <?php
    if (isset($services)) {
        echo "<table>";
        if (is_array($services) || is_object($services)) {
            ?>
            <tr>
                <td>Tytul</td>
                <td>Cena</td>
            </tr>
            <?php
            foreach ($services as $service) {
                ?>
                <tr>
                    <td><?= $service->title ?></td>
                    <td><?= $service->price ?></td>
                </tr>
                <?php
            }
        }
        echo "</table>";
    }
    ?>
</div>