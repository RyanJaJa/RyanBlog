/**
 * Created by Chia's JaJa on 2017/4/26.
 */

$(window).scroll(function () {
    var offsetTop = 700;
    if ($(window).scrollTop() + offsetTop  > $('.progress-bar').offset().top) {
        $('.progress .progress-bar').css("width",
            function () {
                return $(this).attr("aria-valuenow") + "%";
            }
        )
    }
});

<!-- about script-for-nav -->

$( "span.menu" ).click(function() {
    $( ".head-nav ul" ).slideToggle(300, function() {
    });
});