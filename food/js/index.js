function showMoreDesc(id) {
      $('#' + id).toggle(400)
}

overloadCount=0;

function OverloadInc() {
	overloadCount = overloadCount + 1;
	document.getElementById("over_cnt").value = overloadCount;
}

function OverloadDec() {
	overloadCount = overloadCount - 1;
	document.getElementById("over_cnt").value = overloadCount;
}