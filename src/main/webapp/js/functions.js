
function valid_check() {
	const frm = document.forms[0];
	const regist_monthf = frm.regist_month;
	const c_namef = frm.c_name;
	const class_areaf = frm.class_area;
	const areaList = ['서울본원	', '성남분원', '대전분원', '부산분원', '대구분원'];
	const teacher_codef = frm.teacher_code;

	let isValid = true;

	if (regist_monthf.value == "") {
		alert('수강월을 입력하지 않았습니다.');
		regist_monthf.focus();
		isValid = false;
	}

	else if (c_namef.value == "") {
		alert('회원명을 입력하지 않았습니다.');
		c_namef.focus();
		isValid = false;
	}

	else if (class_areaf.value == "") {
		alert('강의장소를 입력하지 않았습니다.');
		class_areaf.focus();
		isValid = false;
	}

	else if (teacher_codef.value == "") {
		alert('강의명을 입력하지 않았습니다.');
		teacher_codef.focus();
		isValid = false;
	}

	return isValid;
}

function reset() {
	if (confirm("정보를 지우고 처음부터 다시 입력합니다!")) {
		location = "insert.jsp";
	}

}

function sel_change1() {
	var frm = document.forms[0];
	frm.tuition.value = "";
	frm.teacher_code.options[0].selected = true;
	frm.c_no.value = frm.c_name.value;
}


function sel_change2() {
	var frm = document.forms[0];
	var price = frm.teacher_code.value * 1000;
	if (frm.c_no.value > 20000)
		price *= .5;
	frm.tuition.value = price;
}