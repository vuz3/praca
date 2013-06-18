<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>

<script type="text/javascript">
        var flashvars = {
        streamer: "rtmp://localhost/show4u",
        type: "rtmp",
        file: "rtmp://localhost/show4u/duupa",
        name: "dupa",
        controlbar: 'bottom',
        stretching: 'none',
        frontcolor: '86C29D', // text & icons                  (green)
        backcolor: '849BC1', // playlist background           (blue)
        lightcolor: 'C286BA', // selected text/track highlight (pink)
        screencolor: 'FFFFFF', // screen background             (black)
        id: 'playerID',
        autostart: 'false'
    };
      swfobject.embedSWF("<?= URL::base() ?>assets/swf/simpleSubscriber", "flash", "400px", "400px", "9.0.0", "<?= URL::base() ?>assets/swf/assets/expressInstall.swf", flashvars);
</script>

<div id="flash">
</div>

