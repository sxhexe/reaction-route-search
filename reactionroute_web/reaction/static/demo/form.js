$(document).ready(function() {
  var info = {
    j2sPath: "/static/j2s",
    script: "load '/static/demo/C.mol'; selectionHalos ON; select None; set picking SELECT ATOM"
  };
  Jmol.getApplet("myJmol", info);
  $("#jsmol").html(Jmol.getAppletHtml(myJmol));
  var loadReactantButton = document.createElement('button');
  loadReactantButton.onclick = function() {
    Jmol.script(myJmol, 'load $'+$("#reactantSMILESInput").val()+'; set picking SELECT ATOM; select None; selectionHalos ON');
  };
  loadReactantButton.textContent = 'load reactant';
  $("#jsmol").append(loadReactantButton);
  var showLabelButton = document.createElement('button');
  showLabelButton.onclick = function() {
    Jmol.script(myJmol, 'select *; label %a');
  };
  showLabelButton.textContent = 'show label';
  // $("#jsmol").append(showLabelButton);
  var activeAtomsButton = document.createElement('button');
  activeAtomsButton.onclick = function() {
    var selected = Jmol.evaluate(myJmol, '{selected}');
    $('#activeAtomsInput').val(selected);
  };
  activeAtomsButton.textContent = 'select active';
  $("#jsmol").append(activeAtomsButton);
});

function show3D() {
  Jmol.script(myJmol, 'load $'+$("#reactantSMILESInput").val()+'; set picking SELECT ATOM; select None; selectionHalos ON');
}


function fillExample() {
  $("#reactantSMILESInput").val("OC=O.CO");
  $("#productSMILESInput").val("COC=O.O");
  $("#activeAtomsInput").val("({0 3:5 10})");
  Jmol.script(myJmol, 'load /static/demo/OC=O.CO.mol; selectionHalos ON; select ({0 3:5 10})');
}

function showCalculationDetails() {
  var container = document.getElementById('calculationDetails');
  while (container.hasChildNodes()) {
    container.removeChild(container.lastChild);
  }
  container.appendChild(document.createElement('br'));

  container.appendChild(document.createTextNode('program'));
  var program = document.createElement('select');
  program.id = 'program';
  container.appendChild(program);
  var programList = ['gaussian'];
  for (var i=0; i < programList.length; i++) {
    var option = document.createElement('option');
    option.value = programList[i];
    option.text = programList[i];
    program.appendChild(option);
  }
  container.appendChild(document.createElement('br'));

  container.appendChild(document.createTextNode('energy optimization keywords'));
  container.appendChild(document.createElement('br'));
  var energyKeywords = document.createElement('input');
  energyKeywords.type = 'text';
  energyKeywords.name = 'energyKeywords';
  energyKeywords.value = '#p pm6 3-21g opt';
  container.appendChild(energyKeywords);
  container.appendChild(document.createElement('br'));

  container.appendChild(document.createTextNode('energy screening'));
  var energyScreenYes = document.createElement('input');
  energyScreenYes.type = 'radio';
  energyScreenYes.name = 'energyScreen';
  energyScreenYes.value = 'Yes';
  energyScreenYes.onclick = showEnergyScreenDetails;

  var energyScreenNo = document.createElement('input');
  energyScreenNo.type = 'radio';
  energyScreenNo.name = 'energyScreen';
  energyScreenNo.value = 'No';
  energyScreenNo.onclick = hideEnergyScreenDetails;
  container.appendChild(energyScreenYes);
  container.appendChild(document.createTextNode('Yes'));
  container.appendChild(energyScreenNo);
  container.appendChild(document.createTextNode('No'));
  container.appendChild(document.createElement('br'));

  var energyScreenDetailsDiv = document.createElement('div');
  energyScreenDetailsDiv.id = 'energyScreenDetails';
  container.appendChild(energyScreenDetailsDiv);

  container.appendChild(document.createTextNode('find transition state'));
  var findTsYes = document.createElement('input');
  findTsYes.type = 'radio';
  findTsYes.name = 'findTs';
  findTsYes.value = 'Yes';
  findTsYes.onclick = showTsDetails;

  var findTsNo = document.createElement('input');
  findTsNo.type = 'radio';
  findTsNo.name = 'findTs';
  findTsNo.value = 'No';
  findTsNo.onclick = hideTsDetails;
  container.appendChild(findTsYes);
  container.appendChild(document.createTextNode('Yes'));
  container.appendChild(findTsNo);
  container.appendChild(document.createTextNode('No'));
  container.appendChild(document.createElement('br'));

  var findTsDetailsDiv = document.createElement('div');
  findTsDetailsDiv.id = 'findTsDetails';
  container.appendChild(findTsDetailsDiv);

}

function showTsDetails() {
  var container = document.getElementById('findTsDetails');
  while (container.hasChildNodes()) {
    container.removeChild(container.lastChild);
  }
  container.appendChild(document.createElement('br'));

  container.appendChild(document.createTextNode('transition state searching keywords'));
  container.appendChild(document.createElement('br'));
  var energyKeywords = document.createElement('input');
  energyKeywords.type = 'text';
  energyKeywords.name = 'tsKeywords';
  energyKeywords.value = '#p pm6 3-21g opt(ts, noeigen, calcfc) freq';
  container.appendChild(energyKeywords);
  container.appendChild(document.createElement('br'));

  container.appendChild(document.createTextNode('TS energy threshold'));
  container.appendChild(document.createElement('br'));
  var tsEnergyThresh = document.createElement('input');
  tsEnergyThresh.type = 'text';
  tsEnergyThresh.name = 'tsEnergyThresh';
  tsEnergyThresh.value = '200.0';
  container.appendChild(tsEnergyThresh);
  container.appendChild(document.createTextNode(' kcal/mol'));
  container.appendChild(document.createElement('br'));
}
function hideTsDetails() {
  var container = document.getElementById('findTsDetails');
  while (container.hasChildNodes()) {
    container.removeChild(container.lastChild);
  }
}
function showEnergyScreenDetails() {
  var container1 = document.getElementById('energyScreenDetails');
  while (container1.hasChildNodes()) {
    container1.removeChild(container1.lastChild);
  }
  container1.appendChild(document.createElement('br'));
  container1.appendChild(document.createTextNode('intermediate energy threshold'));
  container1.appendChild(document.createElement('br'));
  var intermEnergyThresh = document.createElement('input');
  intermEnergyThresh.type = 'text';
  intermEnergyThresh.name = 'intermEnergyThresh';
  intermEnergyThresh.value = '200.0';
  container1.appendChild(intermEnergyThresh);
  container1.appendChild(document.createTextNode(' kcal/mol'));
  container1.appendChild(document.createElement('br'));
}
function hideEnergyScreenDetails() {
  var container2 = document.getElementById('energyScreenDetails');
  while (container2.hasChildNodes()) {
    container2.removeChild(container2.lastChild);
  }
}
function hideCalculationDetails() {
  var container = document.getElementById('calculationDetails');
  while (container.hasChildNodes()) {
    container.removeChild(container.lastChild);
  }
}
