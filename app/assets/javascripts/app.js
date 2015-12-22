/**
 * Created by Christian on 18.12.2015.
 */
$(document).ready(function() {
    $('select').multiselect();
    $("#category_id").change(function() {
        var form = $("#live_search_form"); // grab the form wrapping the search bar.


        var formData = form.serialize(); // grab the data in the form
        var url = "/search";
        $.get(url,formData, function(html){
            //$("#live-search-results").html(html);
            $("#live-search-results").html(html);
        });
    });
    $("#search").bind("keyup", function () {
        var form = $("#live_search_form"); // grab the form wrapping the search bar.


        var formData = form.serialize(); // grab the data in the form
var url = "/search";
        $.get(url,formData, function(html){
            //$("#live-search-results").html(html);
            $("#live-search-results").html(html);
        });
    });
});