//禁止重复提交
//submitButton --提交按钮Id
//time 多长时间后可以再次提交
function preventRepeatSubmit(submitButton,time) {
	var btn = $("#"+submitButton+"");
	btn.attr("disabled", true);
	btn.val(time <= 0 ? "提交" : ("" + (time) + "秒后可提交"));
	setInterval(function() {
		if (time <= 0) {
			btn.val("提交");
			btn.attr("disabled", false);
		} else {
			btn.val("" + (time--) + "秒后可提交");
		}
	}, 1000);
}