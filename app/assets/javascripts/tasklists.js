$(function() {
    $(".show").click(function() {
        $(".allposts").toggle();
        $(this).text(function(i,text){
            return text === "Show All" ? "Hide All" : "Show All";
        });
    });
});
