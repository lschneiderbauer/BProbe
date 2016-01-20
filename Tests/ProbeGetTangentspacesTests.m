ProbeInit[];

VerificationTest[ProbeGetTangentspaces[]
	, ProbeGetTangentspaces[]
	, TestID -> "ProbeGetTangentspaces-inited"
];


ProbeInit[PauliMatrix[{1,2,3}], Probe->"Laplace"];
ProbeScan[StepSize->0.8];

VerificationTest[Cross[#[[1]], #[[2]]] & /@ ProbeGetTangentspaces[]
	, {{0.94787,-0.0315783,-0.317089},{0.750295,0.599411,-0.278862},{0.729955,-0.648531,-0.21581},{0.938521,0.00202399,0.345217},{0.542307,-0.0513231,-0.838611},{0.688735,0.617109,0.380554},{0.483711,0.319104,-0.814982},{0.18664,0.945032,-0.268476},{0.658163,-0.609774,0.441585},{0.482291,-0.403244,-0.777683},{0.152812,-0.970373,-0.187147},{0.518234,0.00308405,0.855233},{0.453017,0.583726,-0.673825},{0.393603,-0.663598,-0.636171},{-0.101235,-0.0253921,-0.994538},{0.393241,0.289422,0.872695},{0.109295,0.933732,0.340879},{0.134072,0.818479,-0.558674},{-0.413578,0.769083,-0.487303},{0.347784,-0.25239,0.902965},{0.0745535,-0.917271,0.391224},{0.716293,0.206308,-0.666604},{0.0362423,-0.83493,-0.549162},{-0.400112,-0.772047,-0.493816},{-0.216085,-0.90741,0.360435},{0.406346,-0.622272,0.669074},{0.402616,0.627071,0.666845},{-0.130399,0.00139139,0.991461},{-0.195445,0.718635,-0.667357},{0.449245,0.889161,-0.0870171},{0.880815,-0.355031,-0.313237},{-0.267131,-0.682022,-0.680799},{0.00330618,-0.639256,-0.768987},{-0.694978,-0.100847,-0.711923},{0.60037,-0.323804,0.731237},{0.012935,0.774566,0.632361},{-0.529812,0.762079,0.372203},{0.173419,0.508967,0.843136},{0.0698224,0.994599,0.076794},{-0.838748,0.543484,-0.0335673},{-0.561659,0.206205,-0.80126},{-0.0200616,-0.747743,0.663685},{-0.563329,-0.740663,0.366167},{0.104644,-0.469811,0.876543},{0.472821,0.771738,-0.425277},{0.986427,0.150812,-0.0649495},{0.132666,0.17187,-0.976146},{0.0183995,-0.99545,0.0934961},{-0.842478,-0.535029,-0.0630422},{-0.354421,-0.451695,0.818754},{0.886596,-0.287002,0.362735},{-0.252988,-0.685254,0.682952},{0.351435,-0.932146,0.0871598},{0.885025,0.296076,0.359263},{-0.25725,0.683704,0.682914},{-0.720965,0.00436849,0.692958},{-0.764667,0.479214,-0.430858},{-0.142701,0.987633,-0.0649384},{0.904924,0.411181,-0.10974},{-0.810014,-0.415299,-0.41401},{-0.208546,-0.973876,-0.0898596},{0.627168,-0.497528,-0.599272},{-0.622022,-0.500756,-0.601941},{-0.587748,0.542911,-0.599833},{-0.989532,-0.0804423,-0.119815},{0.295354,-0.840614,0.454019},{-0.158039,0.499498,0.851778},{-0.669125,0.69173,-0.271627},{-0.877302,0.203029,0.434879},{0.746916,0.286377,0.600088},{-0.476947,0.508154,0.717148},{0.0717487,-0.12948,0.988983},{-0.941319,0.214985,-0.260191},{-0.662896,-0.691534,-0.286966},{-0.904881,-0.174841,0.388098},{0.0359771,0.18094,0.982836},{-0.0115121,0.564351,-0.825455},{0.870939,-0.481902,0.0961064},{-0.43151,0.457235,-0.777647},{-0.209681,-0.39052,-0.896397},{0.636025,-0.771612,0.00929948},{-0.680962,-0.454669,0.574079},{0.658596,0.74957,-0.0663061},{0.969818,-0.242851,-0.0218105},{-0.634046,-0.763837,0.120577},{-0.736861,0.287238,0.611988},{-0.392259,0.274256,0.878019},{0.478441,0.819395,0.31573},{-0.641147,0.756913,0.126545},{-0.403103,-0.899024,0.171068},{0.75032,-0.160956,-0.641182},{-0.974325,-0.196926,0.109135},{-0.98342,0.181218,0.00677231},{0.521257,-0.741536,-0.422393},{0.178761,-0.143084,-0.973433},{-0.769868,0.15312,-0.619562}}
	, SameTest -> Function[{list1, list2}, Block[{same},
		same = True;
		Do[
			If[(list1[[i]].list2[[i]]-1) > 10^-4,
				same = False;
			];
		,{i,1,Length[list1]}];
		
		Return[same];
	]]
	, TestID -> "ProbeGetTangentspaces-Fuzzysphere"
];