<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<script src="<?= URL::base() ?>assets/js/extremes.js" type="text/javascript"></script>
<style>
    #circle {
        width: 500px;
        height: 500px;
        background-color: #ccc;
        -moz-border-radius: 250px;
        -webkit-border-radius: 250px;
        border-radius: 250px;
    }
    
    #circle ul {
        width: 475px;
        height: 475px;
        margin-left: 10px;
    }
    
    #circle li {
        list-style-type: none;
    }
    
    #wybierz {
        margin-left: 240px;
        width: 2px;
        background: gray;
        height: 200px;
    }
    
</style>
<div id="wybierz">
    <br>
</div>

<div id="circle">
    <ul class="colors">
        <li class="red">Red</li>
        <li class="brick">Brick</li>
        <li class="orange">Orange</li>
        <li class="yellow">Yellow</li>
        <li class="lime">Lime</li>
        <li class="green">Green</li>
        <li class="bondi">Bondi</li>
        <li class="aqua">Aqua</li>
        <li class="blue">Blue</li>
        <li class="navy">Navy</li>
        <li class="purple">Purple</li>
        <li class="violet">Violet</li>
        <li class="pink">Pink</li>
    </ul>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $('.colors').extremes({
            diameter: 195
        });
        var left = null;
        var top = null;
        $(document).keydown(function(e) {
            if (e.keyCode === 37) {
                left = "+=25";
                top = "-1px";
                $('.colors').next("li");
            } else if (e.keyCode === 39) {
                left = "-=26";
                top = "+1px";
                $('.colors').prev("li");
            } else {
                left = null;
                return false;
            }

            $('#circle').animate({borderSpacing: left}, {
                step: function(now, fx) {
                    $(this).css('-webkit-transform', 'rotate(' + now + 'deg)');
                    $(this).css('-moz-transform', 'rotate(' + now + 'deg)');
                    $(this).css('-ms-transform', 'rotate(' + now + 'deg)');
                    $(this).css('-o-transform', 'rotate(' + now + 'deg)');
                    $(this).css('transform', 'rotate(' + now + 'deg)');
                    $(this).css('margin-top',top);
                },
                duration: 'normal'
            }, 'linear');

        });

    });
</script>
