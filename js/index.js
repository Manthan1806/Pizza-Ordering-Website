function showMoreDesc(id) {
      $('#' + id).toggle(400)
}

overloadCount=0;
supremeCount=0;
nvsupremeCount=0;
pepperoniCount=0;

function OverloadInc() {
	overloadCount = overloadCount + 1;
	document.getElementById("over_cnt").value = overloadCount;
}

function OverloadDec() {
	overloadCount = overloadCount - 1;
	document.getElementById("over_cnt").value = overloadCount;
}

function SupremeInc() {
	supremeCount = supremeCount + 1;
	document.getElementById("supreme_cnt").value = supremeCount;
}

function SupremeDec() {
	supremeCount = supremeCount - 1;
	document.getElementById("supreme_cnt").value = supremeCount;
}

function NvSupremeInc() {
	nvsupremeCount = nvsupremeCount + 1;
	document.getElementById("nvsupreme_cnt").value = nvsupremeCount;
}

function NvSupremeDec() {
	nvsupremeCount = nvsupremeCount - 1;
	document.getElementById("nvsupreme_cnt").value = nvsupremeCount;
}

function PepperoniInc() {
	pepperoniCount = pepperoniCount + 1;
	document.getElementById("pepperoni_cnt").value = pepperoniCount;
}

function PepperoniDec() {
	pepperoniCount = pepperoniCount - 1;
	document.getElementById("pepperoni_cnt").value = pepperoniCount;
}