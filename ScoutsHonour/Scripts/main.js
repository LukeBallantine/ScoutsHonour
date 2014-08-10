$(function () {

    // setup goal autocomplete
    var createGoalAutocomplete = function () {
        var $input = $(this);
        var target = $input.attr("data-sh-target");
        var options = {
            source: $input.attr("data-sh-goalautocomplete"),
            select: function (event, ui) {
                var split = ui.item.label.split(':');
                var section = $.trim(split[0]);
                var part = (split.length > 1) ? $.trim(split[1]) : '';
                var dom = "<div>" +
                            "<input type='hidden' name='goals' id='goal-" + ui.item.value + "' value='" + ui.item.value + "' />" +
                            "<a href='#' class='sh-delete pure-button button-small bg-error pull-right'><i class='fa fa-times'></i></a>" +
                            "<em>" + section + "</em><br />" +
                            "<span>" + part + "</span>" +
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

    $("input[data-sh-goalautocomplete]").each(createGoalAutocomplete);

    //$("<i class='fa fa-cog'></i>").appendTo("td a.title");

    // auto-set event title
    $("input.event-date").on("blur", function () {
        var $this = $(this);
        var $title = $("input.event-title");
        if ($title.length && $title.val() == "") {
            $title.val("Cub night " + $this.val());
            $title.select();
        }
    })

    $("div.ui-accordion").accordion({
        collapsible: true,
        heightStyle: "content",
        icons: {
            "header": "fa fa-chevron-circle-right",
            "activeHeader": "fa fa-chevron-circle-down"
        }
    });

    $(document).tooltip();

});