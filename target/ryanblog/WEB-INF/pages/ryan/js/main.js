/**
 * Created by Chia's JaJa on 2017/5/18.
 */

<!-- script-for-nav -->

$( "span.menu" ).click(function() {
    $( ".head-nav ul" ).slideToggle(300, function() {
    });
});

/*hide phone URLscroll*/
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }


/* contact send email form */
$(document).ready(function(){
    $("#message").val("");
    $("#subject").val("");
    $("#address").val("");
    $("#name").val("");
});