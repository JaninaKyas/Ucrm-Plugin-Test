let contractData         = {};

let data                 = {};
let displayAddress       = {};
let defaultAddress       = {};
let technologyAddress    = {};
let technologyOldAddress = {};

var isFormConRequest     = false;
var isValidConRequest    = true;
var isDisplayDiffAddress = false;
var isSameTechAddress    = false;

var choosenRateId        =  0;
var choosenPath          = -1;

var errorMsg             = document.getElementById("asbErrorMsg");

const navigateToFormStep = (stepNumber) => {	
  document.querySelectorAll(".form-step").forEach((formStepElement) => {
    formStepElement.classList.add("d-none");
  });

  document.querySelectorAll(".form-stepper-list").forEach((formStepHeader) => {
    formStepHeader.classList.add("form-stepper-unfinished");
    formStepHeader.classList.remove("form-stepper-active", "form-stepper-completed");
  });

  document.querySelector("#step-" + stepNumber).classList.remove("d-none");
  const formStepCircle = document.querySelector('li[step="' + stepNumber + '"]');

  formStepCircle.classList.remove("form-stepper-unfinished", "form-stepper-completed");
  formStepCircle.classList.add("form-stepper-active");

  for (let index = 0; index < stepNumber; index++) {
    const formStepCircle = document.querySelector('li[step="' + index + '"]');

    if (formStepCircle) {
      formStepCircle.classList.remove("form-stepper-unfinished", "form-stepper-active");
      formStepCircle.classList.add("form-stepper-completed");
    }
  }
};

document.querySelectorAll(".btn-navigate-form-step").forEach((formNavigationBtn) => {	
  formNavigationBtn.addEventListener("click", () => {
    const stepNumber    = parseInt(formNavigationBtn.getAttribute("step_number"));
	const stepDirection = parseInt(formNavigationBtn.getAttribute("step_direction"));
	const elementId     = formNavigationBtn.getAttribute("id");
	var   canChangeStep = true;

	// stepDirection === 1 -- forward; stepDirection === -1 -- backward
	if (stepDirection === 1) {
	  // step == 2
	  if (stepNumber === 2) {
	    canChangeStep = validateAvailibityForm();

        if (canChangeStep) {
		  executeAvailabilitySearch();
	    }
	  }
		
	  if (canChangeStep && stepNumber === 3) {		  
	    canChangeStep = isValidConRequest;
		  
        var cusError  = document.getElementById("cusError");
		var cusError3 = document.getElementById("cusError3");
        if (cusError != null && cusError != undefined) {
	      cusError.style.display = "none";
        }
		  
        if (cusError3 != null && cusError3 != undefined) {
	      cusError3.style.display = "none";
        }
	  }
		
	  if (canChangeStep && stepNumber === 4) {		  
		if (choosenPath == 1) {
          canChangeStep = validateCustomerData();
		  if (canChangeStep) {
			executeContractPK();  
		  }
	    } else if (choosenPath == 2) {
		  executeGlassFibreCustomerData();  
		} else {
		  executeConRequestRateData();
		}  
	  }
	} else {
	  if (stepNumber === 2) {
		var cusError = document.getElementById("cusError");
		if (cusError != null) {
		  cusError.style.display = "none";
		}  
	  }
	  
      resetRequiredFields();
	}
	
	if (canChangeStep) {
      navigateToFormStep(stepNumber);
	}
  });
});

function resetRequiredFields() {
  var requiredInputs = document.getElementsByClassName("form-control required");
  var requiredRadio  = document.getElementsByClassName("required2");
	
  var cusError  = document.getElementById("cusError");
  var cusError3 = document.getElementById("cusError3");
	
  for (i = 0; i < requiredInputs.length; i++) {
	requiredInputs[i].classList.remove("invalid");
  }
		  
  for (j = 0; j < requiredRadio.length; j++) {
	requiredRadio[j].parentNode.children[1].style.color = "#444";
  }
	
  errorMsg.style.display = "none";
	
  if (cusError != null) {
	cusError.style.display = "none";
  }
  
  if (cusError3 != null) {
	cusError3.style.display = "none";
  }
}

function validateAvailibityForm() {	
  var returnValue    = true;
  var requiredInputs = document.getElementsByClassName("form-control required");
  var requiredRadio  = document.getElementsByClassName("required2");

  for (i = 0; i < requiredInputs.length; i++) { 
    if (requiredInputs[i].value == null
	 || requiredInputs[i].value == ""
	 || requiredInputs[i].value.length == 0) {
	  if (returnValue) {
		returnValue = false; 
	  }

	  requiredInputs[i].className += " invalid";
	}
  }

  for (j = 0; j < requiredRadio.length; j++) {
	if (requiredRadio[j].checked) {
	  returnValue = true;
	  break;
	} else {
	  requiredRadio[j].className += " invalid";
	  returnValue = false; 
	}
  }

  if (!returnValue) {
	errorMsg.classList.remove("d-none");
	errorMsg.style.display = "block";
  }

  return returnValue;
}

function validateConRequest() {
  var returnValue    = true;
  var requiredInputs = document.getElementsByClassName("form-control requiredAA");
	
  for (i = 0;i < requiredInputs.length; i++) {
    if (requiredInputs[i].value == null
	 || requiredInputs[i].value == ""
	 || requiredInputs[i].value.length == 0) {
	  if (returnValue) {
		returnValue = false; 
	  }

	  requiredInputs[i].className += " invalid";
	}
  }
	
  if (!returnValue) {
	document.getElementById("cusError").style.display = "block";  
  }

  return returnValue;
}

function validateCustomerData() {	
  var returnValue   = true;
  var isOver18Years = true;
	
  var requiredInputs  = document.getElementsByClassName("form-control requiredRC");
  var requiredInputs1 = document.getElementsByClassName("form-control requiredRC1");
  var bDayField       = document.getElementById("birthDay");

  for (i = 0;i < requiredInputs.length; i++) {
    if (requiredInputs[i].value == null
	 || requiredInputs[i].value == ""
	 || requiredInputs[i].value.length == 0) {
	  if (returnValue) {
		returnValue = false; 
	  }

	  requiredInputs[i].className += " invalid";
	}
  }

  if (isDisplayDiffAddress && document.getElementById("caDiffAddress").checked) {
    for (i = 0;i < requiredInputs1.length; i++) {
      if (requiredInputs1[i].value == null
	   || requiredInputs1[i].value == ""
	   || requiredInputs1[i].value.length == 0) {
	    if (returnValue) {
		  returnValue = false; 
	    }

	    requiredInputs1[i].className += " invalid";
	  }
    } 
  }
	
  var cusError2 = document.getElementById("cusError2");
  var cusError3 = document.getElementById("cusError3");
  
  if (cusError2 != null && !returnValue) {
	cusError2.style.display = "block";
  } else if (bDayField != null && returnValue) {
	var ageYears = getAge(bDayField.value);
	  
	if (ageYears < 18) {
	  cusError2.style.display = "none";
	  cusError3.style.display = "block";

	  isOver18Years = false;
	  returnValue   = isOver18Years;
	}
  }
	
  return returnValue;
}

async function executeAvailabilitySearch(type = 1) {	
  var url           = "https://neu.brehna.net/auftrag/rates.php";
  var checkedBoxes  = document.querySelectorAll('input[name=checkConTech]:checked');
  var conKind       = document.querySelectorAll('input[name=conKind]:checked');
  var step2Lable    = document.getElementById("step2Lable");
  var step3Lable    = document.getElementById("step3Lable");
  var mspChilds     = document.getElementById("multi-step-form-container").getElementsByTagName("li");
  var activeStepNr  = 0;
	
  for (k = 0; k < mspChilds.length; k++) {
    if (mspChilds[k].classList.contains("form-stepper-active")) {
	  activeStepNr = parseInt(mspChilds[k].getAttribute("step"));
	  break;
	}
  }
	
  if (type == 1) {	  
	defaultAddress = {
	  "street"   : document.getElementById("asbStreet").value,
	  "hNr"      : document.getElementById("asbHNr").value,
      "zipcode"  : document.getElementById("asbPlz").value,
	  "place"    : document.getElementById("asbPlace").value,
      "district" : document.getElementById("asbDistrict").value
    }
  } else {	  
	technologyAddress = {
	  "street"   : document.getElementById("caStreet").value,
	  "hNr"      : document.getElementById("caHNr").value,
      "zipcode"  : document.getElementById("caZipcode").value,
	  "place"    : document.getElementById("caPlace").value,
      "district" : document.getElementById("caDistrict").value
    }
  }
  
  data = {
    "defaultAddress"    : defaultAddress,
	"technologyAddress" : technologyAddress,
	"conKind"           : conKind[0].value,
	"selTech"           : checkedBoxes[0].value,
	"oldTechAddress"    : technologyOldAddress
  }
	
  displayAddress                      = data["defaultAddress"];
  displayAddress["technologyAddress"] = technologyAddress;
	
  // set data to save in database
  contractData["postalAddress"] = {
	"street"   : document.getElementById("asbStreet").value,
	"hNr"      : document.getElementById("asbHNr").value,
    "zipcode"  : document.getElementById("asbPlz").value,
	"place"    : document.getElementById("asbPlace").value,
    "district" : document.getElementById("asbDistrict").value
  };
  contractData["technoAddress"] = technologyAddress;
  contractData["contractCateg"] = data["conKind"];
  contractData["selectedTechn"] = data["selTech"];
	
  let params = {
    "method": "POST",
    "headers": {
	  "Content-Type": "application/json; charset=utf-8"
    },
    "body": JSON.stringify(data)
  }
	
  try {
    var response = await fetch(url, params)
	  .then(function(response) {
	    return response.json();
	  })
	  .catch((error) => {
	    console.log(error)
	  });
	  
	  // display button "Weiter"
	  document.getElementById("disForward").style.display   = response["displayForward"];
	  // display button "Zurück" (bottom button)
	  document.getElementById("backBtnStep2").style.display = response["backBtnStep2"]
	  
	  choosenPath = response["ident"];
	  isSameTechAddress = JSON.stringify(response["techAddress"]) == 
		                  JSON.stringify(response["oldTechAddress"]);
	  
	  switch(response["ident"]) {
	    case 1:
		  removeChildren(step2Lable);
		  setStepProgressbarLable(step2Lable, response["step2Lable"]);
	      displayStep2Content(response["step2"]);

		  document.getElementById("btnLable1").style.display = "block";
		  document.getElementById("btnLable2").style.display = "none";
		  document.getElementById("btnLable3").style.display = "block";
          document.getElementById("btnLable4").style.display = "none";

		  removeChildren(step3Lable);
	      setStepProgressbarLable(step3Lable, "Kundendaten");
			  
		  isFormConRequest = false;
          technologyOldAddress = technologyAddress;

		  break;
	    case 2:
		  removeChildren(step2Lable);
		  setStepProgressbarLable(step2Lable, response["step2Lable"]);
		  displayStep2Content(response["step2"]);

		  document.getElementById("btnLable1").style.display = "block";
		  document.getElementById("btnLable2").style.display = "block";
		  document.getElementById("btnLable3").style.display = "none";
		  document.getElementById("btnLable4").style.display = "block";

		  removeChildren(step3Lable);
	      setStepProgressbarLable(step3Lable, "Kundendaten");
			  
		  isFormConRequest = false;
		  technologyOldAddress = technologyAddress;
			  
		  break;
	    case 3:  
		  removeChildren(step2Lable);
		  setStepProgressbarLable(step2Lable, response["step2Lable"]);
		  displayStep2Content(response["step2"]);
		
	      document.getElementById("btnLable1").style.display = "block";
		  document.getElementById("btnLable2").style.display = "none";
		  document.getElementById("btnLable3").style.display = "block";
          document.getElementById("btnLable4").style.display = "none";
			
		  removeChildren(step3Lable);
	      setStepProgressbarLable(step3Lable, "Rückruf");
			  
		  isFormConRequest = true;
		  document.getElementById("cusError").style.display = "none";
			  
		  break;
		case 4:
		  removeChildren(step2Lable);
		  setStepProgressbarLable(step2Lable, response["step2Lable"]);
		  displayStep2Content(response["step2"]);
			  
		  isFormConRequest = false;
		  technologyOldAddress = technologyAddress;
			  
		  break;
	}
  } catch {
    console.error('Promise rejected');
  }
}

async function loadStep3Content(elementId) {	
  var stepLabel  = document.getElementById("step2Lable").innerText;
  var step3      = document.getElementById("step3Result");
  var url        = '';
	
  let params = {
    "method": "POST",
    "headers": {
	  "Content-Type": "application/json; charset=utf-8"
    },
    "body": JSON.stringify(displayAddress)
  }
	
  if (stepLabel == 'Tarife') {
    // path to "Auftragsbestellung"
    url = "https://neu.brehna.net/auftrag/rates_customer.php";
  } else if (stepLabel == 'Ergebnis' && elementId == 'disForward') {
    // path to "Glasfaserhausanschluss"
    url = "https://neu.brehna.net/auftrag/glass_fibre_customer.php";
  } else if (stepLabel == 'Ergebnis' && elementId == 'conAS') {
    // path to "Anschlussanfrage"
	url = "https://neu.brehna.net/auftrag/connection_request_customer.php";
  } else {
	// path to "Anschlussanfrage" -- recall
    url      = "https://neu.brehna.net/auftrag/recall.php";
  }
	
  try {
    var response = await fetch(url, params)
	  .then(function(response) {
	    return response.json();
	  })
	  .catch((error) => {
	    console.log(error)
	  });
	  
	if (response) {		
      // remove all children from parent
	  removeChildren(step3);
	  // display form
	  setStepProgressbarLable(step3, response["step3"]);

	  // display 
	  if ("displayTechAddress" in response) {
	    document.getElementById("techAddress").style.display = response["displayTechAddress"];
	  }
		
	  if ("checkTechAddress" in response) {
		document.getElementById("caDiffAddress").checked = response["checkTechAddress"];
	  }
		
	  // display page without error message when loading it for the first time
	  var cusError = document.getElementById("cusError");
	  if (cusError != null) {
		cusError.style.display = "none";
	  }
		
	  var cusError2 = document.getElementById("cusError2");
	  var cusError3 = document.getElementById("cusError3");
	  if (cusError2 != null) {
		cusError2.style.display = "none";
	  }

	  if (cusError3 != null) {
		cusError3.style.display = "none";  
	  }
	}
  } catch {
    console.error('Promise rejected');
  }
}

async function executeContractPK() {
  var resultStep2 = document.getElementById("ratesResult"); 
  var stepLabel   = document.getElementById("step4Lable");
  var step4       = document.getElementById("step4Result");
  var url         = 'https://neu.brehna.net/auftrag/rates_options.php';
  var district    = '';

  // set data for save in database
  contractData["salutation"]     = document.getElementById("salutation").value;
  contractData["firstName"]      = document.getElementById("fName").value;
  contractData["lastName"]       = document.getElementById("lName").value;
  contractData["birthDate"]      = document.getElementById("birthDay").value;
  contractData["techLocaTAE"]    = document.getElementById("psTae").value;
  contractData["defaultLocaTAE"] = document.getElementById("conTae").value;
  contractData["phone"] = document.getElementById("phone").value;
  contractData["mobil"] = document.getElementById("mobil").value;
  contractData["eMail"] = document.getElementById("mail").value;
	
  if (  isDisplayDiffAddress
	|| ( !isSameTechAddress
	&& technologyAddress    != null
	&& technologyOldAddress != null
	&& technologyAddress.length    > 0
	&& technologyOldAddress.length > 0)) {
	// remove old content
	removeChildren(resultStep2);
	  
	// performed new search and replaced old content from step 2
	await executeAvailabilitySearch(2);
	  
	// go back to step 2
	navigateToFormStep(2);
  }

  let params = {
    "method": "POST",
    "headers": {
	  "Content-Type": "application/json; charset=utf-8"
    },
    "body": JSON.stringify(data)
  }

  try {
    var response = await fetch(url, params)
	  .then(function(response) {
	    return response.json();
	  })
	  .catch((error) => {
	    console.log(error)
	  });
	  
    if (response) {
	  // remove all childrens from step 4
	  removeChildren(step4);
		
	  // append content to step 4
	  setStepProgressbarLable(step4, response["step4content"]);
		
	  // hide sub menus
	  document.getElementById("phoneSubMenu").style.display = "none";
	  document.getElementById("portingNr"   ).style.display = "none";
	}
  } catch {
    console.error('Promise rejected');
  }
}

async function executeGlassFibreCustomerData() {
  var resultStep2 = document.getElementById("ratesResult"); 
  var stepLabel   = document.getElementById("step4Lable");
  var step4       = document.getElementById("step4Result");
  var url         = 'https://neu.brehna.net/auftrag/glass_fibre_connection_data.php';
	
  let params = {
    "method": "POST",
    "headers": {
	  "Content-Type": "application/json; charset=utf-8"
    },
    "body": JSON.stringify(data)
  }
  
  try {
    var response = await fetch(url, params)
	  .then(function(response) {
	    return response.json();
	  })
	  .catch((error) => {
	    console.log(error)
	  });
	  
	if (response) {
	  // change lable from multi step progressbar step 4
	  removeChildren(stepLabel);
	  setStepProgressbarLable(stepLabel, response["step4label"]);
		
	  // change content from multi step progressbar step 4
	  removeChildren(step4);
	  setStepProgressbarLable(step4, response["step4content"]);
	}
  } catch {
    console.error('Promise rejected');
  }
}

async function executeConRequestRateData() {
  var resultStep2 = document.getElementById("ratesResult"); 
  var stepLabel   = document.getElementById("step4Lable");
  var step4       = document.getElementById("step4Result");
  var url         = 'https://neu.brehna.net/auftrag/connection_request_rate.php';
	
  let params = {
    "method": "POST",
    "headers": {
	  "Content-Type": "application/json; charset=utf-8"
    },
    "body": JSON.stringify(data)
  }
  
  try {
    var response = await fetch(url, params)
	  .then(function(response) {
	    return response.json();
	  })
	  .catch((error) => {
	    console.log(error)
	  });
	  
	if (response) {
      // TO-DO
	}
  } catch {
    console.error('Promise rejected');
  }
}

function displayStep2Content(content) {	
  var step = document.getElementById("ratesResult");

  // remove children from parent element
  removeChildren(step);

  // inserts elements inside the element, before its first child
  setStepProgressbarLable(step, content);
}

function removeChildren(parent) {
  while(parent.hasChildNodes()) {
	parent.removeChild(parent.lastChild);
  }
}

function setStepProgressbarLable(parent, child) {
  parent.insertAdjacentHTML('afterbegin', child);
}

function forwardStep3(lable = "disForward", rateId = -1) {
  var isValid = validateConRequest();
  var errMsg  = document.getElementById("cusError2");
  var errMsg1 = document.getElementById("cusError3");
	
  if (errMsg != null) {
	errMsg.style.display = "none";
  }
	
  if (errMsg1 != null) {
	errMsg1.style.display = "none";
  }
	
  if (choosenPath == 2 || isValid) {
	data["rateId"] = rateId;
	contractData["choosenRateId"] = data["rateId"];
	navigateToFormStep(3);
    loadStep3Content(lable);
  }
	
  if (choosenPath == 2) {
	return true; 
  }

  isValidConRequest = isValid;
	
  return isValidConRequest;
}

function backwardStep1() {
  navigateToFormStep(1);
  resetRequiredFields();
}

function displayTechAddress() {
  var isCheckedDiffAddress = document.getElementById("caDiffAddress").checked;
  document.getElementById("techAddress").style.display = "none";
	
  if (isCheckedDiffAddress) {
	document.getElementById("techAddress").style.display = "block";
  }
	
  isDisplayDiffAddress = isCheckedDiffAddress;
}

function chooseIPAddressOption() {
  // get checkbox elements
  var ipDynamic = document.getElementById("ipDynamic");
  var ipFix     = document.getElementById("ipFix");
	
  // enable checkboxes
  ipDynamic.disabled = false;
  ipFix.disabled     = false;
	
  // disable a checkbox if another is already set
  if (ipDynamic.checked) {
	ipFix.disabled = ipDynamic.checked; 
  } else if (ipFix.checked) {
    ipDynamic.disabled = ipFix.checked;
  }
}

function displaySubmenus(parentId, childId) {
  // get elements
  var chkParent = document.getElementById(parentId);
  var menuChild = document.getElementById(childId);

  // hide child element
  menuChild.style.display = "none";

  // show child if conditions are true
  if (menuChild != null && chkParent.checked) {
    menuChild.style.display = "block";
  }
}

// helper js functions

// calculates age from customer
function getAge(dateString) {
  var today     = new Date();
  var birthDate = new Date(dateString);
	
  var age = today.getFullYear() - birthDate.getFullYear();
  var m   = today.getMonth()    - birthDate.getMonth();
  
  if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
    age--;
  }
	
  return age;
}