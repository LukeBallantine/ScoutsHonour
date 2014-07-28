$(function () {

    var createAutocomplete = function () {
        var $input = $(this);
        var target = $input.attr("data-sh-target");
        var options = {
            source: $input.attr("data-sh-autocomplete"),
            select: function (event, ui) {
                var dom = "<div>" +
                            "<input type='hidden' name='goals' id='goal-" + ui.item.value + "' value='" + ui.item.value + "' />" +
                            "<span>" + ui.item.label + "</span>" +
                            "<em class='sh-delete'>X</em>" +
                        "</div>";
                $(dom).prependTo("#" + target);
                $input.val("");
                return false;
            }
        }
        $("#" + target).on("click", ".sh-delete", function () {
            var $this = $(this);
            $this.parent().remove();
        });
        $input.autocomplete(options);
    }

    $("input[data-sh-autocomplete]").each(createAutocomplete);

});