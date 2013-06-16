<?php
/**
 * Publisher template
 * 
 */
?>

<p>Link do Twojego czatu: <?php if (isset($link)) echo URL::base() . 'comunity/publish/' . $link ?></p>
<script type="text/javascript">
    var flashvars = {
        name1: "hello"
    };
    var params = {allowfullscreen: "true"};
    var attributes = {
        id: "flash",
        name: "flash"
    };
    swfobject.embedSWF("<?= URL::base() ?>assets/swf/simpleBroadcaster.swf", "flash", "400px", "400px", "9.0.0", "<?= URL::base() ?>assets/swf/assets/expressInstall.swf", flashvars, params, attributes);
</script>

<div id="flash">
    <h1>You need the Adobe Flash Player for this demo, download it by clicking the image below.</h1>
    <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
</div>

<div id="chat">
    <div id="chatbox">
    </div>
    <form action="#" method="POST">
        <input type="text" id="usermsg" name="message"/>
        <input type="submit" id="add" name="add"/>
    </form>
</div>


