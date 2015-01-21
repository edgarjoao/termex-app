var bigImageContainerId = "big_image_container";
var togglerId = "toggler";
var thumbsContainerId = "thumbs_container";

// ----------------------------------------
$(document).ready(function() {
	var bigImageEl = $("#" + bigImageContainerId)[0];
	var togglerEl = $("#" + togglerId);
	var thumbsEl = $("#" + thumbsContainerId);
	var prevButtonId = "";

	thumbsEl.hide();

	$(".image_gallery a").click(function (){return false});
	$(".image_gallery img.thumb").each(function() {
		$(this).click(function () {
			$("#" + bigImageContainerId + " img").attr( {
				src : $(this).parent().attr("rel")
			}).appendTo($(bigImageEl));
			
		});
	});
	togglerEl.click(function() {
		thumbsEl.toggle();
	});
	$("#" + thumbsContainerId + " a.close").click(function() {
		thumbsEl.hide();
	});

	$("#prev_button").click(function() {
		var imgSrc = $("#" + bigImageContainerId + " img").attr("src");
		if ($(".image_gallery a[rel="+imgSrc+"]").parent().prev().length)
		{
			$(".image_gallery a[rel="+imgSrc+"]").parent().prev().find("img").click();
		}
		else
		{
			$(".image_gallery:last-child").find("img").click();
		}
	});
	$("#next_button").click(function() {
		var imgSrc = $("#" + bigImageContainerId + " img").attr("src");
		if ($(".image_gallery a[rel="+imgSrc+"]").parent().next().length)
		{
			$(".image_gallery a[rel="+imgSrc+"]").parent().next().find("img").click();
		}
		else
		{
			$(".image_gallery img.thumb:first").click();
		}
	});
});

// ----------------------------------------
