//Maya ASCII 2023 scene
//Name: AssetsMashup.ma
//Last modified: Sat, Apr 05, 2025 08:29:38 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "sweepMeshCreator" -dataType "sweepMeshData" -dataType "sweepProfileData"
		 "sweep" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202405151550-05a853e76d";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "9B2A3549-4D06-C7D5-7B5C-77BB5DCE3D91";
createNode transform -s -n "persp";
	rename -uid "6B1A6630-4ABC-E181-33C5-8DB66761416B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.29012534475410406 0.95836566226227771 1.1527172238696102 ;
	setAttr ".r" -type "double3" -1.8000000001391343 -2195.6000000000658 360.00000000024397 ;
	setAttr ".rpt" -type "double3" 5.4357216133698126e-16 -3.1396961959951082e-16 1.8227830585805799e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "22F6BD31-4621-8FF8-A974-CD85340A06C9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.4173373597357226;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 111.47828587287944 91.384601992325713 0.084779663671588512 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0945F99E-40B0-9F00-D082-468AFADCF0C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.0720229708762588 10.261584943173286 1.8797944931260038 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "21E5D409-4925-311E-5B8C-EAA4ED9E3AD3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 9.1155786693374257;
	setAttr ".ow" 0.65755389667184672;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 107.20229708762588 114.60062738358621 187.97944931260037 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "14490DD3-4111-E4BD-69D4-12A42F33EE53";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1633192033813113 0.82528745034171491 10.151223784042902 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8BA04BA8-4A46-873A-6FAC-D7B83658A48A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 8.2714292909168989;
	setAttr ".ow" 1.1834586578125141;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 107.20229708762588 114.60062738358621 187.97944931260037 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C90BC510-4F32-DB14-88C9-E4AB512CF6F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DE59B59C-4F8A-E22B-DD6A-29924902D776";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "wood_pallet";
	rename -uid "DCAF750C-4AFF-394D-F5F1-C591C6F8ECBF";
	setAttr ".t" -type "double3" -8.9002213215418866 0 0 ;
createNode transform -n "legs" -p "wood_pallet";
	rename -uid "A228FC37-4573-0E52-D6D1-ED984165AEB4";
	setAttr ".t" -type "double3" 0.00027712071314454082 0 0 ;
	setAttr ".s" -type "double3" 1 1.0220268416174123 0.99958763132768402 ;
createNode transform -n "pCube9" -p "legs";
	rename -uid "11E7E069-427C-288B-509B-B19C1FE7D1AC";
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "9000B2A0-43EA-DBA1-F4D6-03AE68D9C0A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8" -p "legs";
	rename -uid "9F6FC29C-4975-3DA4-446E-22841296B927";
	setAttr ".t" -type "double3" 1 0 1 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "9BCC1858-4B2E-3FB1-DFD1-0DA786165B4D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube7" -p "legs";
	rename -uid "0B859520-4769-2B06-62A7-59BFE89D1C79";
	setAttr ".t" -type "double3" 1 0 0.5 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "F4816E3B-410A-17DC-E3FA-6EB5C8176D6B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "legs";
	rename -uid "091A273B-40B2-2F0B-DCDF-E6ADBB881ABD";
	setAttr ".t" -type "double3" 0.5 0 0 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "7B1BBE53-4C55-303A-7676-E3A5BB097BEC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "legs";
	rename -uid "9BFDCCDC-42AC-4B27-B931-329BAABC6DAA";
	setAttr ".t" -type "double3" 0.5 0 1 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "5A2D8491-493B-A6AA-7DA8-73A1ACC2E0E2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4" -p "legs";
	rename -uid "B094C0BE-4CA9-CC1F-D71C-FFB8A1F0416D";
	setAttr ".t" -type "double3" 0.5 0 0.5 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "1A68C839-48D8-9927-D19D-1280FD973D1D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "legs";
	rename -uid "E1E1FB7B-4548-6E42-47BD-3F8F18909103";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "19D440CD-484B-BD29-59DE-EC8D3A4F7BC6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "legs";
	rename -uid "609EFD71-4611-FC2B-6F72-DAB84C9A7834";
	setAttr ".t" -type "double3" 0 0 0.5 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "076CBE44-4B61-25D8-69C0-669D8A102C87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "legs";
	rename -uid "50328D9C-412B-9AED-61BC-67BA0806DF30";
	setAttr ".s" -type "double3" 10.300840882436654 7.7630720928863539 9.936312031691978 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "792E0FB5-4CEB-EDE0-506F-089A4E602408";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube16" -p "legs";
	rename -uid "3F153282-43C2-2FC6-0567-A09749392995";
	setAttr ".t" -type "double3" 0.16746744155883789 0.06605477809906006 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "5C3EC081-408D-83CA-3A22-9BBB842256C9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14" -p "legs";
	rename -uid "1F527D95-4821-AA0F-374D-669237A83CF9";
	setAttr ".t" -type "double3" 0.49972286224365237 0.06605477809906006 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "2922B044-4435-51F1-2754-1C8ED49395BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "legs";
	rename -uid "117B8CF4-4D9B-BDEE-7989-2282DBAA92F1";
	setAttr ".t" -type "double3" 0.99972290039062506 -0.048922395706176756 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "36D8CBE2-4D20-C0A7-410A-9FBA5FBCD482";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18" -p "legs";
	rename -uid "570C2A64-46F2-FCE0-60D4-CCB019527070";
	setAttr ".t" -type "double3" 0.83251350402832036 0.06605477809906006 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "D60D94A6-4B5E-5A03-464D-CA92FD71F286";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "legs";
	rename -uid "B30E4C7B-4596-64F7-3B02-60ADCE27343C";
	setAttr ".t" -type "double3" 0.00010876134969294071 -0.048922395706176756 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "CB38EAA9-45A6-C5EA-6215-DDB90A4DF689";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22" -p "legs";
	rename -uid "B991FD3B-43C2-68AF-B3BC-23AFD6FF075F";
	setAttr ".t" -type "double3" 0.49972286224365237 0.047345962524414066 1.0004125213623047 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 9.929811369980003 2.0399912733880976 110.3 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "AF964829-4D27-647D-1811-CC8A2E02941E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15" -p "legs";
	rename -uid "AE9D8D61-4386-F169-8050-1D8C4B088B17";
	setAttr ".t" -type "double3" 0.00010876134969294071 0.06605477809906006 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "945B0BE7-4E62-92A6-3B0E-CDB309DE9B13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "legs";
	rename -uid "98B64DF3-4AB6-A1AD-8DE7-818FEB5A9E31";
	setAttr ".t" -type "double3" 0.49972286224365237 -0.048922395706176756 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "9A3FBBF1-443F-7DD9-924F-48AF1544C77D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube17" -p "legs";
	rename -uid "77A6E0A4-4E20-E8B1-CA56-6CA3E69E26F5";
	setAttr ".t" -type "double3" 0.33811641693115235 0.06605477809906006 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape17" -p "pCube17";
	rename -uid "D3B19717-4239-C865-5B95-3081D35B7911";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19" -p "legs";
	rename -uid "6A0D9F9B-41F4-8528-C212-F3B6FCB50EA5";
	setAttr ".t" -type "double3" 0.66186447143554694 0.06605477809906006 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "62503F4A-4606-4400-FB27-A2B4B1F3A589";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube20" -p "legs";
	rename -uid "42C3588F-41A4-034D-FC53-6D923341932A";
	setAttr ".t" -type "double3" 0.49972286224365237 0.047345962524414066 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 9.929811369980003 2.0399912733880976 110.3 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "1DD586CD-468F-6819-4896-98A2A4517A0C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "legs";
	rename -uid "D254329A-477C-69F8-7F70-71BE204AF99C";
	setAttr ".t" -type "double3" 0.49972286224365237 0.047345962524414066 0.50020626068115237 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 9.929811369980003 2.0399912733880976 110.3 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "7D84C78A-4CCB-7566-B380-4BBCBC6A6776";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "legs";
	rename -uid "0663FD8C-4739-D870-9EB4-B383644A913F";
	setAttr ".t" -type "double3" 0.99972290039062506 0.06605477809906006 0.50020626068115237 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0399912733880976 110.04537926694282 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "83490917-44EE-737C-75D9-D19B70B3A40D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "top_surface" -p "wood_pallet";
	rename -uid "9ED9D280-4EF4-4D74-9C87-32AEF9D1BD61";
createNode transform -n "top_cross" -p "wood_pallet";
	rename -uid "47CED5AB-4BA1-CB3E-4B98-E3B1DEBF5E94";
createNode transform -n "bottom" -p "wood_pallet";
	rename -uid "5C191DC7-45D2-1658-BBC5-18BEA2E1DFD2";
createNode transform -n "mattress";
	rename -uid "A083FA71-44DD-8554-34DB-6FABC0B6387D";
	setAttr ".t" -type "double3" -5.4422469508426694 0.21570690196331421 2.8761256115482805 ;
	setAttr ".s" -type "double3" 3.2466237201247115 0.29734137230223945 2.0116588396222586 ;
createNode mesh -n "mattressShape" -p "mattress";
	rename -uid "B69BDD2D-494F-AC77-A067-6D9F3DA0D068";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49719075858592987 -0.69266718626022339 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Singles_ToTexture";
	rename -uid "54E114B3-4746-1C1F-E892-4E844A3DB49E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.9659167258919146 0 0 ;
createNode transform -n "pCube23" -p "Singles_ToTexture";
	rename -uid "D86A89F1-4C16-A816-58F3-C3AD5FFD32F0";
	setAttr ".t" -type "double3" -0.46194855420948899 0.067509757495384862 0.5 ;
	setAttr ".s" -type "double3" 10.300840882436654 2.0849258380679205 110 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "8FB69023-4BF6-F1F3-3836-ADA64588E4F9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49768185615539551 0.14535944716992721 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube23";
	rename -uid "26A73270-49A7-AF93-1309-45B2F3580BC4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24" -p "Singles_ToTexture";
	rename -uid "E521DCF5-4FEA-3179-DE52-E4A371179B22";
	setAttr ".t" -type "double3" -0.62140448387770253 0 0.65272278096283043 ;
	setAttr ".s" -type "double3" 10.300840882436654 7.9340680523409155 9.9322146078917513 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "7B46E07D-44DE-7733-C192-A2B98E379EDB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.36516487598419189 0.49964015558362007 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCube24";
	rename -uid "C1362034-439B-6133-A9A2-058BE0894FA7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.0049999999 -0.0049999999 0.0049999999
		 0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999 0.0049999999
		 -0.0049999999 0.0049999999 -0.0049999999 0.0049999999 0.0049999999 -0.0049999999
		 -0.0049999999 -0.0049999999 -0.0049999999 0.0049999999 -0.0049999999 -0.0049999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pillow";
	rename -uid "DCA2AA64-434E-10EC-4E45-468006F802AF";
	setAttr ".t" -type "double3" -2.9598099702652756 0.43257912307158253 3.0320330057992546 ;
	setAttr ".s" -type "double3" 0.3656714760489313 0.094466365117692047 0.57894212187985905 ;
createNode mesh -n "pillowShape" -p "pillow";
	rename -uid "92074A8C-4D5A-36C6-738C-3199354BD4DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43827407620847225 0.50617244839668274 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BigShelf";
	rename -uid "08282B94-4C36-844A-7C67-3EA153DA2286";
	setAttr ".t" -type "double3" -5.9174346568427785 0 -0.95454420672343565 ;
createNode transform -n "pCube25" -p "BigShelf";
	rename -uid "D12A03D0-4485-9156-8CFF-E88CD7CB4660";
	setAttr ".t" -type "double3" 0 1.5063562577146739 0 ;
	setAttr ".s" -type "double3" 0.79714014483098006 1.0398724635741523 0.37750255902356672 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "681B5485-4065-7FF8-B284-98ADC915AB80";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube26" -p "BigShelf";
	rename -uid "2D02D253-42B0-4878-CACB-9FA063DA1B45";
	setAttr ".t" -type "double3" -0.92332236215528707 1.5121434307566273 0.21440991381169575 ;
	setAttr ".s" -type "double3" 0.79583164635154302 1.0384754230936069 0.046717081337299057 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "EA6F7FFE-44D4-DAFA-17CE-ADB018FD2DD4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SimpleShelf";
	rename -uid "0CD001DB-4624-A3DA-7E9D-F5BEA7FD7B51";
	setAttr ".rp" -type "double3" -4.7336104142672299 0.42651570104532538 0.0024876190349388595 ;
	setAttr ".sp" -type "double3" -4.7336104142672299 0.42651570104532538 0.0024876190349388595 ;
createNode transform -n "ShelfMetal2" -p "SimpleShelf";
	rename -uid "8E9F6333-4544-EB36-748A-BD93E2CF6145";
	setAttr ".t" -type "double3" -6.0269896277347224 0.66991312728262731 0.0024876873309679515 ;
	setAttr ".s" -type "double3" 0.087665966216345273 1.1899575893517367 0.71613576992745664 ;
createNode mesh -n "ShelfMetal2Shape" -p "ShelfMetal2";
	rename -uid "5D9720C9-40A3-A5A8-7527-189F3B934F91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[6:12]" "f[18:21]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[5]" "f[14]" "f[17]" "f[23]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[4]" "f[13]" "f[15]" "f[23]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.40867432579398155 0.50334420800209045 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.37496334 0.15730244
		 0.40867424 0.13223989 0.71001285 0.57928884 0.71001011 0.5375576 0.74956685 0.53755629
		 0.74956989 0.57928616 0.7912975 0.53755701 0.74956685 0.53755701 0.36694348 0.13223989
		 0.71001011 0.48563454 0.74956685 0.48563457 0.026050203 0.53755641 0.026050203 0.48563424
		 0.74956751 0.019910783 0.74956751 0.06164163 0.71001059 0.061641634 0.71001083 0.019910716
		 0.14497977 0.98677802 0.44688028 0.061641186 0.4468804 0.019910395 0.14497977 0.55219066
		 0.19629824 0.55219066 0.2281726 0.88718081 0.51550418 0.56158316 0.19629824 0.98677802
		 0.06560722 0.48563424 0.7912975 0.48563465 0.40867418 0.061641183 0.40867424 0.019910395
		 0.06560722 0.53755641 0.06560722 0.061641123 0.06560722 0.13223989 0.026050203 0.13223989
		 0.026050203 0.061641183 0.32873759 0.061641183 0.32873759 0.13223989 0.36694348 0.061641179
		 0.74956751 0.13224037 0.71001059 0.13224025 0.74956751 0.061641634 0.44688028 0.13224001
		 0.40867436 0.061641183 0.6762991 0.56261933 0.57613778 0.54294527 0.1415503 0.54294527
		 0.1415503 0.47402239 0.57613778 0.47402239 0.54634118 0.5888077 0.25900978 0.91440582
		 0.79129833 0.13224037 0.74956763 0.06164163 0.79129845 0.061641686;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 7.6293944e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" 7.6293944e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" 7.6293944e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 7.6293944e-08 0 0 ;
	setAttr -s 24 ".vt[0:23]"  -0.50000483 -0.49999997 0.49999997 0.50000006 -0.49999997 0.49999997
		 -0.50000483 0.21554986 -0.38396099 0.50000006 0.21554986 -0.38396099 -0.50000489 0.21554986 -0.50000018
		 0.5 0.21554986 -0.50000018 -0.50000489 -0.49999997 -0.50000018 0.5 -0.49999997 -0.50000018
		 -0.50000489 -0.62463564 -0.50000018 0.5 -0.62463564 -0.50000018 0.5 -0.62463564 0.49999997
		 -0.50000489 -0.62463564 0.49999997 0.5 -0.49999997 -0.38396108 0.5 -0.62463576 -0.38396108
		 -0.50000489 -0.62463576 -0.38396108 -0.50000489 -0.49999997 -0.38396108 0.5 0.12388573 -0.38396099
		 0.5 -0.49999997 0.38792351 -0.50000489 -0.49999997 0.38792351 -0.50000489 0.12388573 -0.38396099
		 0.5 0.12388573 -0.50000018 -0.50000489 0.12388573 -0.50000018 0.5 -0.62463564 0.38792351
		 -0.50000489 -0.62463564 0.38792351;
	setAttr -s 48 ".ed[0:47]"  0 1 0 2 3 0 4 5 0 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 21 0 5 20 0 6 15 1 7 12 1 6 8 0 7 9 0 8 9 0 1 10 0 9 13 0 0 11 0 11 10 0
		 8 14 0 12 17 0 13 22 0 14 23 0 15 18 0 3 16 1 12 13 1 13 14 1 14 15 1 15 19 0 16 12 0
		 17 1 1 16 17 0 18 0 1 19 2 1 18 19 0 20 7 0 21 6 0 16 20 1 20 21 1 21 19 1 22 10 0
		 23 11 0 17 22 1 22 23 1 23 18 1 12 15 0 17 18 0 19 16 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 42
		f 4 1 7 -3 -7
		mu 0 4 2 3 4 5
		f 4 2 9 38 -9
		mu 0 4 6 7 10 26
		f 4 14 16 26 -20
		mu 0 4 13 14 15 16
		f 4 37 -10 -8 24
		mu 0 4 9 10 4 3
		f 4 8 39 33 6
		mu 0 4 11 12 25 29
		f 4 3 13 -15 -13
		mu 0 4 49 37 50 51
		f 4 11 25 -17 -14
		mu 0 4 37 38 15 39
		f 4 -1 17 18 -16
		mu 0 4 1 8 36 41
		f 4 27 -11 12 19
		mu 0 4 30 31 32 33
		f 4 -26 20 42 -22
		mu 0 4 15 38 40 18
		f 4 -27 21 43 -23
		mu 0 4 16 15 18 19
		f 4 44 -24 -28 22
		mu 0 4 34 35 31 30
		f 4 -31 -32 -25 -6
		mu 0 4 1 40 9 3
		f 4 -34 -35 32 4
		mu 0 4 29 25 35 8
		f 4 -38 29 -12 -36
		mu 0 4 10 9 38 37
		f 4 -39 35 -4 -37
		mu 0 4 26 10 37 49
		f 4 10 28 -40 36
		mu 0 4 32 31 25 12
		f 4 -41 -43 30 15
		mu 0 4 41 18 40 1
		f 4 -44 40 -19 -42
		mu 0 4 19 18 27 28
		f 4 -45 41 -18 -33
		mu 0 4 35 34 36 8
		f 4 -21 45 23 -47
		mu 0 4 43 44 45 46
		f 4 -29 -46 -30 -48
		mu 0 4 17 20 21 24
		f 4 31 46 34 47
		mu 0 4 22 23 47 48;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 14 
		1 0 
		3 0 
		4 0 
		8 0 
		10 0 
		15 0 
		17 0 
		18 0 
		20 0 
		22 0 
		23 0 
		36 0 
		37 0 
		41 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "ShelfMetal2";
	rename -uid "1C4D21A6-4F28-A071-5340-C8A148D2651E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[6:12]" "f[18:21]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[5]" "f[14]" "f[17]" "f[23]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[4]" "f[13]" "f[15]" "f[23]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.73549509 0.38950488
		 0.625 0.77900976 0.375 0.77900976 0.26450488 0.38950488 0.65330946 0.21797425 0.63677204
		 0.48822796 0.36322796 0.48822796 0.34669048 0.21797425 0.62499994 0.53202575 0.875
		 0.21797425 0.125 0.21797425 0.375 0.53202575 0.625 0.97645593 0.375 0.97645593;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[8]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[9]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[10]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[11]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[12]" -type "float3" 0 0 1.9073486e-08 ;
	setAttr ".pt[13]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[14]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[15]" -type "float3" 0 0 1.9073486e-08 ;
	setAttr ".pt[22]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[23]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.49999997 0.5 0.5 -0.49999997 0.5
		 -0.5 0.21554986 -0.38396096 0.5 0.21554986 -0.38396096 -0.5 0.21554986 -0.50000006
		 0.5 0.21554986 -0.50000006 -0.5 -0.49999997 -0.50000006 0.5 -0.49999997 -0.50000006
		 -0.5 -0.57439423 -0.50000006 0.5 -0.57439423 -0.50000006 0.5 -0.57439423 0.5 -0.5 -0.57439423 0.5
		 0.5 -0.49999997 -0.38396102 0.5 -0.57439429 -0.38396102 -0.5 -0.57439429 -0.38396102
		 -0.5 -0.49999997 -0.38396102 0.5 0.12388577 -0.38396096 0.5 -0.49999997 0.3879239
		 -0.5 -0.49999997 0.3879239 -0.5 0.12388577 -0.38396096 0.5 0.12388577 -0.50000006
		 -0.5 0.12388577 -0.50000006 0.5 -0.57439423 0.3879239 -0.5 -0.57439423 0.3879239;
	setAttr -s 48 ".ed[0:47]"  0 1 0 2 3 0 4 5 0 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 21 0 5 20 0 6 15 1 7 12 1 6 8 0 7 9 0 8 9 0 1 10 0 9 13 0 0 11 0 11 10 0
		 8 14 0 12 17 0 13 22 0 14 23 0 15 18 0 3 16 1 12 13 1 13 14 1 14 15 1 15 19 0 16 12 0
		 17 1 1 16 17 0 18 0 1 19 2 1 18 19 0 20 7 0 21 6 0 16 20 1 20 21 1 21 19 1 22 10 0
		 23 11 0 17 22 1 22 23 1 23 18 1 12 15 0 17 18 0 19 16 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 38 -9
		mu 0 4 4 5 26 29
		f 4 14 16 26 -20
		mu 0 4 14 15 19 20
		f 4 37 -10 -8 24
		mu 0 4 22 27 11 3
		f 4 8 39 33 6
		mu 0 4 13 28 25 2
		f 4 3 13 -15 -13
		mu 0 4 6 7 15 14
		f 4 11 25 -17 -14
		mu 0 4 7 18 19 15
		f 4 -1 17 18 -16
		mu 0 4 9 8 17 16
		f 4 27 -11 12 19
		mu 0 4 20 21 6 14
		f 4 -26 20 42 -22
		mu 0 4 19 18 23 30
		f 4 -27 21 43 -23
		mu 0 4 20 19 30 31
		f 4 44 -24 -28 22
		mu 0 4 31 24 21 20
		f 4 -31 -32 -25 -6
		mu 0 4 1 23 22 3
		f 4 -34 -35 32 4
		mu 0 4 2 25 24 0
		f 4 -38 29 -12 -36
		mu 0 4 27 22 18 10
		f 4 -39 35 -4 -37
		mu 0 4 29 26 7 6
		f 4 10 28 -40 36
		mu 0 4 12 21 25 28
		f 4 -41 -43 30 15
		mu 0 4 16 30 23 9
		f 4 -44 40 -19 -42
		mu 0 4 31 30 16 17
		f 4 -45 41 -18 -33
		mu 0 4 24 31 17 8
		f 4 -21 45 23 -47
		mu 0 4 23 18 21 24
		f 4 -29 -46 -30 -48
		mu 0 4 25 21 18 22
		f 4 31 46 34 47
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 4 
		18 0 
		21 0 
		23 0 
		24 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ShelfMetal1" -p "SimpleShelf";
	rename -uid "E625CF26-499B-BF23-4EEB-8F95A8C20612";
	setAttr ".t" -type "double3" -3.4404044067381978 0.66991312728262731 0.0024876873309679515 ;
	setAttr ".s" -type "double3" 0.087665966216345273 1.1899575893517367 0.71613576992745664 ;
createNode mesh -n "ShelfMetal1Shape" -p "ShelfMetal1";
	rename -uid "28A11EA4-4261-123E-2225-E6A829BBE9E3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40867432579398155 0.50334420800209045 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 7.6293944e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" 7.6293944e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" 7.6293944e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 7.6293944e-08 0 0 ;
createNode mesh -n "polySurfaceShape3" -p "ShelfMetal1";
	rename -uid "B415A0AC-457B-98F4-2203-86AF906A84A7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[16]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[6:12]" "f[18:21]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[5]" "f[14]" "f[17]" "f[23]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[4]" "f[13]" "f[15]" "f[23]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.73549509 0.38950488
		 0.625 0.77900976 0.375 0.77900976 0.26450488 0.38950488 0.65330946 0.21797425 0.63677204
		 0.48822796 0.36322796 0.48822796 0.34669048 0.21797425 0.62499994 0.53202575 0.875
		 0.21797425 0.125 0.21797425 0.375 0.53202575 0.625 0.97645593 0.375 0.97645593;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[8]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[9]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[10]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[11]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[12]" -type "float3" 0 0 1.9073486e-08 ;
	setAttr ".pt[13]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[14]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[15]" -type "float3" 0 0 1.9073486e-08 ;
	setAttr ".pt[22]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr ".pt[23]" -type "float3" 0 -0.050241385 2.3841857e-09 ;
	setAttr -s 24 ".vt[0:23]"  -0.5 -0.49999997 0.5 0.5 -0.49999997 0.5
		 -0.5 0.21554986 -0.38396096 0.5 0.21554986 -0.38396096 -0.5 0.21554986 -0.50000006
		 0.5 0.21554986 -0.50000006 -0.5 -0.49999997 -0.50000006 0.5 -0.49999997 -0.50000006
		 -0.5 -0.57439423 -0.50000006 0.5 -0.57439423 -0.50000006 0.5 -0.57439423 0.5 -0.5 -0.57439423 0.5
		 0.5 -0.49999997 -0.38396102 0.5 -0.57439429 -0.38396102 -0.5 -0.57439429 -0.38396102
		 -0.5 -0.49999997 -0.38396102 0.5 0.12388577 -0.38396096 0.5 -0.49999997 0.3879239
		 -0.5 -0.49999997 0.3879239 -0.5 0.12388577 -0.38396096 0.5 0.12388577 -0.50000006
		 -0.5 0.12388577 -0.50000006 0.5 -0.57439423 0.3879239 -0.5 -0.57439423 0.3879239;
	setAttr -s 48 ".ed[0:47]"  0 1 0 2 3 0 4 5 0 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 21 0 5 20 0 6 15 1 7 12 1 6 8 0 7 9 0 8 9 0 1 10 0 9 13 0 0 11 0 11 10 0
		 8 14 0 12 17 0 13 22 0 14 23 0 15 18 0 3 16 1 12 13 1 13 14 1 14 15 1 15 19 0 16 12 0
		 17 1 1 16 17 0 18 0 1 19 2 1 18 19 0 20 7 0 21 6 0 16 20 1 20 21 1 21 19 1 22 10 0
		 23 11 0 17 22 1 22 23 1 23 18 1 12 15 0 17 18 0 19 16 0;
	setAttr -s 24 -ch 96 ".fc[0:23]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 38 -9
		mu 0 4 4 5 26 29
		f 4 14 16 26 -20
		mu 0 4 14 15 19 20
		f 4 37 -10 -8 24
		mu 0 4 22 27 11 3
		f 4 8 39 33 6
		mu 0 4 13 28 25 2
		f 4 3 13 -15 -13
		mu 0 4 6 7 15 14
		f 4 11 25 -17 -14
		mu 0 4 7 18 19 15
		f 4 -1 17 18 -16
		mu 0 4 9 8 17 16
		f 4 27 -11 12 19
		mu 0 4 20 21 6 14
		f 4 -26 20 42 -22
		mu 0 4 19 18 23 30
		f 4 -27 21 43 -23
		mu 0 4 20 19 30 31
		f 4 44 -24 -28 22
		mu 0 4 31 24 21 20
		f 4 -31 -32 -25 -6
		mu 0 4 1 23 22 3
		f 4 -34 -35 32 4
		mu 0 4 2 25 24 0
		f 4 -38 29 -12 -36
		mu 0 4 27 22 18 10
		f 4 -39 35 -4 -37
		mu 0 4 29 26 7 6
		f 4 10 28 -40 36
		mu 0 4 12 21 25 28
		f 4 -41 -43 30 15
		mu 0 4 16 30 23 9
		f 4 -44 40 -19 -42
		mu 0 4 31 30 16 17
		f 4 -45 41 -18 -33
		mu 0 4 24 31 17 8
		f 4 -21 45 23 -47
		mu 0 4 23 18 21 24
		f 4 -29 -46 -30 -48
		mu 0 4 25 21 18 22
		f 4 31 46 34 47
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 4 
		18 0 
		21 0 
		23 0 
		24 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ShelfBoard" -p "SimpleShelf";
	rename -uid "54EC5B72-488E-46D2-63A7-2CBE1EEF500A";
	setAttr ".t" -type "double3" -4.7336116787318669 0 0 ;
	setAttr ".s" -type "double3" 2.7622651490752457 0.070703864198410099 0.6250279860527137 ;
createNode mesh -n "ShelfBoardShape" -p "ShelfBoard";
	rename -uid "FA6032D7-4619-4374-8D5E-26AA9E344571";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999992549419403 0.26708334684371948 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "door";
	rename -uid "E3A534DD-47B9-2ABC-A972-F39F89FEA687";
	setAttr ".t" -type "double3" -3.4030670058572561 0 -3.5765576669237231 ;
	setAttr ".rp" -type "double3" -3.5509784824180257 1.0225195354530816 3.7783676265640396 ;
	setAttr ".sp" -type "double3" -3.5509784824180257 1.0225195354530816 3.7783676265640396 ;
createNode transform -n "doorknob" -p "|door";
	rename -uid "7C298CB0-4E43-B048-24B0-A692790B69ED";
	setAttr ".t" -type "double3" -3.2687704536409923 1.004679130203546 4.0206199769252571 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.058909845737725709 0.058909845737725709 0.058909845737725709 ;
	setAttr ".rp" -type "double3" 0.0025259609880167976 -0.01349245448777652 0 ;
	setAttr ".rpt" -type "double3" 0 0.01349245448777652 -0.01349245448777652 ;
	setAttr ".sp" -type "double3" 0.042878417968749999 -0.22903564453125 0 ;
	setAttr ".spt" -type "double3" -0.040352456980733205 0.2155431900434735 0 ;
createNode mesh -n "doorknobShape" -p "doorknob";
	rename -uid "3C0C5657-4851-17D9-E587-FE894DB81786";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000000931322575 0.083333335816860199 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0 0.33333334 0.14285715
		 0.33333334 0.2857143 0.33333334 0.42857146 0.33333334 0.5714286 0.33333334 0.71428573
		 0.33333334 0.85714287 0.33333334 1 0.33333334 0 0.66666669 0.14285715 0.66666669
		 0.2857143 0.66666669 0.42857146 0.66666669 0.5714286 0.66666669 0.71428573 0.66666669
		 0.85714287 0.66666669 1 0.66666669 0.071428575 0 0.21428573 0 0.35714287 0 0.50000006
		 0 0.64285719 0 0.78571433 0 0.92857152 0 0.071428575 1 0.21428573 1 0.35714287 1
		 0.50000006 1 0.64285719 1 0.78571433 1 0.92857152 1 0.39285716 0.16666667 0.46428576
		 0.16666667 0.25 0.16666667 0.3214286 0.16666667 0.10714287 0.16666667 0.17857143
		 0.16666667 0.96428573 0.16666667 0.035714287 0.16666667 0.8214286 0.16666667 0.89285719
		 0.16666667 0.67857146 0.16666667 0.75 0.16666667 0.53571433 0.16666667 0.60714293
		 0.16666667 0.10714287 0.16666667 0.035714287 0.16666667 0.25 0.16666667 0.17857143
		 0.16666667 0.39285716 0.16666667 0.3214286 0.16666667 0.53571433 0.16666667 0.46428576
		 0.16666667 0.67857146 0.16666667 0.60714293 0.16666667 0.8214286 0.16666667 0.75
		 0.16666667 0.96428573 0.16666667 0.89285719 0.16666667;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".vt[0:29]"  0.53995115 -0.5 -0.67708617 -0.19271484 -0.5 -0.84431273
		 -0.78026366 -0.5 -0.37575439 -0.78026366 -0.5 0.37575439 -0.19271484 -0.5 0.84431273
		 0.53995115 -0.5 0.67708498 0.8660205 -0.5 0 0.53995115 0.5 -0.67708617 -0.19271484 0.5 -0.84431273
		 -0.78026366 0.5 -0.37575439 -0.78026366 0.5 0.37575439 -0.19271484 0.5 0.84431273
		 0.53995115 0.5 0.67708498 0.8660205 0.5 0 -4.8828124e-06 1 0 -0.39013183 -0.50614256 0.18787719
		 -0.39013183 -0.50614256 -0.18787719 -0.09635742 -0.50614256 -0.42215699 0.26997557 -0.50614256 -0.33854371
		 0.43300781 -0.50614256 0 0.26997557 -0.50614256 0.33854371 -0.09635742 -0.50614256 0.42215577
		 -0.099335939 -1.45181155 -0.43523803 0.2783545 -1.45181155 -0.34903565 0 -1.45807123 0
		 -0.40222657 -1.45181155 -0.19369873 -0.40222168 -1.45181155 0.19369873 -0.099340819 -1.45181155 0.43523681
		 0.27834472 -1.45181155 0.34903321 0.44644532 -1.45181155 0;
	setAttr -s 63 ".ed[0:62]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 0 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 7 0 0 7 0 1 8 0 2 9 0 3 10 0 4 11 0
		 5 12 0 6 13 0 7 14 0 8 14 0 9 14 0 10 14 0 11 14 0 12 14 0 13 14 0 15 3 0 16 2 0
		 17 1 0 18 0 0 19 6 0 20 5 0 21 4 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 21 0
		 21 15 0 17 22 0 18 23 0 22 23 0 24 23 0 24 22 0 16 25 0 25 22 0 24 25 0 15 26 0 26 25 0
		 24 26 0 21 27 0 27 26 0 24 27 0 20 28 0 28 27 0 24 28 0 19 29 0 29 28 0 24 29 0 23 29 0;
	setAttr -s 35 -ch 126 ".fc[0:34]" -type "polyFaces" 
		f 4 0 15 -8 -15
		mu 0 4 0 1 9 8
		f 4 1 16 -9 -16
		mu 0 4 1 2 10 9
		f 4 2 17 -10 -17
		mu 0 4 2 3 11 10
		f 4 3 18 -11 -18
		mu 0 4 3 4 12 11
		f 4 4 19 -12 -19
		mu 0 4 4 5 13 12
		f 4 5 20 -13 -20
		mu 0 4 5 6 14 13
		f 4 6 14 -14 -21
		mu 0 4 6 7 15 14
		f 3 44 -46 46
		mu 0 3 44 45 16
		f 3 48 -47 49
		mu 0 3 46 47 17
		f 3 51 -50 52
		mu 0 3 48 49 18
		f 3 54 -53 55
		mu 0 3 50 51 19
		f 3 57 -56 58
		mu 0 3 52 53 20
		f 3 60 -59 61
		mu 0 3 54 55 21
		f 3 62 -62 45
		mu 0 3 56 57 22
		f 3 7 22 -22
		mu 0 3 8 9 23
		f 3 8 23 -23
		mu 0 3 9 10 24
		f 3 9 24 -24
		mu 0 3 10 11 25
		f 3 10 25 -25
		mu 0 3 11 12 26
		f 3 11 26 -26
		mu 0 3 12 13 27
		f 3 12 27 -27
		mu 0 3 13 14 28
		f 3 13 21 -28
		mu 0 3 14 15 29
		f 4 -3 -30 -36 28
		mu 0 4 3 2 33 30
		f 4 -2 -31 -37 29
		mu 0 4 2 1 35 32
		f 4 -1 -32 -38 30
		mu 0 4 1 0 37 34
		f 4 -7 -33 -39 31
		mu 0 4 7 6 39 36
		f 4 -6 -34 -40 32
		mu 0 4 6 5 41 38
		f 4 -5 -35 -41 33
		mu 0 4 5 4 43 40
		f 4 -4 -29 -42 34
		mu 0 4 4 3 31 42
		f 4 37 43 -45 -43
		mu 0 4 34 37 45 44
		f 4 36 42 -49 -48
		mu 0 4 32 35 47 46
		f 4 35 47 -52 -51
		mu 0 4 30 33 49 48
		f 4 41 50 -55 -54
		mu 0 4 42 31 51 50
		f 4 40 53 -58 -57
		mu 0 4 40 43 53 52
		f 4 39 56 -61 -60
		mu 0 4 38 41 55 54
		f 4 38 59 -63 -44
		mu 0 4 36 39 57 56;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "door" -p "|door";
	rename -uid "82F29DF5-4A13-5470-C189-46B891F08239";
	setAttr ".t" -type "double3" -3.5517405060250749 1.0012408884390009 3.850815496253515 ;
	setAttr ".s" -type "double3" 1 1.9882359958348685 0.17796713414793064 ;
	setAttr ".rp" -type "double3" 0 0 0.078575791850870769 ;
	setAttr ".sp" -type "double3" 0 0 0.44151855468750001 ;
	setAttr ".spt" -type "double3" 0 0 -0.36294276283662924 ;
createNode mesh -n "doorShape" -p "|door|door";
	rename -uid "F3D943EB-4227-1C16-84AD-3E97F5D5C8CC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[6:54]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.59331842946007862 0.36617806273835163 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 76 ".uvst[0].uvsp[0:75]" -type "float2" 0.14738707 0.79409313
		 0.57363272 0.029560484 0.081933543 0.7923919 0.081933543 0.020726535 0.11944072 0.020726535
		 0.61300409 0.026676841 0.95306402 0.026676573 0.95306402 0.70279562 0.14738707 0.022427473
		 0.23357284 0.029560484 0.50576723 0.12140761 0.50576723 0.3105053 0.42098325 0.3105053
		 0.42098325 0.12140761 0.55461025 0.04694692 0.25259534 0.04694692 0.57363272 0.70567954
		 0.55461025 0.68829322 0.23357284 0.70567954 0.25259534 0.68829322 0.54262936 0.060855128
		 0.26457649 0.060855128 0.54262936 0.67438483 0.26457649 0.67438483 0.53479332 0.069452412
		 0.40360284 0.069452412 0.2724123 0.069452412 0.2724123 0.6657877 0.40360284 0.6657877
		 0.53479332 0.6657877 0.2724123 0.33847585 0.2724123 0.39629582 0.38593274 0.12140761
		 0.38593274 0.3105053 0.30114877 0.3105053 0.30114877 0.12140761 0.50576723 0.61383033
		 0.42098325 0.61383033 0.42098325 0.42364952 0.50576723 0.42364952 0.38593274 0.61383033
		 0.30114877 0.61383033 0.30114877 0.42364952 0.38593274 0.42364952 0.53479332 0.33847585
		 0.40360296 0.33808073 0.41073775 0.32012632 0.51825327 0.32012632 0.41073775 0.11178667
		 0.51825327 0.11178667 0.40360296 0.39629582 0.39617831 0.11178667 0.28866273 0.11178667
		 0.39617831 0.32012632 0.28866273 0.32012632 0.39617831 0.41402856 0.28866273 0.41402856
		 0.39617831 0.62345159 0.28866273 0.62345159 0.41073775 0.41402856 0.41073775 0.62345159
		 0.53479332 0.39629582 0.51825327 0.41402856 0.51825327 0.62345159 0.058205739 0.020726535
		 0.058205739 0.7923919 0.16625158 0.022427473 0.16625158 0.79409313 0.18395805 0.022427473
		 0.20282257 0.022427473 0.20282257 0.79409337 0.18395805 0.79409337 0.61300409 0.70279562
		 0.11944072 0.7923919 0.020698562 0.7923919 0.020698562 0.020726535;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 0.22688477 0.5 0.5 0.22688477 -0.5 -0.5 0.22688477 0.5 -0.5 0.22688477 -0.44406128 -0.47428498 0.65615237
		 0.44406128 -0.47428498 0.65615237 0.44406128 0.47428513 0.65615237 -0.44406128 0.47428513 0.65615237
		 -0.40882933 -0.45371428 0.65615237 0.40882933 -0.45371428 0.65615237 0.40882933 0.45371446 0.65615237
		 -0.40882933 0.45371446 0.65615237 -0.38578674 -0.44099867 0.58689696 0.38578674 -0.44099867 0.58689696
		 0.38578674 0.44099876 0.58689696 -0.38578674 0.44099876 0.58689696 0 0.44099876 0.58689696
		 0 -0.44099867 0.58689696 0.33714783 -0.070244521 0.6349951 0.020981446 -0.070244521 0.6349951
		 0.020981446 -0.37838471 0.6349951 0.33714783 -0.37838471 0.6349951 -0.33799958 -0.37838471 0.6349951
		 -0.021833191 -0.37838471 0.6349951 -0.021833191 -0.070244521 0.6349951 -0.33799958 -0.070244521 0.6349951
		 -0.021833191 0.068639524 0.6349951 -0.33799958 0.068639524 0.6349951 -0.021833191 0.37838256 0.6349951
		 -0.33799958 0.37838256 0.6349951 0.020981446 0.37838256 0.6349951 0.020981446 0.068639524 0.6349951
		 0.33714783 0.068639524 0.6349951 0.33714783 0.37838256 0.6349951 0.3004306 -0.084474258 0.4558838
		 0.051109925 -0.084474258 0.4558838 0.051109925 -0.36415541 0.4558838 0.3004306 -0.36415541 0.4558838
		 -0.30128235 -0.36415541 0.4558838 -0.051961672 -0.36415541 0.4558838 -0.051961672 -0.084474258 0.4558838
		 -0.30128235 -0.084474258 0.4558838 0.051109925 0.36415261 0.4558838 0.051109925 0.082869262 0.4558838
		 0.3004306 0.082869262 0.4558838 0.3004306 0.36415261 0.4558838 -0.051961672 0.082869262 0.4558838
		 -0.30128235 0.082869262 0.4558838 -0.051961672 0.36415261 0.4558838 -0.30128235 0.36415261 0.4558838
		 0.38578674 -0.043105125 0.58689696 3.0517577e-07 -0.043688964 0.58689696 -0.38578674 -0.043105125 0.58689696
		 -0.38578674 0.0424123 0.58689696 3.0517577e-07 0.042412415 0.58689696 0.38578674 0.0424123 0.58689696;
	setAttr -s 113 ".ed[0:112]"  0 1 0 2 3 0 4 5 0 6 7 0 2 4 0 3 5 0 6 0 0
		 7 1 0 0 8 0 1 9 0 8 9 1 3 10 0 2 11 0 11 10 1 8 12 1 9 13 1 12 13 0 10 14 1 11 15 1
		 15 14 0 12 16 0 13 17 0 16 21 0 14 18 0 17 54 0 15 19 0 19 20 0 16 56 0 20 18 0 21 17 0
		 20 58 0 22 23 1 21 24 0 23 24 0 17 25 0 24 25 1 25 22 0 16 26 0 21 27 0 26 27 1 28 27 0
		 28 29 1 26 29 0 30 31 1 20 32 0 32 30 0 19 33 0 33 32 1 31 33 0 20 34 0 34 35 0 36 35 1
		 18 37 0 36 37 0 34 37 1 22 38 0 23 39 0 38 39 1 24 40 0 39 40 0 25 41 0 40 41 1 41 38 0
		 26 42 0 27 43 0 42 43 1 28 44 0 44 43 0 29 45 0 44 45 1 42 45 0 34 46 0 35 47 0 46 47 0
		 36 48 0 48 47 1 37 49 0 48 49 0 46 49 1 30 50 0 31 51 0 50 51 1 32 52 0 52 50 0 33 53 0
		 53 52 1 51 53 0 54 22 0 55 23 0 55 21 0 55 28 0 56 29 0 54 55 1 55 56 1 54 59 0 56 57 0
		 57 31 0 58 30 0 58 35 0 59 36 0 57 58 1 58 59 1 59 18 0 57 19 0 12 15 0 13 14 0 55 58 1
		 8 11 1 0 2 0 4 6 0 5 7 0 1 3 0 9 10 1;
	setAttr -s 55 -ch 226 ".fc[0:54]" -type "polyFaces" 
		f 4 62 57 59 61
		mu 0 4 10 11 12 13
		f 4 1 5 -3 -5
		mu 0 4 2 3 4 73
		f 4 110 -4 -110 2
		mu 0 4 72 5 6 7
		f 4 3 7 -1 -7
		mu 0 4 64 65 74 75
		f 4 -8 -111 -6 -112
		mu 0 4 68 69 70 71
		f 4 109 6 108 4
		mu 0 4 0 8 66 67
		f 4 0 9 -11 -9
		mu 0 4 9 1 14 15
		f 4 -10 111 11 -113
		mu 0 4 14 1 16 17
		f 4 -2 12 13 -12
		mu 0 4 16 18 19 17
		f 4 8 107 -13 -109
		mu 0 4 9 15 19 18
		f 4 10 15 -17 -15
		mu 0 4 15 14 20 21
		f 4 -16 112 17 -106
		mu 0 4 20 14 17 22
		f 4 -14 18 19 -18
		mu 0 4 17 19 23 22
		f 4 14 104 -19 -108
		mu 0 4 15 21 23 19
		f 5 16 21 -30 -23 -21
		mu 0 5 21 20 24 25 26
		f 5 -20 25 26 28 -24
		mu 0 5 22 23 27 28 29
		f 6 95 103 -26 -105 20 27
		mu 0 6 30 31 27 23 21 26
		f 4 -68 69 -71 65
		mu 0 4 32 33 34 35
		f 4 -79 73 -76 77
		mu 0 4 36 37 38 39
		f 4 -86 -87 -82 -84
		mu 0 4 40 41 42 43
		f 4 92 88 -32 -88
		mu 0 4 44 45 46 47
		f 4 89 32 -34 -89
		mu 0 4 45 25 48 46
		f 4 29 34 -36 -33
		mu 0 4 25 24 49 48
		f 4 -96 -94 106 -101
		mu 0 4 31 30 45 50
		f 4 22 38 -40 -38
		mu 0 4 26 25 51 52
		f 4 -90 90 40 -39
		mu 0 4 25 45 53 51
		f 4 93 91 -42 -91
		mu 0 4 45 30 54 53
		f 4 -28 37 42 -92
		mu 0 4 30 26 52 54
		f 4 100 97 43 -97
		mu 0 4 31 50 55 56
		f 4 -31 44 45 -98
		mu 0 4 50 28 57 55
		f 4 -27 46 47 -45
		mu 0 4 28 27 58 57
		f 4 30 98 -51 -50
		mu 0 4 28 50 59 60
		f 4 101 99 51 -99
		mu 0 4 50 61 62 59
		f 4 102 52 -54 -100
		mu 0 4 61 29 63 62
		f 4 -29 49 54 -53
		mu 0 4 29 28 60 63
		f 4 31 56 -58 -56
		mu 0 4 47 46 12 11
		f 4 33 58 -60 -57
		mu 0 4 46 48 13 12
		f 4 35 60 -62 -59
		mu 0 4 48 49 10 13
		f 4 36 55 -63 -61
		mu 0 4 49 47 11 10
		f 4 39 64 -66 -64
		mu 0 4 52 51 32 35
		f 4 -41 66 67 -65
		mu 0 4 51 53 33 32
		f 4 41 68 -70 -67
		mu 0 4 53 54 34 33
		f 4 -43 63 70 -69
		mu 0 4 54 52 35 34
		f 4 50 72 -74 -72
		mu 0 4 60 59 38 37
		f 4 -52 74 75 -73
		mu 0 4 59 62 39 38
		f 4 53 76 -78 -75
		mu 0 4 62 63 36 39
		f 4 -55 71 78 -77
		mu 0 4 63 60 37 36
		f 4 -44 79 81 -81
		mu 0 4 56 55 43 42
		f 4 -46 82 83 -80
		mu 0 4 55 57 40 43
		f 4 -48 84 85 -83
		mu 0 4 57 58 41 40
		f 4 -49 80 86 -85
		mu 0 4 58 56 42 41
		f 4 24 87 -37 -35
		mu 0 4 24 44 47 49
		f 4 -104 96 48 -47
		mu 0 4 27 31 56 58
		f 6 -25 -22 105 23 -103 -95
		mu 0 6 44 24 20 22 29 61
		f 4 -93 94 -102 -107
		mu 0 4 45 44 61 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 8 
		1 0 
		4 0 
		5 0 
		6 0 
		7 0 
		9 0 
		16 0 
		18 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "doorframe" -p "|door";
	rename -uid "4AE7B993-4F8D-52F2-FBD3-4EBA6C83D3BB";
	setAttr ".t" -type "double3" -3.5509784824180257 1.0225195354530816 3.8054148567162991 ;
	setAttr ".s" -type "double3" 1.1004779189860636 2.057582126719514 0.18058423718755043 ;
	setAttr ".rp" -type "double3" 0 0 -0.11895865382871421 ;
	setAttr ".sp" -type "double3" 0 0 -0.65874328613281252 ;
	setAttr ".spt" -type "double3" 0 0 0.53978463230409834 ;
createNode mesh -n "doorframeShape" -p "doorframe";
	rename -uid "732716B0-483A-0620-9E29-7F8AD0CE9D1F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[4:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.20406365664777504 0.748652947182749 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.024028122 0.50780153
		 0.41186917 0.0053709308 0.122244 0.50780153 0.55097467 0.97560143 0.29133648 0.97496092
		 0.29158008 0.87622273 0.28811044 0.49860024 0.54912376 0.49783748 0.54941404 0.59709859
		 0.28840035 0.59786141 0.51008493 0.0053709308 0.51008493 0.48825389 0.122244 0.99068415
		 0.024028122 0.99068415 0.15412094 0.98774499 0.39377126 0.0091884574 0.55123115 0.74907869
		 0.2936171 0.74907869 0.15412094 0.50956094 0.39377126 0.48737246 0.2919167 0.85605866
		 0.55293155 0.85605866 0.0094149113 0.011305496 0.26768011 0.011305496 0.25529185
		 0.016197667 0.02180326 0.016197667 0.26768011 0.49418825 0.25529185 0.48038197 0.0094149113
		 0.49418825 0.02180326 0.48038197 0.41186917 0.48825389 0.55121839 0.8768633 0.29453138
		 0.72450089 0.55214536 0.72450089 0.55384588 0.61752123 0.29283091 0.61752123 0.25400639
		 0.50721157 0.25400639 0.99009436 0.29388565 0.48972172 0.29388565 0.0068389615;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -1.81748652 0.5 0.5 -1.81748652 -0.5 -0.5 -1.81748652 0.5 -0.5 -1.81748652
		 -0.45203277 -0.48986888 0.5 0.45203277 -0.48986888 0.5 0.45203277 0.47140861 0.5
		 -0.45203277 0.47140861 0.5 -0.45799989 -0.49459186 -1.7878809 0.45799989 -0.49459186 -1.7878809
		 0.45799989 0.47613153 -1.7878809 -0.45799989 0.47613153 -1.7878809;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 0 8 1 1 9 1 8 9 0 3 10 1 9 10 0 2 11 1 11 10 0 8 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 13 14 0 11 15 0 15 14 0 12 15 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 1 7 -3 -7
		mu 0 4 3 4 5 31
		f 4 3 11 -1 -11
		mu 0 4 6 7 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 30
		f 4 10 4 6 8
		mu 0 4 0 2 12 13
		f 4 0 13 -15 -13
		mu 0 4 22 23 24 25
		f 4 5 15 -17 -14
		mu 0 4 23 26 27 24
		f 4 -2 17 18 -16
		mu 0 4 26 28 29 27
		f 4 -5 12 19 -18
		mu 0 4 28 22 25 29
		f 4 14 21 -23 -21
		mu 0 4 32 33 34 35
		f 4 16 23 -25 -22
		mu 0 4 15 19 38 39
		f 4 -19 25 26 -24
		mu 0 4 16 17 20 21
		f 4 -20 20 27 -26
		mu 0 4 14 18 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27";
	rename -uid "1AC0AD5A-4B4A-A4E3-9F97-3985F35597E9";
	setAttr ".t" -type "double3" -1.2700880815095574 0.54809846544112284 0 ;
	setAttr ".s" -type "double3" 1.8167772694014157 1 0.68556202252891596 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "5DC80942-46B1-D8F3-560B-EEAFA32EB1C0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.86999997496604919 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Light";
	rename -uid "5634D4B2-4B01-4209-A653-46887F295712";
	setAttr ".t" -type "double3" 0 0.40129499538074725 -1.9585542582148228 ;
	setAttr ".r" -type "double3" 0 0 180 ;
	setAttr ".rp" -type "double3" 1.0788565471009581 0.33030026524607198 1.9317993082435871 ;
	setAttr ".sp" -type "double3" 1.0788565471009581 0.33030026524607198 1.9317993082435871 ;
createNode transform -n "lightbulb" -p "Light";
	rename -uid "9AB02A3A-4514-4CB9-C50E-F3AF27883A0C";
	setAttr ".t" -type "double3" 1.0260659068851079 0.54255570897093897 1.9658823313678178 ;
	setAttr ".r" -type "double3" 0 0 13.544276591430814 ;
	setAttr ".s" -type "double3" 0.082157680261536747 0.082157680261536747 0.082157680261536747 ;
createNode mesh -n "lightbulbShape" -p "lightbulb";
	rename -uid "7A5A83A4-4AF3-740C-1787-73BF38779E4C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.79340586066246033 0.55696484446525574 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 161 ".uvst[0].uvsp[0:160]" -type "float2" 0.62207109 0.81968957
		 0.62207109 0.91108948 0.4124887 0.91118747 0.41249001 0.81959146 0.62207109 0.98798031
		 0.41249585 0.98824304 0.3823528 0.90432841 0.38235241 0.82645077 0.62207109 0.74279869
		 0.41249964 0.74253565 0.38235411 0.96984732 0.38235301 0.76093411 0.53594649 0.5922575
		 0.53594649 0.67995518 0.3264066 0.68014336 0.3264066 0.59225732 0.53594649 0.73980957
		 0.32639933 0.74012607 0.29623014 0.66698611 0.29623014 0.59225732 0.53594649 0.5045597
		 0.3264066 0.50437152 0.2962299 0.71798742 0.29623014 0.51752859 0.53594649 0.44470534
		 0.32639515 0.44438866 0.29623079 0.46652335 0.21084037 0.47955897 0.26970002 0.53056425
		 0.15324903 0.6052931 0.29164183 0.6052931 0.13374853 0.46847752 0.2696996 0.68002188
		 0.22092709 0.45742437 0.13026321 0.44438866 0.062905945 0.50083518 0.21083829 0.73102313
		 0.046944767 0.48243952 0.020805243 0.5663541 0.13374931 0.74210387 0.020806495 0.64423168
		 0.13026321 0.76619726 0.22092709 0.75316173 0.062908448 0.70974851 0.046944767 0.72814697
		 0.28758657 0.76860678 0.37805617 0.76860678 0.3786487 0.97815812 0.28798479 0.97817034
		 0.20444536 0.76860678 0.20466632 0.97818202 0.10967916 0.97817832 0.026538733 0.97817832
		 0.026759271 0.76860678 0.11007771 0.76861948 0.20014906 0.97817832 0.20074162 0.76863116
		 0.477716 0.11258902 0.42446166 0.11258902 0.42708656 0.03695609 0.47509119 0.03695609
		 0.49362051 0.19115138 0.40855709 0.19115138 0.37966123 0.11258902 0.38670233 0.03695609
		 0.43201062 0.019593172 0.47016695 0.019593172 0.52251661 0.11258902 0.51547515 0.03695609
		 0.56518036 0.19115138 0.49905002 0.31426418 0.40312764 0.31426418 0.33699727 0.19115138
		 0.39991143 0.019593172 0.50226635 0.019593172 0.57974499 0.31426418 0.48415735 0.39497516
		 0.41802022 0.39497516 0.32243264 0.31426418 0.53979552 0.39497516 0.36238202 0.39497516
		 0.16289952 0.11258902 0.11180242 0.11258902 0.11683937 0.03695609 0.16289952 0.03695609
		 0.16289952 0.19115138 0.081281863 0.19115138 0.076928131 0.11258902 0.085403048 0.03695609
		 0.12628868 0.019593172 0.16289952 0.019593172 0.21399659 0.11258902 0.20895958 0.03695609
		 0.24451718 0.19115138 0.16289952 0.31426418 0.0708628 0.31426418 0.025577154 0.19115138
		 0.1995104 0.019593172 0.24887095 0.11258902 0.24039584 0.03695609 0.30022189 0.19115138
		 0.25493634 0.31426418 0.16289952 0.39497516 0.099441521 0.39497516 0.0080469511 0.31426418
		 0.31775212 0.31426418 0.2263577 0.39497516 0.056130644 0.39497516 0.2696681 0.39497516
		 0.88977152 0.62042296 0.83978838 0.6637336 0.79136217 0.55696481 0.77432454 0.67314625
		 0.90840441 0.55696481 0.86193973 0.71181738 0.76699394 0.72546852 0.71416378 0.64567173
		 0.88977152 0.49350685 0.67974007 0.68562126 0.67840731 0.59003341 0.83978838 0.45019597
		 0.67840731 0.5238964 0.7743243 0.4407838 0.71416378 0.46825802 0.76699382 0.38846117
		 0.86193973 0.40211236 0.67974007 0.42830878 0.88067591 0.23705542 0.93338823 0.23705542
		 0.93031037 0.31268829 0.88279414 0.31268829 0.87192988 0.1584931 0.95612764 0.1584931
		 0.92355847 0.33005142 0.88579094 0.33005142 0.83223414 0.23705542 0.83912766 0.31268829
		 0.79455364 0.1584931 0.86940014 0.035380244 0.96434557 0.035380244 0.96658957 0.31268829
		 0.95239556 0.33005142 0.85108221 0.33005142 0.78214574 0.035380244 0.69209325 0.12837619
		 0.64365125 0.12837619 0.65054476 0.052743196 0.69421142 0.052743196 0.68334717 0.20693827
		 0.60597092 0.20693827 0.66249961 0.035380185 0.69720769 0.035380185 0.74480546 0.12837619
		 0.74172711 0.052743196 0.76754475 0.20693827 0.68081707 0.33005112 0.5935632 0.33005112
		 0.73497593 0.035380185 0.77576292 0.33005112 0.77800679 0.052743196 0.76381254 0.035380185;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".vt[0:89]"  0.55727786 -1.0047333241 -0.35907727 0.27444825 -1.0047333241 -0.60414946
		 -0.095979005 -1.0047333241 -0.65740991 -0.43639648 -1.0047333241 -0.50194615 -0.63872439 -1.0047333241 -0.18711811
		 -0.63872439 -1.0047333241 0.18711796 -0.43639648 -1.0047333241 0.50194621 -0.095979005 -1.0047333241 0.65740907
		 0.27444825 -1.0047333241 0.60415006 0.55727786 -1.0047333241 0.35907716 0.6627112 -1.0047333241 -8.8214875e-08
		 1.001431942 0.41250566 -0.64677322 0.49199706 0.41250566 -1.088200569 -0.17521851 0.41250566 -1.18413186
		 -0.78838259 0.41250566 -0.90411067 -1.15281618 0.41250566 -0.33704022 -1.15281737 0.41250566 0.33703935
		 -0.78838259 0.41250566 0.90410972 -0.17521973 0.41250566 1.18413258 0.49199706 0.41250566 1.088201165
		 1.001431942 0.41250566 0.6467731 1.19134152 0.41250566 -7.8678134e-08 0.68757933 0.97968829 -0.4459419
		 0.33633056 0.97968829 -0.75029981 -0.12370606 0.97968829 -0.8164444 -0.54647464 0.97968829 -0.62337232
		 -0.79774779 0.97968829 -0.23238395 -0.79774779 0.97968829 0.23238398 -0.54647464 0.97968829 0.62337244
		 -0.12370727 0.97968829 0.81644356 0.33633056 0.97968829 0.75030065 0.68757933 0.97968829 0.44594193
		 0.81851929 0.97968829 -4.7683706e-09 -0.00397583 1.300313 -6.318092e-08 0.40801758 -1.65824711 -0.25727606
		 0.20537232 -1.65824711 -0.43286857 -0.0600354 -1.65824711 -0.47102925 -0.30394408 -1.65824711 -0.35964036
		 -0.44890869 -1.65824711 -0.13406868 -0.44890869 -1.65824711 0.1340685 -0.30394286 -1.65824711 0.35964063
		 -0.060036622 -1.65824711 0.47102863 0.20537232 -1.65824711 0.43286884 0.40801758 -1.65824711 0.25727636
		 0.48355958 -1.65824711 -7.8678134e-08 0.0085656736 -2.46132874 -9.7751617e-08 0.50776613 -1.53623164 -0.3236798
		 0.25281861 -1.53623164 -0.54459316 -0.081093751 -1.53623164 -0.59260333 -0.38795412 -1.53623164 -0.45246476
		 -0.57033694 -1.53623164 -0.1686722 -0.57033694 -1.53623164 0.1686721 -0.38795289 -1.53623164 0.45246506
		 -0.081093751 -1.53623164 0.59260279 0.25281617 -1.53623164 0.54459387 0.50776488 -1.53623164 0.32368019
		 0.60280639 -1.53623164 -3.695488e-08 0.88600832 -0.45264992 -0.57355452 1.054418921 -0.45264992 -6.0796737e-08
		 0.88600832 -0.45264992 0.57355458 0.43424439 -0.45264992 0.96501023 -0.15744019 -0.45264992 1.050081134
		 -0.70118898 -0.45264992 0.80175924 -1.024366498 -0.45264992 0.29888421 -1.024366498 -0.45264992 -0.29888469
		 -0.70118898 -0.45264992 -0.80175948 -0.15744019 -0.45264992 -1.050081491 0.43424562 -0.45264992 -0.96500939
		 0.3501941 -2.36149478 -0.21922949 0.41019043 -2.27296758 -0.257828 0.2071106 -2.27300119 -0.4337976
		 0.17751953 -2.36149287 -0.36886191 -0.058867186 -2.2730372 -0.47203994 -0.048642579 -2.36149478 -0.40137151
		 -0.30329591 -2.27307129 -0.36041155 -0.25647095 -2.36149716 -0.30644464 -0.44857422 -2.27309203 -0.13435614
		 -0.37998047 -2.36150074 -0.11423399 -0.44857422 -2.27308846 0.13435629 -0.37997681 -2.36150217 0.11423302
		 -0.30329591 -2.27306032 0.36041248 -0.25646362 -2.36150026 0.30643746 -0.058867186 -2.27302313 0.47203931
		 -0.048640136 -2.36149836 0.40135729 0.2071106 -2.2729888 0.43379754 0.17751342 -2.36149526 0.3688502
		 0.41019043 -2.27296758 0.25782812 0.35019287 -2.36149478 0.21922956 0.48589599 -2.27296758 -1.0609627e-07
		 0.41456422 -2.36149478 -1.0728836e-07;
	setAttr -s 187 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 0 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 11 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 22 0 11 22 0 12 23 0 13 24 0 14 25 0 15 26 0 16 27 0 17 28 0 18 29 0 19 30 0
		 20 31 0 21 32 0 22 33 0 23 33 0 24 33 0 25 33 0 26 33 0 27 33 0 28 33 0 29 33 0 30 33 0
		 31 33 0 32 33 0 0 46 0 1 47 0 34 35 0 2 48 0 35 36 0 3 49 0 36 37 0 4 50 0 37 38 0
		 5 51 0 38 39 0 6 52 0 39 40 0 7 53 0 40 41 0 8 54 0 41 42 0 9 55 0 42 43 0 10 56 0
		 43 44 0 44 34 0 0 57 0 10 58 0 9 59 0 8 60 0 7 61 0 6 62 0 5 63 0 4 64 0 3 65 0 2 66 0
		 1 67 0 46 34 0 47 35 0 48 36 0 49 37 0 50 38 0 51 39 0 52 40 0 53 41 0 54 42 0 55 43 0
		 56 44 0 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 54 1 54 55 1 55 56 1
		 56 46 1 57 11 0 58 21 0 59 20 0 60 19 0 61 18 0 62 17 0 63 16 0 64 15 0 65 14 0 66 13 0
		 67 12 0 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 66 1 66 67 1
		 67 57 1 68 69 1 69 88 0 88 89 1 89 68 0 68 71 0 71 70 1 70 69 0 71 73 0 73 72 1 72 70 0
		 73 75 0 75 74 1 74 72 0 75 77 0 77 76 1 76 74 0 77 79 0 79 78 1 78 76 0 79 81 0 81 80 1
		 80 78 0 81 83 0 83 82 1 82 80 0 83 85 0 85 84 1 84 82 0 85 87 0 87 86 1 86 84 0 87 89 0
		 88 86 0 68 45 1;
	setAttr ".ed[166:186]" 45 71 1 45 73 1 45 75 1 45 77 1 45 79 1 45 81 1 45 83 1
		 45 85 1 45 87 1 45 89 1 34 69 0 70 35 0 72 36 0 74 37 0 76 38 0 78 39 0 80 40 0 82 41 0
		 84 42 0 86 43 0 88 44 0;
	setAttr -s 99 -ch 374 ".fc[0:98]" -type "polyFaces" 
		f 4 0 87 131 -78
		mu 0 4 91 98 100 93
		f 4 1 86 130 -88
		mu 0 4 128 127 131 132
		f 4 2 85 129 -87
		mu 0 4 127 135 137 131
		f 4 3 84 128 -86
		mu 0 4 63 58 62 72
		f 4 4 83 127 -85
		mu 0 4 58 57 61 62
		f 4 5 82 126 -84
		mu 0 4 57 67 69 61
		f 4 6 81 125 -83
		mu 0 4 145 144 148 149
		f 4 7 80 124 -82
		mu 0 4 144 152 154 148
		f 4 8 79 123 -81
		mu 0 4 87 82 86 96
		f 4 9 78 122 -80
		mu 0 4 82 81 85 86
		f 4 10 77 121 -79
		mu 0 4 81 91 93 85
		f 4 11 34 -23 -34
		mu 0 4 101 105 108 106
		f 4 12 35 -24 -35
		mu 0 4 114 115 112 110
		f 4 13 36 -25 -36
		mu 0 4 115 118 116 112
		f 4 14 37 -26 -37
		mu 0 4 78 71 77 80
		f 4 15 38 -27 -38
		mu 0 4 71 70 76 77
		f 4 16 39 -28 -39
		mu 0 4 70 75 79 76
		f 4 17 40 -29 -40
		mu 0 4 126 124 122 123
		f 4 18 41 -30 -41
		mu 0 4 124 125 120 122
		f 4 19 42 -31 -42
		mu 0 4 104 95 103 107
		f 4 20 43 -32 -43
		mu 0 4 95 94 102 103
		f 4 21 33 -33 -44
		mu 0 4 94 101 106 102
		f 3 22 45 -45
		mu 0 3 109 110 111
		f 3 23 46 -46
		mu 0 3 110 112 111
		f 3 24 47 -47
		mu 0 3 112 116 111
		f 3 25 48 -48
		mu 0 3 116 119 111
		f 3 26 49 -49
		mu 0 3 119 121 111
		f 3 27 50 -50
		mu 0 3 121 123 111
		f 3 28 51 -51
		mu 0 3 123 122 111
		f 3 29 52 -52
		mu 0 3 122 120 111
		f 3 30 53 -53
		mu 0 3 120 117 111
		f 3 31 54 -54
		mu 0 3 117 113 111
		f 3 32 44 -55
		mu 0 3 113 109 111
		f 4 -1 55 99 -57
		mu 0 4 98 91 92 99
		f 4 -2 56 100 -59
		mu 0 4 127 128 129 130
		f 4 -3 58 101 -61
		mu 0 4 135 127 130 136
		f 4 -4 60 102 -63
		mu 0 4 58 63 64 59
		f 4 -5 62 103 -65
		mu 0 4 57 58 59 60
		f 4 -6 64 104 -67
		mu 0 4 67 57 60 68
		f 4 -7 66 105 -69
		mu 0 4 144 145 146 147
		f 4 -8 68 106 -71
		mu 0 4 152 144 147 153
		f 4 -9 70 107 -73
		mu 0 4 82 87 88 83
		f 4 -10 72 108 -75
		mu 0 4 81 82 83 84
		f 4 -11 74 109 -56
		mu 0 4 91 81 84 92
		f 4 -100 88 57 -90
		mu 0 4 129 140 141 133
		f 4 -101 89 59 -91
		mu 0 4 130 129 133 134
		f 4 -102 90 61 -92
		mu 0 4 136 130 134 142
		f 4 -103 91 63 -93
		mu 0 4 59 64 73 65
		f 4 -104 92 65 -94
		mu 0 4 60 59 65 66
		f 4 -105 93 67 -95
		mu 0 4 68 60 66 74
		f 4 -106 94 69 -96
		mu 0 4 147 146 150 151
		f 4 -107 95 71 -97
		mu 0 4 153 147 151 157
		f 4 -108 96 73 -98
		mu 0 4 159 153 157 160
		f 4 -109 97 75 -99
		mu 0 4 84 83 89 90
		f 4 -110 98 76 -89
		mu 0 4 92 84 90 97
		f 4 -122 110 -22 -112
		mu 0 4 85 93 101 94
		f 4 -123 111 -21 -113
		mu 0 4 86 85 94 95
		f 4 -124 112 -20 -114
		mu 0 4 96 86 95 104
		f 4 -125 113 -19 -115
		mu 0 4 148 154 158 155
		f 4 -126 114 -18 -116
		mu 0 4 149 148 155 156
		f 4 -127 115 -17 -117
		mu 0 4 61 69 75 70
		f 4 -128 116 -16 -118
		mu 0 4 62 61 70 71
		f 4 -129 117 -15 -119
		mu 0 4 72 62 71 78
		f 4 -130 118 -14 -120
		mu 0 4 131 137 143 138
		f 4 -131 119 -13 -121
		mu 0 4 132 131 138 139
		f 4 -132 120 -12 -111
		mu 0 4 93 100 105 101
		f 4 132 133 134 135
		mu 0 4 23 21 15 19
		f 4 -133 136 137 138
		mu 0 4 21 23 26 25
		f 4 -138 139 140 141
		mu 0 4 33 27 31 34
		f 4 -141 142 143 144
		mu 0 4 34 31 35 37
		f 4 -144 145 146 147
		mu 0 4 5 10 6 2
		f 4 -147 148 149 150
		mu 0 4 2 6 7 3
		f 4 -150 151 152 153
		mu 0 4 3 7 11 9
		f 4 -153 154 155 156
		mu 0 4 44 43 39 41
		f 4 -156 157 158 159
		mu 0 4 41 39 36 42
		f 4 -159 160 161 162
		mu 0 4 17 22 18 14
		f 4 -162 163 -135 164
		mu 0 4 14 18 19 15
		f 3 -137 165 166
		mu 0 3 27 28 29
		f 3 -140 -167 167
		mu 0 3 31 27 29
		f 3 -143 -168 168
		mu 0 3 35 31 29
		f 3 -146 -169 169
		mu 0 3 38 35 29
		f 3 -149 -170 170
		mu 0 3 40 38 29
		f 3 -152 -171 171
		mu 0 3 43 40 29
		f 3 -155 -172 172
		mu 0 3 39 43 29
		f 3 -158 -173 173
		mu 0 3 36 39 29
		f 3 -161 -174 174
		mu 0 3 32 36 29
		f 3 -164 -175 175
		mu 0 3 30 32 29
		f 3 -136 -176 -166
		mu 0 3 28 30 29
		f 4 -58 176 -139 177
		mu 0 4 24 20 21 25
		f 4 -60 -178 -142 178
		mu 0 4 45 46 47 48
		f 4 -62 -179 -145 179
		mu 0 4 49 45 48 50
		f 4 -64 -180 -148 180
		mu 0 4 1 4 5 2
		f 4 -66 -181 -151 181
		mu 0 4 0 1 2 3
		f 4 -68 -182 -154 182
		mu 0 4 8 0 3 9
		f 4 -70 -183 -157 183
		mu 0 4 51 52 53 54
		f 4 -72 -184 -160 184
		mu 0 4 55 51 54 56
		f 4 -74 -185 -163 185
		mu 0 4 13 16 17 14
		f 4 -76 -186 -165 186
		mu 0 4 12 13 14 15
		f 4 -77 -187 -134 -177
		mu 0 4 20 12 15 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "hole" -p "Light";
	rename -uid "ADA37EEC-4BDD-19F6-A171-7E8586D268B0";
	setAttr ".t" -type "double3" 1.0772740094813673 -0.046363848838665823 1.9576988554428669 ;
	setAttr ".s" -type "double3" 0.062751291373430412 0.062751291373430412 0.062751291373430412 ;
createNode transform -n "transform1" -p "hole";
	rename -uid "C0E7ACA2-4646-BE8C-5DB8-2F982645D636";
	setAttr ".v" no;
createNode mesh -n "holeShape" -p "transform1";
	rename -uid "8A058BE7-4FA6-A5F6-CA3A-F2A7A4868A97";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50181687891896432 0.32390607244978664 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[15]" -type "float3" 2.2737367e-15 -0.30763915 0 ;
	setAttr ".pt[16]" -type "float3" 2.2737367e-15 -0.30763915 0 ;
	setAttr ".pt[17]" -type "float3" 2.2737367e-15 -0.30763915 0 ;
	setAttr ".pt[18]" -type "float3" 2.2737367e-15 -0.30763915 0 ;
	setAttr ".pt[19]" -type "float3" 2.2737367e-15 -0.30763915 0 ;
createNode transform -n "cable1" -p "Light";
	rename -uid "D2B8A862-4E1E-BC4E-1885-48A8F7856A8C";
	setAttr ".t" -type "double3" 1.5282741122690959 1.0574024210600788 2.9811792404151136 ;
	setAttr ".r" -type "double3" 0 66.568739836113821 -180 ;
	setAttr ".rp" -type "double3" 1.1142283248901368 0.89357849121093746 0.00046213433146476748 ;
	setAttr ".rpt" -type "double3" -1.5577236303808615 -1.7871569824218749 -1.0226249822002911 ;
	setAttr ".sp" -type "double3" 1.1142283248901368 0.89357849121093746 0.00046213433146476748 ;
createNode mesh -n "polySurfaceShape4" -p "cable1";
	rename -uid "20EC6463-4ED4-39EE-E279-B4BF8C235F8A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.03110220655798912 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0 0 0.020734873 0
		 0.041469622 0 0.062204413 0 0 0.32789066 0.020734873 0.32789066 0.041469622 0.32789066
		 0.062204413 0.32789066 0 0.55486542 0.020734873 0.55486542 0.041469622 0.55486542
		 0.062204413 0.55486542 0 0.78244722 0.020734873 0.78244722 0.041469622 0.78244722
		 0.062204413 0.78244722 0 1 0.020734873 1 0.041469622 1 0.062204413 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 0.03164063 0.011391077 0.014206027 ;
	setAttr ".pt[1]" -type "float3" 0.03164063 0.011391077 0.014206027 ;
	setAttr ".pt[2]" -type "float3" 0.03164063 0.011391077 0.014206027 ;
	setAttr ".pt[3]" -type "float3" -0.0008533402 -0.042670511 -0.0019690045 ;
	setAttr ".pt[4]" -type "float3" -0.0008533402 -0.042670511 -0.0019690045 ;
	setAttr ".pt[5]" -type "float3" -0.0008533402 -0.042670511 -0.0019690045 ;
	setAttr ".pt[6]" -type "float3" -0.024935056 0 -0.0026079537 ;
	setAttr ".pt[7]" -type "float3" -0.024935056 0 -0.0026079537 ;
	setAttr ".pt[8]" -type "float3" -0.024935056 0 -0.0026079537 ;
	setAttr ".pt[12]" -type "float3" 0.017828057 0.033475116 0.001864634 ;
	setAttr ".pt[13]" -type "float3" 0.017828057 0.033475116 0.001864634 ;
	setAttr ".pt[14]" -type "float3" 0.017828057 0.033475116 0.001864634 ;
	setAttr -s 15 ".vt[0:14]"  1.082146645 0.69667137 -0.0040728794 1.074270248 0.69681203 -0.00047528028
		 1.081323504 0.69668609 0.0045481599 1.11999691 0.82828528 -0.0035291272 1.1126821 0.83235186 -0.0013028367
		 1.11802471 0.82938176 0.0048319637 1.15418637 0.91670454 -0.0031068136 1.1456213 0.91688758 -0.0018393472
		 1.15100133 0.9167726 0.0049461611 1.1257329 1.0073984861 -0.0026447966 1.11837959 1.0028328896 -0.0023523516
		 1.12227142 1.0052492619 0.0049971482 1.088953733 1.090485573 -0.00214898 1.080336094 1.089971066 -0.002835294
		 1.084051609 1.090192914 0.004984274;
	setAttr -s 27 ".ed[0:26]"  0 1 0 1 4 0 4 3 1 3 0 0 1 2 0 2 5 0 5 4 1
		 2 0 0 3 5 1 4 7 0 7 6 1 6 3 0 5 8 0 8 7 1 6 8 1 7 10 0 10 9 1 9 6 0 8 11 0 11 10 1
		 9 11 1 10 13 0 13 12 0 12 9 0 11 14 0 14 13 0 12 14 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 5 4
		f 4 4 5 6 -2
		mu 0 4 1 2 6 5
		f 4 7 -4 8 -6
		mu 0 4 2 3 7 6
		f 4 -3 9 10 11
		mu 0 4 4 5 9 8
		f 4 -7 12 13 -10
		mu 0 4 5 6 10 9
		f 4 -9 -12 14 -13
		mu 0 4 6 7 11 10
		f 4 -11 15 16 17
		mu 0 4 8 9 13 12
		f 4 -14 18 19 -16
		mu 0 4 9 10 14 13
		f 4 -15 -18 20 -19
		mu 0 4 10 11 15 14
		f 4 -17 21 22 23
		mu 0 4 12 13 17 16
		f 4 -20 24 25 -22
		mu 0 4 13 14 18 17
		f 4 -21 -24 26 -25
		mu 0 4 14 15 19 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform4" -p "cable1";
	rename -uid "D10A99D0-4420-72A3-D7A7-3B843CB98B55";
	setAttr ".v" no;
createNode mesh -n "cableShape1" -p "transform4";
	rename -uid "F5F0FD6B-428E-1CC6-2486-EAB988577D3B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.03110220655798912 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cable2" -p "Light";
	rename -uid "86BAEB35-434C-5756-C7DE-988A6E04F4F6";
	setAttr ".t" -type "double3" 2.1577130942019163 1.057402421060079 1.9585542582148228 ;
	setAttr ".r" -type "double3" 0 0 -180 ;
	setAttr ".rp" -type "double3" 1.0012932205200196 0.88710567474365232 0.00046055912971496585 ;
	setAttr ".rpt" -type "double3" -2.0025864410400387 -1.7742113494873053 0 ;
	setAttr ".sp" -type "double3" 1.0012932205200196 0.88710567474365232 0.00046055912971496585 ;
createNode transform -n "transform2" -p "cable2";
	rename -uid "93F714B9-49A6-41B7-E81E-B8BCF3533132";
	setAttr ".v" no;
createNode mesh -n "cableShape2" -p "transform2";
	rename -uid "060E837D-4DB9-439B-C267-C6B602AD967D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.17477468261495233 0.4999999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cable3" -p "Light";
	rename -uid "7817B785-4D42-E008-B8E6-2E8684054E87";
	setAttr ".t" -type "double3" 1.5017972894272793 1.0722522144806652 0.95667155213594102 ;
	setAttr ".r" -type "double3" 2.6852759154603598 -61.843436119610693 -178.08148889006324 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 1.1142283248901363 0.89357849121093735 0.00046213433146476748 ;
	setAttr ".rpt" -type "double3" -1.5725408450056366 -1.802006775842462 1.0018827060788815 ;
	setAttr ".sp" -type "double3" 1.1142283248901368 0.89357849121093746 0.00046213433146476748 ;
	setAttr ".spt" -type "double3" -4.2632564145606005e-16 -1.4210854715202002e-16 0 ;
createNode transform -n "transform3" -p "cable3";
	rename -uid "4AB0DB3E-41A8-172A-4C6A-2AA1413C6416";
	setAttr ".v" no;
createNode mesh -n "cableShape3" -p "transform3";
	rename -uid "F20B152D-49BB-2537-0826-10B626D97F4C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.03110220655798912 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cable4" -p "Light";
	rename -uid "49333EB9-4476-354A-6ADC-3FA4FF9002BD";
	setAttr ".t" -type "double3" 2.1355369563463045 1.057402421060079 1.7457665638483446 ;
	setAttr ".r" -type "double3" 0 -11.098270038619368 -180 ;
	setAttr ".rp" -type "double3" 1.1811027526855469 1.030483856201172 0.00045569047331809996 ;
	setAttr ".rpt" -type "double3" -2.3400293675154824 -2.0609677124023444 0.2273447078889568 ;
	setAttr ".sp" -type "double3" 1.1811027526855469 1.030483856201172 0.00045569047331809996 ;
createNode transform -n "transform5" -p "|Light|cable4";
	rename -uid "0722AC4D-40D0-7CC1-D7FD-3A8AB053EEB7";
	setAttr ".v" no;
createNode mesh -n "cableShape4" -p "transform5";
	rename -uid "554F0C09-47CF-4754-1187-B1B8450D67E5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.02553107962012291 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "curve1";
	rename -uid "5AA903C6-4074-529F-74A6-5E95CEF6351D";
	setAttr ".v" no;
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "F085ACC9-4BB1-8038-5A4A-50B9B70A85CE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		1.0717352130672801 1.0965725194422686 0
		1.0827137355654921 0.96945278525244605 0
		1.2104112867289052 0.93767285170499037 0
		1.3034398194769117 1.0266566656378664 0
		1.2895722121107493 1.0480358936607002 0
		;
createNode transform -n "curve2";
	rename -uid "C2F0BA1B-47D5-0C8D-8259-F1A5D621C6A3";
	setAttr ".v" no;
createNode nurbsCurve -n "curveShape2" -p "curve2";
	rename -uid "DD6BB504-4DB1-0141-DCCE-E7B5D99C31EF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 3 0 no 3
		8 0 0 0 1 2 3 3 3
		6
		1.0601788735954782 1.080971461155336 0
		1.0648014093841991 0.9544295439391034 0
		0.98101794821363397 0.87526861855725913 0
		0.91976934901308294 0.78455135370361295 0
		0.96657252387388126 0.71116859805766974 0
		1.0047084441308283 0.69730099069150731 0
		;
createNode transform -n "curve3";
	rename -uid "205A0B35-4780-8D03-1CDC-B68DF86139A5";
	setAttr ".v" no;
createNode nurbsCurve -n "curveShape3" -p "curve3";
	rename -uid "2C7F782B-40A9-890C-A5BB-519E650E5437";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		1.0792468337239516 0.69672317371791725 0
		1.0804024676711317 0.76143867476000882 0
		1.120849655822439 0.84002178316826293 0
		1.1578299421322056 0.89780348052727321 0
		1.1428067008188629 0.98909856235450966 0
		1.0867584543806228 1.0515027955022407 0
		1.0844471864862626 1.0902165327327777 0
		;
createNode transform -n "curve4";
	rename -uid "8C112077-42EB-47CF-6BBE-47BFDA193AB3";
	setAttr ".v" no;
createNode nurbsCurve -n "curveShape4" -p "curve4";
	rename -uid "BB4D28DC-47E4-3681-ED42-3D8FD2E7A2A5";
	setAttr -k off ".v";
createNode transform -n "cable4";
	rename -uid "54041A10-40D8-85CD-06D0-7A992683D772";
	setAttr ".rp" -type "double3" 1.1147828587287945 0.92177877257629071 -0.00085540277195576668 ;
	setAttr ".sp" -type "double3" 1.1147828587287945 0.92177877257629071 -0.00085540277195576668 ;
createNode mesh -n "cable4Shape" -p "|cable4";
	rename -uid "D1944BC5-4487-9814-2174-E5BA45893A7A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49325278389733285 0.50000002235174179 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "076EDB00-4B58-518E-D561-08971A0E9668";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "63DA9F54-4E09-1922-B088-53B3821B849D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CCAD8586-4F8A-1E56-0B08-B6AA10CA3DD6";
createNode displayLayerManager -n "layerManager";
	rename -uid "28237326-48BE-6C8F-95CF-2CB0B544C328";
createNode displayLayer -n "defaultLayer";
	rename -uid "673E6018-4DCF-8A71-504F-90B322D9A53F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "55C08FB6-4FD5-A079-65ED-A48DF84E0E37";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C8C3B879-4F8F-FA5B-4B43-CFA48D92791E";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "79AF0C78-45DB-E1D7-5EE3-A5BD6E470AB4";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "191F507E-495E-2D18-AE0B-0B98FBA94353";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "0DE94443-491F-EEF1-FE0B-759C36A0DA13";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "9D56ADCC-429D-B863-D3E5-6AA756DC17E6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "57F4BE22-4BF7-DE43-A04C-C7A4103D59B6";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C8D09B06-40C3-EDDD-2575-C7BE74C80187";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 993\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 992\n            -height 715\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 993\n            -height 715\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1995\n            -height 1521\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1995\\n    -height 1521\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1995\\n    -height 1521\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "026371CE-4AD3-6FF9-1FBB-8696C368E1AA";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 353 -ast 0 -aet 353 ";
	setAttr ".st" 6;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "6AF49569-4E24-BD1A-7EDF-4385ADC9884C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139755249023436 0.077934384346008301 0.5 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.1030084228515625 1.1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "851460A1-40AE-5CDC-8396-509048656B4E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.077934379577636714 0.5 ;
	setAttr ".ps" -type "double2" 0.1030084228515625 0 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "8FD0AF86-4AED-C88E-3AD9-FF8FBF32E041";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139766693115233 0.077934374809265142 0.5 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1.1 0 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj4";
	rename -uid "105FE452-4195-615D-2940-1385B82B9EE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139766693115233 0.077934370040893555 0.5 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 0.10300849914550782 1.1 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj5";
	rename -uid "3D094580-437A-5FF2-31A1-FDA755184ADC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.077934365272521969 0.5 ;
	setAttr ".ro" -type "double3" -90 -90 0 ;
	setAttr ".ps" -type "double2" 1.0999999672174454 0.10300850706084048 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj6";
	rename -uid "A389D643-4327-EB05-0EE7-E9B243668976";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.077934360504150396 0.5 ;
	setAttr ".ro" -type "double3" -90 -90 0 ;
	setAttr ".ps" -type "double2" 1.0999999672174454 0.10300850706084048 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj7";
	rename -uid "073AAD83-4F81-BD85-9C6B-E49F684AD68A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.07793435573577881 0.5 ;
	setAttr ".ro" -type "double3" -90 -90 0 ;
	setAttr ".ps" -type "double2" 1.0999999672174454 1.0999999672174454 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj8";
	rename -uid "4735BA6F-441C-0F59-8F73-73964C579694";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[3]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.067509741783142091 0.5 ;
	setAttr ".ic" -type "double2" 0.5 1.0492661520940816 ;
	setAttr ".ro" -type "double3" -90 -90 0 ;
	setAttr ".ps" -type "double2" 1.0999999672174454 1.0999999672174454 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "F967EB11-4592-D8A3-904C-BA926F1A2886";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0 -0.11598048 ;
	setAttr ".uvtk[9]" -type "float2" 0 -0.11598048 ;
	setAttr ".uvtk[14]" -type "float2" 0 -0.11598048 ;
	setAttr ".uvtk[15]" -type "float2" 0 -0.11598048 ;
createNode polyPlanarProj -n "polyPlanarProj9";
	rename -uid "616E87C7-466E-707D-300B-B8B9DFAF19FA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.067509741783142091 0.5 ;
	setAttr ".ro" -type "double3" 0 -90 0 ;
	setAttr ".ps" -type "double2" 1.0999999672174454 1.0999999672174454 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "88C14E83-425F-9CCC-7E62-E48687AFB6F6";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0 -0.056188211 ;
	setAttr ".uvtk[9]" -type "float2" 0 -0.056188211 ;
	setAttr ".uvtk[10]" -type "float2" 0 0.45909882 ;
	setAttr ".uvtk[11]" -type "float2" 0 0.45909882 ;
	setAttr ".uvtk[12]" -type "float2" 0 0.45909888 ;
	setAttr ".uvtk[13]" -type "float2" 0 0.45909888 ;
	setAttr ".uvtk[14]" -type "float2" 0 -0.056188211 ;
	setAttr ".uvtk[15]" -type "float2" 0 -0.056188211 ;
	setAttr ".uvtk[16]" -type "float2" 0 -0.32616577 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.32616577 ;
	setAttr ".uvtk[18]" -type "float2" 0 -0.32616577 ;
	setAttr ".uvtk[19]" -type "float2" 0 -0.32616577 ;
	setAttr ".uvtk[20]" -type "float2" 0 0.30012733 ;
	setAttr ".uvtk[21]" -type "float2" 0 0.30012733 ;
	setAttr ".uvtk[22]" -type "float2" 0 0.3001273 ;
	setAttr ".uvtk[23]" -type "float2" 0 0.3001273 ;
createNode polyPlanarProj -n "polyPlanarProj10";
	rename -uid "BDE346A1-4382-BC6C-6625-D08E39865911";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.067509741783142091 0.5 ;
	setAttr ".ic" -type "double2" 0.5 0.28035340433806377 ;
	setAttr ".ro" -type "double3" 0 180 0 ;
	setAttr ".ps" -type "double2" 0.10300850706084048 0.10300850706084048 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj11";
	rename -uid "3475BFCE-42C0-B093-8DA5-9AA506F57F7D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.067509741783142091 0.5 ;
	setAttr ".ro" -type "double3" 0 180 0 ;
	setAttr ".ps" -type "double2" 0.10300850706084048 0.029048599206804644 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj12";
	rename -uid "E8FD1D30-447D-CE98-E20E-338B2EDA3CB4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.067509741783142091 1.05 ;
	setAttr ".ps" -type "double2" 0.10300850706084048 0.10300850706084048 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj13";
	rename -uid "D20ABFB8-4247-D2CE-1AAC-6293DB8EED05";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 2.0849258380679205 0 0 0 0 110 0
		 -92.139751738068568 6.7509757495384859 50 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.92139762878417975 0.067509741783142091 -0.05 ;
	setAttr ".ps" -type "double2" 0.10300850706084048 0.10300850706084048 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "46CC1DED-410B-E57A-5D52-7A84D6A16B6C";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.024876654 -0.24301912 -0.97531223
		 -0.15727185 -0.99266803 -0.35971311 0.0075213015 -0.44546017 0.97067636 -0.44452241
		 -0.029512737 -0.35877541 -0.012157235 -0.15633415 0.98803174 -0.24208139 -0.042429388
		 -0.6736027 -0.042429388 -0.68151253 -0.042429388 -0.69193906 0.042037755 -0.69193906
		 0.042037755 -0.69354004 -0.042429388 -0.69354004 0.042037785 -0.68151253 0.042037785
		 -0.6736027 0.042037785 -0.660595 0.042037785 -0.66850483 -0.042429388 -0.66850483
		 -0.042429388 -0.660595 0.042037755 -0.66756606 -0.042429388 -0.66756606 -0.042429388
		 -0.66916704 0.042037755 -0.66916704;
createNode polyPlanarProj -n "polyPlanarProj14";
	rename -uid "FAFD9245-405F-4376-92CC-DA9CCBDCD29C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 7.9340680523409155 0 0 0 0 9.9322146078917513 0
		 -108.08534470488989 0 65.272278096283046 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.080853500366211 4.7683715820312501e-09 0.65272277832031256 ;
	setAttr ".ro" -type "double3" 177.00000025191326 -85.599999721255486 179.99999965514081 ;
	setAttr ".ps" -type "double2" 0.10693212461819031 0.10693212461819031 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj15";
	rename -uid "138CB5B3-49B6-428D-0B19-24B2BE136560";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 7.9340680523409155 0 0 0 0 9.9322146078917513 0
		 -108.08534470488989 0 65.272278096283046 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.0808534240722656 0 0.65272277832031256 ;
	setAttr ".ic" -type "double2" 0.55644382425193983 -0.47835961229660917 ;
	setAttr ".ro" -type "double3" 0 180 0 ;
	setAttr ".ps" -type "double2" 0.1030084088243666 0.1030084088243666 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj16";
	rename -uid "545F2642-4F48-F316-E933-81A804796B51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[3]";
	setAttr ".ix" -type "matrix" 10.300840882436654 0 0 0 0 7.9340680523409155 0 0 0 0 9.9322146078917513 0
		 -108.08534470488989 0 65.272278096283046 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.0808534240722656 9.387835561008861e-19 0.65272277832031256 ;
	setAttr ".ro" -type "double3" -89.999999999999972 -89.999999999999986 0 ;
	setAttr ".ps" -type "double2" 0.1030084088243666 0.1030084088243666 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "1BD1EAEF-4A08-3A77-E93F-998946F5B230";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.450266 1.10898411 0.45038944
		 1.12469137 0.024663948 1.064659953 0.024663948 1.064659834 0.024663933 1.064659834
		 0.024663933 1.064659953 0.024663936 -0.2466394 0.024663936 -0.2466394 0.024663959
		 -0.2466394 0.024663959 -0.2466394 0.078102455 2.018332243 0.078102469 2.018332005
		 0.078102469 2.018332243 0.078102455 2.018332481 -0.012331966 -1.47572553 -0.012331944
		 -1.47572565 -0.012331944 -1.47572553 -0.012331966 -1.47572553 0.46248776 1.12459648
		 0.46236432 1.10888898 -1.32774198 0.70292222 -1.32774198 0.70292222 -1.32774198 0.70292222
		 -1.32774198 0.70292222;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "3F0BBEEF-479C-53B6-B52C-509722564DD1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "7DBD8D32-4AF1-6DE7-4854-AE9F1F3A47FE";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[12]" -type "float2" -0.019042516 1.6644924 ;
	setAttr ".uvtk[13]" -type "float2" 0.019068127 1.6646072 ;
	setAttr ".uvtk[14]" -type "float2" 0.019099241 1.6950988 ;
	setAttr ".uvtk[15]" -type "float2" -0.019011462 1.6949841 ;
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "1E92C463-4CCA-9F2B-9FAC-2E9738661CE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "2513FD59-4554-5121-3D3A-24994C6E13C5";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 1.68536901 0.19320084 1.68536901
		 0.19320083 2.6729207 1.99838638 2.6729207 1.99838662 2.6729207 1.99838662 2.6729207
		 1.99838662 1.68536901 0.19320084 1.68536901 0.19320083 1.68793786 -1.2263689 1.64982712
		 -1.22648382 1.64985824 -1.19599199 1.68796909 -1.19587731 2.6729207 1.99838662 2.6729207
		 1.99838638 1.68536901 0.19320083 1.68536901 0.19320084;
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "6DCF4F12-4183-A37B-0740-A987E987181A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[11]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "06FE9463-4240-1479-02E5-DD8F0AB72F10";
	setAttr ".uopa" yes;
	setAttr -s 11 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -1.0206742 -0.28156543 ;
	setAttr ".uvtk[3]" -type "float2" -1.0206742 -0.28156543 ;
	setAttr ".uvtk[4]" -type "float2" -1.0206742 -0.28156543 ;
	setAttr ".uvtk[5]" -type "float2" -1.0206742 -0.28156543 ;
	setAttr ".uvtk[10]" -type "float2" -1.0206742 -0.28156531 ;
	setAttr ".uvtk[11]" -type "float2" -1.0206742 -0.28156531 ;
	setAttr ".uvtk[14]" -type "float2" 2.4660401 2.6639471 ;
	setAttr ".uvtk[15]" -type "float2" 2.4661636 2.6796546 ;
	setAttr ".uvtk[16]" -type "float2" 2.4540653 2.6797497 ;
	setAttr ".uvtk[17]" -type "float2" 2.4539418 2.6640425 ;
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "09E071F0-4037-6A88-05BD-159B9A6540CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "4B6407FF-4F32-A419-8AAC-508F5D1F7658";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -2.34762645 0.091014706 -2.34762645
		 -0.58862317 -1.96430433 -2.14013886 -1.96430433 -2.81977677 -1.30898738 -2.81977677
		 -1.30898786 -2.14013886 -1.69231021 0.091014616 -1.69231021 -0.58862305 -1.69442225
		 -1.11292374 -2.3497386 -1.11292338 -1.3068763 -1.61583841 -1.96219277 -1.61583841
		 -2.87110806 -0.58862293 -2.87110758 0.09101475 -0.78550625 -2.8197763 -0.78550708
		 -2.14013791;
createNode polyCube -n "polyCube2";
	rename -uid "88E30F7F-422C-9092-4E0E-3A9F8EB82407";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "EE1581B1-471F-7E77-2AFF-B4800F8A8314";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:11]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 105.54797808123703 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "C33EBAD0-49A1-184B-7C46-79B9567EE1F9";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk[0:37]" -type "float2" 0 -0.28850955 0 -0.28850955
		 0 -0.15177232 0 0.28850955 0 0.25944671 0 -0.28850955 0 -0.28850955 0 -0.15177232
		 0 0.25944671 0 0.13888511 0 0.0021478832 0 0.17224367 0 0.17224367 0 0.13888511 0
		 -0.031210661 0 -0.11841369 0 0.0021478832 0 0.0021478832 0 -0.031210661 0 -0.11841375
		 0 -0.11841375 0 -0.11841375 0 -0.15177232 0 0.25944671 0 0.13888511 0 0.13888511
		 0 -0.031210721 0 -0.031210721 0 -0.15177232 0 0.25944671 0 0.17224367 0 0.25944671
		 0 0.25944671 0 0.17224368 1.4901161e-08 0.17224367 0 0.28850955 0 0.17224367 0 0.0021478832;
createNode polyPlanarProj -n "polyPlanarProj17";
	rename -uid "830C3078-4B50-CAF9-8548-DB89051A760F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[0]" "f[3]" "f[5]" "f[7]" "f[16:17]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.60434009552001955 0.22339607238769532 1.0393163299560546 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1.8927344287318517 1.8927344287318517 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "4D490698-4365-3077-EBCC-92AE315EB513";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.0051812809 0.51294678 ;
	setAttr ".uvtk[2]" -type "float2" -0.0051812809 0.51294678 ;
	setAttr ".uvtk[5]" -type "float2" -0.0051812995 0.51294678 ;
	setAttr ".uvtk[7]" -type "float2" -0.0051812995 0.51294678 ;
	setAttr ".uvtk[9]" -type "float2" -0.0069083748 0.34196451 ;
	setAttr ".uvtk[13]" -type "float2" -0.0069083748 0.34196451 ;
	setAttr ".uvtk[29]" -type "float2" -0.0069084074 0.34196451 ;
	setAttr ".uvtk[30]" -type "float2" -0.0069084074 0.34196451 ;
	setAttr ".uvtk[31]" -type "float2" -0.0051812809 0.51294684 ;
	setAttr ".uvtk[34]" -type "float2" -0.0051812809 0.51294678 ;
	setAttr ".uvtk[38]" -type "float2" -0.0051812995 0.51294678 ;
	setAttr ".uvtk[39]" -type "float2" -0.0051812995 0.51294684 ;
	setAttr ".uvtk[40]" -type "float2" -0.0069083748 0.34196457 ;
	setAttr ".uvtk[41]" -type "float2" -0.0069083748 0.34196457 ;
	setAttr ".uvtk[42]" -type "float2" -0.0069084074 0.34196457 ;
	setAttr ".uvtk[43]" -type "float2" -0.0069084074 0.34196457 ;
createNode polyPlanarProj -n "polyPlanarProj18";
	rename -uid "625BDC2F-4CAC-F0B6-77A6-8794FAC6E78E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[13]" "f[15]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.60434020996093751 0.22339607238769532 1.0393163299560546 ;
	setAttr ".ic" -type "double2" 0.51727093662892742 -0.17529360916879433 ;
	setAttr ".ro" -type "double3" -90 -6.8244054435031191e-15 6.8244054435031191e-15 ;
	setAttr ".ps" -type "double2" 3.1276989609222778 3.1276989609222778 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "C33A872E-4AA0-454B-68D9-199A110DB0ED";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0 -0.73625904 ;
	setAttr ".uvtk[6]" -type "float2" 0 -0.73625904 ;
	setAttr ".uvtk[44]" -type "float2" 0 -0.73625904 ;
	setAttr ".uvtk[45]" -type "float2" 0 -0.73625904 ;
createNode polyPlanarProj -n "polyPlanarProj19";
	rename -uid "DFBB6ED2-405F-0FDA-B8EB-6C883EE925F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[6]" "f[9]" "f[11:12]" "f[14]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.60434020996093751 0.22339607238769532 1.0393161773681641 ;
	setAttr ".ic" -type "double2" 0.5 0.33476785351248362 ;
	setAttr ".ro" -type "double3" 0 180 0 ;
	setAttr ".ps" -type "double2" 3.1276989609222778 3.1276989609222778 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "79B303BF-4105-B037-3FBF-7F8667A1706B";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[50]" -type "float2" 0 0.16092466 ;
	setAttr ".uvtk[51]" -type "float2" 0 0.16092466 ;
	setAttr ".uvtk[52]" -type "float2" 0 0.16092466 ;
	setAttr ".uvtk[53]" -type "float2" 0 0.16092466 ;
	setAttr ".uvtk[54]" -type "float2" 0 0.16092469 ;
	setAttr ".uvtk[55]" -type "float2" 0 0.16092469 ;
	setAttr ".uvtk[56]" -type "float2" 0 0.16092469 ;
	setAttr ".uvtk[57]" -type "float2" 0 0.16092469 ;
createNode polyPlanarProj -n "polyPlanarProj20";
	rename -uid "4BB5E3F4-46AD-62B7-CA6A-9585DE21F302";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[4]" "f[8]" "f[19]" "f[21:22]" "f[24]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.60434013366699224 0.22339605331420898 1.0393162536621094 ;
	setAttr ".ic" -type "double2" 0.4702619012383713 1.5865843568752012 ;
	setAttr ".ro" -type "double3" 175.80000001797092 -47.999999642680841 179.999999842487 ;
	setAttr ".ps" -type "double2" 0.76583943681142663 0.76583943681142663 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj21";
	rename -uid "2FC15574-40D8-4510-5E82-32B785229B49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[2]" "f[10]" "f[18]" "f[20]" "f[23]" "f[25]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.60434013366699224 0.22339607238769532 1.0393161773681641 ;
	setAttr ".ic" -type "double2" 0.14385716228349921 1.3931836075252955 ;
	setAttr ".ro" -type "double3" -6.5999998297928597 -41.599998905340925 -2.2632670106498483e-07 ;
	setAttr ".ps" -type "double2" 1.1711829746942093 1.1711829746942093 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "84ED9FB6-4DAC-9EEB-54D3-D4AEC158B96C";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk[0:63]" -type "float2" 0.37150428 0.67729831 0.013631906
		 -1.55897903 0.013631906 -1.57978296 0.71614897 -1.75539446 0.65952504 -1.75500774
		 -0.64856815 -1.57978296 -0.062780194 0.67729831 -0.64856815 -1.55897903 0.8988809
		 -2.2577424 0.01299216 -0.96079385 0.99359113 -2.25810575 0.65952504 -1.87455976 0.99359113
		 -2.45878482 0.01299216 -0.93998998 0.8988809 -2.45842147 -0.0051474208 -1.66088617
		 0.089276507 -1.66124868 0.71614897 -1.87494636 -0.21340838 -1.77856779 -0.27003264
		 -1.77818143 0.089276507 -1.4611764 -0.27003264 -1.65862918 -0.21340838 -1.65901589
		 -0.0051474208 -1.46081388 0.68615496 -1.71861124 0.94871765 -2.18757367 0.94871765
		 -2.522017 0.68615496 -1.91785157 0.039590284 -1.73120499 -0.64920789 -0.93998998
		 -0.64920789 -0.96079385 0.013631906 -1.64220452 -0.24003837 -1.81496453 -0.24003837
		 -1.61572444 0.013631906 -1.66300821 0.039590284 -1.39777315 0.38416865 -0.46425503
		 0.38416865 -0.47251144 -0.64856815 -1.66300821 -0.64856815 -1.64220452 0.01299216
		 -1.044019222 0.01299216 -1.023215413 -0.64920789 -1.023215413 -0.64920789 -1.044019222
		 -0.062780194 0.41449016 0.37150428 0.41449016 0.37150428 -0.76865476 -0.062780194
		 -0.76865476 -0.062780194 -0.5058465 0.37150428 -0.5058465 -0.048050269 -1.0804739
		 -0.048050269 -1.072217345 0.38623416 -1.072217345 0.38623416 -1.0804739 -0.048050269
		 -1.11350346 -0.048050269 -1.10524714 0.38623416 -1.10524714 0.38623416 -1.11350346
		 -0.050115749 -0.49728486 -0.050115749 -0.50554121 0.38416865 -0.50554121 0.38416865
		 -0.49728486 -0.050115749 -0.46425503 -0.050115749 -0.47251144;
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "403D1DBF-45F1-EE74-68B7-A5AC32485D95";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[33]";
createNode polyPlanarProj -n "polyPlanarProj22";
	rename -uid "EEE08C72-44DC-14A6-2CD0-C19287E754BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[10]" "f[23]" "f[25]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.97299636840820314 0.22465471267700196 0.078050537109374998 ;
	setAttr ".ro" -type "double3" 176.39999990530677 47.600000367375827 179.99999996850138 ;
	setAttr ".ps" -type "double2" 0.29675481812655619 0.29675481812655619 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "9586A070-444D-8D03-A83D-28B07E7D9FED";
	setAttr ".uopa" yes;
	setAttr -s 19 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" 0.60012561 -0.00054113497 ;
	setAttr ".uvtk[4]" -type "float2" 0.60012567 -0.00054113497 ;
	setAttr ".uvtk[8]" -type "float2" -0.59958446 0 ;
	setAttr ".uvtk[10]" -type "float2" -0.59958446 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.60012567 -0.00054113497 ;
	setAttr ".uvtk[12]" -type "float2" -0.59958446 0 ;
	setAttr ".uvtk[14]" -type "float2" -0.59958446 0 ;
	setAttr ".uvtk[17]" -type "float2" 0.60012561 -0.00054113497 ;
	setAttr ".uvtk[18]" -type "float2" -0.25737283 -0.92553067 ;
	setAttr ".uvtk[19]" -type "float2" 0.010485216 -0.9247669 ;
	setAttr ".uvtk[21]" -type "float2" 0.010485216 -0.35699835 ;
	setAttr ".uvtk[22]" -type "float2" -0.25737283 -0.35776204 ;
	setAttr ".uvtk[24]" -type "float2" 0.60012561 -0.00054113497 ;
	setAttr ".uvtk[25]" -type "float2" -0.59958446 0 ;
	setAttr ".uvtk[26]" -type "float2" -0.59958446 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.60012561 -0.00054113497 ;
	setAttr ".uvtk[32]" -type "float2" -0.11736244 -1.1227834 ;
	setAttr ".uvtk[33]" -type "float2" -0.11736244 -0.17656446 ;
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "4ED42F1D-4B2D-F385-1376-BAA54CD55CE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[43]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "A51F860C-4C26-C4C9-75CE-A08F24386FF6";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" 0.020517528 -0.00034810603 ;
	setAttr ".uvtk[13]" -type "float2" 0.020517528 -0.00049082935 ;
	setAttr ".uvtk[29]" -type "float2" 0.025060385 -0.00049082935 ;
	setAttr ".uvtk[30]" -type "float2" 0.025060385 -0.00034810603 ;
	setAttr ".uvtk[39]" -type "float2" 0.020517528 0.00022283942 ;
	setAttr ".uvtk[40]" -type "float2" 0.020517528 8.0123544e-05 ;
	setAttr ".uvtk[41]" -type "float2" 0.025060385 8.0123544e-05 ;
	setAttr ".uvtk[42]" -type "float2" 0.025060385 0.00022283942 ;
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "C64C7443-4C1B-5F38-4589-CCB6FC559AD1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[41]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "61B48105-4499-C1C3-A268-6BB368DBFB5E";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.0070216656 -0.0014761388 ;
	setAttr ".uvtk[10]" -type "float2" 0.0067353249 -0.0014750063 ;
	setAttr ".uvtk[12]" -type "float2" 0.0067353249 -0.00086829066 ;
	setAttr ".uvtk[14]" -type "float2" 0.0070216656 -0.00086936355 ;
	setAttr ".uvtk[25]" -type "float2" 0.006870985 -0.0016882718 ;
	setAttr ".uvtk[26]" -type "float2" 0.006870985 -0.00067713857 ;
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "E3397344-49EC-CEC2-7F68-39A8D60C361C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19]";
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "D845DBB4-42A3-CD0A-7A21-5FA0F90CACE3";
	setAttr ".uopa" yes;
	setAttr -s 23 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" 0.0046064965 -0.071246386 ;
	setAttr ".uvtk[13]" -type "float2" 0.004606504 -0.071246386 ;
	setAttr ".uvtk[15]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[16]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[18]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[19]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[20]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[21]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[22]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[23]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[28]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[29]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[31]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[32]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[34]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[35]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[38]" -type "float2" 0.0046064667 -0.071246386 ;
	setAttr ".uvtk[39]" -type "float2" 0.0046064742 -0.071246386 ;
	setAttr ".uvtk[40]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[53]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[54]" -type "float2" 0.0046064854 -0.071246386 ;
	setAttr ".uvtk[55]" -type "float2" 0.0046064854 -0.071246386 ;
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "F004415F-43E8-B763-97F9-BD910861F3D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[37]";
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "9CB32507-4620-E413-FA2A-4DBED3B9DBDD";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.0025409311 -0.35965776 ;
	setAttr ".uvtk[10]" -type "float2" 0.0025409311 -0.35965776 ;
	setAttr ".uvtk[12]" -type "float2" 0.0025409311 -0.35965776 ;
	setAttr ".uvtk[14]" -type "float2" 0.0025409311 -0.35965776 ;
	setAttr ".uvtk[25]" -type "float2" 0.0025409311 -0.35965776 ;
	setAttr ".uvtk[26]" -type "float2" 0.0025409311 -0.35965776 ;
	setAttr ".uvtk[47]" -type "float2" 0.0025409609 -0.35965776 ;
	setAttr ".uvtk[48]" -type "float2" 0.0025409609 -0.35965776 ;
	setAttr ".uvtk[49]" -type "float2" 0.0025409311 -0.35965776 ;
	setAttr ".uvtk[50]" -type "float2" 0.0025409609 -0.35965776 ;
	setAttr ".uvtk[51]" -type "float2" 0.0025409609 -0.35965776 ;
	setAttr ".uvtk[52]" -type "float2" 0.0025409311 -0.35965776 ;
createNode polyMapSewMove -n "polyMapSewMove10";
	rename -uid "21679936-4A5C-F845-A278-0CBADB42D582";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "22910D1F-41FC-C327-0CDF-AE94FF781D61";
	setAttr ".uopa" yes;
	setAttr -s 23 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[2]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[5]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[7]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[8]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[10]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[12]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[14]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[25]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[26]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[30]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[33]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[36]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[37]" -type "float2" 1.0132337 0.3811152 ;
	setAttr ".uvtk[43]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[44]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[45]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[46]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[47]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[48]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[49]" -type "float2" 0 0.35755157 ;
	setAttr ".uvtk[50]" -type "float2" 0 0.35755157 ;
createNode polyPlanarProj -n "polyPlanarProj23";
	rename -uid "51B7DF7A-4F0B-37A2-E394-ABB03FE4469D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[5]" "f[17]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.1979208374023438 0.22339607238769532 1.0393161010742187 ;
	setAttr ".ro" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".ps" -type "double2" 1.8927348891640201 1.8927348891640201 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "4A15B36E-446F-AB9A-BC32-66B52DA3E560";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.65543616 -1.0438328 ;
	setAttr ".uvtk[2]" -type "float2" -0.65543616 -1.0644851 ;
	setAttr ".uvtk[5]" -type "float2" 0.0019426197 -1.0644851 ;
	setAttr ".uvtk[7]" -type "float2" 0.0019426197 -1.0438328 ;
	setAttr ".uvtk[30]" -type "float2" -0.65543616 -1.1264522 ;
	setAttr ".uvtk[33]" -type "float2" -0.65543616 -1.1471045 ;
	setAttr ".uvtk[36]" -type "float2" 0.0019426197 -1.1471045 ;
	setAttr ".uvtk[37]" -type "float2" 0.0019426197 -1.1264522 ;
createNode polyPlanarProj -n "polyPlanarProj24";
	rename -uid "C4F9FC5A-4002-F09E-C563-16BC5BF421E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[6]" "f[12]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.60434020996093751 0.22339607238769532 2.0154147338867188 ;
	setAttr ".ps" -type "double2" 3.1276989609222778 3.1276989609222778 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "E831D067-4C46-84FA-361E-C1B34631C8CD";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[47]" -type "float2" 0.38841206 -1.0782461 ;
	setAttr ".uvtk[48]" -type "float2" 0.38841206 -1.0699906 ;
	setAttr ".uvtk[49]" -type "float2" -0.045835331 -1.0699906 ;
	setAttr ".uvtk[50]" -type "float2" -0.045835331 -1.0782461 ;
	setAttr ".uvtk[52]" -type "float2" 0.38841206 -1.1112731 ;
	setAttr ".uvtk[53]" -type "float2" 0.38841206 -1.1030174 ;
	setAttr ".uvtk[54]" -type "float2" -0.045835331 -1.1030174 ;
	setAttr ".uvtk[55]" -type "float2" -0.045835331 -1.1112731 ;
createNode polyPlanarProj -n "polyPlanarProj25";
	rename -uid "98646CD8-4188-1FB1-6516-60BEB6947D79";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[4]" "f[19]" "f[21]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.97380630493164066 0.22402904510498048 1.9998724365234375 ;
	setAttr ".ro" -type "double3" -1.7999999516954976 44.799998547338404 8.8508198257804249e-08 ;
	setAttr ".ps" -type "double2" 0.29719483368533223 0.29719483368533223 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "09D04345-4824-1A32-5784-3E85205A0F63";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.0032520294 -0.80325419 ;
	setAttr ".uvtk[10]" -type "float2" -0.2647683 -0.80328357 ;
	setAttr ".uvtk[12]" -type "float2" -0.2647683 -1.3716564 ;
	setAttr ".uvtk[14]" -type "float2" 0.0032520294 -1.3716271 ;
	setAttr ".uvtk[25]" -type "float2" -0.13028985 -0.61805159 ;
	setAttr ".uvtk[26]" -type "float2" -0.13028985 -1.5652778 ;
createNode polyPlanarProj -n "polyPlanarProj26";
	rename -uid "72AE9534-49A3-C6C9-AAB5-07822DFD57D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".ix" -type "matrix" 3.2466237201247115 0 0 0 0 0.29734137230223945 0 0 0 0 2.0116588396222586 0
		 -60.434001568443989 22.339597420680924 103.93163412698468 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.60434020996093751 0.074725289344787602 1.0393160247802735 ;
	setAttr ".ro" -type "double3" 90 0 0 ;
	setAttr ".ps" -type "double2" 3.1276989609222778 3.1276989609222778 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "8466772B-4E66-C2D6-DD96-7AA26ECCC591";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[43]" -type "float2" 0.39433953 -1.1675156 ;
	setAttr ".uvtk[44]" -type "float2" -0.040767536 -1.1675156 ;
	setAttr ".uvtk[45]" -type "float2" -0.040767536 -1.4308218 ;
	setAttr ".uvtk[46]" -type "float2" 0.39433953 -1.4308218 ;
	setAttr ".uvtk[47]" -type "float2" 0.0059274584 -0.010737538 ;
	setAttr ".uvtk[48]" -type "float2" 0.0059274584 -0.010721207 ;
	setAttr ".uvtk[49]" -type "float2" 0.0050677508 -0.010721207 ;
	setAttr ".uvtk[50]" -type "float2" 0.0050677508 -0.010737538 ;
	setAttr ".uvtk[52]" -type "float2" 0.0059274584 -0.010802925 ;
	setAttr ".uvtk[53]" -type "float2" 0.0059274584 -0.010786593 ;
	setAttr ".uvtk[54]" -type "float2" 0.0050677508 -0.010786593 ;
	setAttr ".uvtk[55]" -type "float2" 0.0050677508 -0.010802925 ;
createNode polyMapSewMove -n "polyMapSewMove11";
	rename -uid "2DAE7866-4A55-0A18-00A1-9A8AAE703343";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "899138F7-4115-23E4-6445-B7A6E1E0F220";
	setAttr ".uopa" yes;
	setAttr -s 11 ".uvtk";
	setAttr ".uvtk[43]" -type "float2" -0.0055642724 0.72182435 ;
	setAttr ".uvtk[44]" -type "float2" -0.0047416985 0.72182435 ;
	setAttr ".uvtk[45]" -type "float2" -0.0047416985 0.72232217 ;
	setAttr ".uvtk[46]" -type "float2" -0.0055642724 0.72232217 ;
	setAttr ".uvtk[47]" -type "float2" -0.0055642724 0.72233778 ;
	setAttr ".uvtk[48]" -type "float2" -0.0047416985 0.72233778 ;
	setAttr ".uvtk[50]" -type "float2" -0.0055642724 0.72240037 ;
	setAttr ".uvtk[51]" -type "float2" -0.0055642724 0.72238469 ;
	setAttr ".uvtk[52]" -type "float2" -0.0047416985 0.72238469 ;
	setAttr ".uvtk[53]" -type "float2" -0.0047416985 0.72240037 ;
createNode polyMapSewMove -n "polyMapSewMove12";
	rename -uid "92F316B3-4D56-1A16-E7E0-988517C90D8B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "89255CA4-43A9-DF3D-02C5-2FA4875D510D";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -0.61556816 0.0020194948 ;
	setAttr ".uvtk[4]" -type "float2" -0.61532211 0.0020178258 ;
	setAttr ".uvtk[11]" -type "float2" -0.61532211 0.0025372803 ;
	setAttr ".uvtk[17]" -type "float2" -0.61556816 0.0025390089 ;
	setAttr ".uvtk[24]" -type "float2" -0.61543787 0.0018596947 ;
	setAttr ".uvtk[27]" -type "float2" -0.61543787 0.0027253926 ;
createNode polyMapSewMove -n "polyMapSewMove13";
	rename -uid "D95C8931-4AEC-3DF8-F601-89B815CD885C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[11]";
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "7556655F-4A1A-F23C-B100-FA893E2C50EA";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0.96750194 0.37405545 ;
	setAttr ".uvtk[2]" -type "float2" 0.96750194 0.37404674 ;
	setAttr ".uvtk[3]" -type "float2" 0.96748966 0.37404683 ;
	setAttr ".uvtk[4]" -type "float2" 0.96777827 0.37404674 ;
	setAttr ".uvtk[6]" -type "float2" 0.96777827 0.37405545 ;
	setAttr ".uvtk[10]" -type "float2" 0.96748966 0.37402079 ;
	setAttr ".uvtk[16]" -type "float2" 0.96750194 0.3740207 ;
	setAttr ".uvtk[23]" -type "float2" 0.96749538 0.37405476 ;
	setAttr ".uvtk[26]" -type "float2" 0.96749538 0.37401134 ;
	setAttr ".uvtk[31]" -type "float2" 0.96750194 0.37401199 ;
	setAttr ".uvtk[34]" -type "float2" 0.96777827 0.37401199 ;
	setAttr ".uvtk[35]" -type "float2" 0.96777827 0.3740207 ;
createNode polyMapSewMove -n "polyMapSewMove14";
	rename -uid "AD7CB18F-46D4-EEA6-AEFE-FA898FE4975F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[35]";
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "E9D01BC3-40B2-8B4F-5FE8-CD82F205C746";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[7]" -type "float2" -0.34578574 0.37016845 ;
	setAttr ".uvtk[9]" -type "float2" -0.34550077 0.37016851 ;
	setAttr ".uvtk[11]" -type "float2" -0.34550077 0.37077278 ;
	setAttr ".uvtk[13]" -type "float2" -0.34578574 0.37077278 ;
	setAttr ".uvtk[23]" -type "float2" -0.34564376 0.36997154 ;
	setAttr ".uvtk[24]" -type "float2" -0.34564376 0.37097865 ;
createNode polyMapSewMove -n "polyMapSewMove15";
	rename -uid "18B4547E-4002-D40D-42E4-0F92F325D4F2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "C8CB2476-42E2-6F17-DD23-B9A9FAC67058";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk[0:45]" -type "float2" -0.24653021 -0.84050351 -0.33762479
		 -0.73957568 -0.33762479 -0.74231565 -0.34151876 -0.7422893 -0.25041023 -0.74231315
		 -0.10241055 -0.84050351 -0.25041047 -0.73957324 -0.0074413158 -0.74231446 -0.01131794
		 -0.74231488 -0.3415184 -0.75051045 -0.011317817 -0.7505362 -0.011318058 -0.73957515
		 -0.0074410699 -0.75053561 -0.25041011 -0.75053436 -0.24653021 -0.7505492 -0.33762455
		 -0.75053692 -0.1024105 -0.75054914 -0.098531917 -0.75053805 -0.24653021 -0.74232787
		 -0.098532096 -0.7423169 -0.10241055 -0.74232799 -0.33968771 -0.73978621 -0.0093729198
		 -0.73963588 -0.0093727298 -0.75333673 -0.33968699 -0.75348735 -0.2485719 -0.75342387
		 -0.098532185 -0.73957694 -0.10038318 -0.75340527 -0.10038336 -0.73970419 -0.33762455
		 -0.75327677 -0.24857202 -0.73972273 -0.10241055 -0.73958814 -0.25040999 -0.75327414
		 -0.01131776 -0.75327623 -0.098531887 -0.7532779 -0.10241053 -0.7532891 -0.24653021
		 -0.7532891 -0.24653026 -0.94141901 -0.10241058 -0.94141901 -0.10241053 -0.85420465
		 -0.24653026 -0.85420465 -0.24653026 -0.85146463 -0.10241053 -0.85146463 -0.24653026
		 -0.73958814 -0.24653026 -0.84324348 -0.10241053 -0.84324348;
createNode polyCube -n "polyCube3";
	rename -uid "DDF21FC5-4233-0D94-2E87-D79D94A58538";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".sw" 4;
	setAttr ".sh" 3;
	setAttr ".sd" 6;
	setAttr ".cuv" 4;
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "5993CC73-4707-BD94-FFF4-1CA250EC9E5C";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[45]" -type "float2" -0.001204078 0.086227849 ;
	setAttr ".uvtk[50]" -type "float2" -2.2900848e-11 1.2967599e-08 ;
	setAttr ".uvtk[131]" -type "float2" 1.9663108e-08 7.6410411e-10 ;
	setAttr ".uvtk[137]" -type "float2" 2.205485e-08 -0.085237905 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "68336A63-4370-32D8-9BD6-ABAA10D96A44";
	setAttr ".ics" -type "componentList" 2 "vtx[45]" "vtx[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak1";
	rename -uid "350E9B01-4585-F6C5-D230-60BF118AB54F";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" -5.0566607 -5.0566607 5.0566607 ;
	setAttr ".tk[4]" -type "float3" 5.0566607 -5.0566607 5.0566607 ;
	setAttr ".tk[5]" -type "float3" -5.0566607 -1.6855541 5.0566607 ;
	setAttr ".tk[9]" -type "float3" 5.0566607 -1.6855541 5.0566607 ;
	setAttr ".tk[10]" -type "float3" -5.0566607 1.685553 5.0566607 ;
	setAttr ".tk[14]" -type "float3" 5.0566607 1.685553 5.0566607 ;
	setAttr ".tk[15]" -type "float3" -5.0566607 5.0566597 5.0566607 ;
	setAttr ".tk[19]" -type "float3" 5.0566607 5.0566607 5.0566607 ;
	setAttr ".tk[45]" -type "float3" -5.0566607 -31.647778 -5.056653 ;
	setAttr ".tk[49]" -type "float3" 5.0566607 5.0566607 -5.0566607 ;
	setAttr ".tk[50]" -type "float3" -5.0566607 1.6855541 -5.056653 ;
	setAttr ".tk[54]" -type "float3" 5.0566607 1.6855541 -5.0566607 ;
	setAttr ".tk[55]" -type "float3" -5.0566607 -1.685553 -5.0566607 ;
	setAttr ".tk[59]" -type "float3" 5.0566607 -1.685553 -5.0566607 ;
	setAttr ".tk[60]" -type "float3" -5.0566607 -5.0566607 -5.0566607 ;
	setAttr ".tk[64]" -type "float3" 5.0566607 -5.0566607 -5.0566607 ;
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "94ED486F-4938-AC50-30AD-4F8B1BDB5C53";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[54]" -type "float2" -0.00015050854 0.00036184548 ;
	setAttr ".uvtk[59]" -type "float2" -0.0012040779 -0.086227857 ;
	setAttr ".uvtk[118]" -type "float2" 1.5032875e-08 0.08523792 ;
	setAttr ".uvtk[124]" -type "float2" 2.0168786e-08 -0.00023807159 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "97F06124-4AF7-C0CC-7885-049A10780A73";
	setAttr ".ics" -type "componentList" 2 "vtx[54]" "vtx[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "DC912F05-47FB-7839-DD5B-E7BBBA291A15";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[54]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[59]" -type "float3" 0 36.704445 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "C7AF385C-4541-F88D-C038-6A94809E9D73";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[49]" -type "float2" 0.001204078 0.086227849 ;
	setAttr ".uvtk[53]" -type "float2" -1.1673541e-08 1.2967599e-08 ;
	setAttr ".uvtk[105]" -type "float2" 3.9736521e-09 7.6410411e-10 ;
	setAttr ".uvtk[111]" -type "float2" -3.3509373e-08 -0.085237905 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "A8A1E634-4C3E-39E9-2D83-BFB2B2E9A43D";
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "0CF06C6A-4B68-3215-FC36-4BB0873129BC";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[49]" -type "float3" 0 -36.704437 7.6293945e-06 ;
	setAttr ".tk[53]" -type "float3" 0 0 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "52294A22-485D-A3CA-5662-E7895CC5BB0E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[57]" -type "float2" 0.00015049515 0.00036184548 ;
	setAttr ".uvtk[61]" -type "float2" 0.0012040779 -0.086227857 ;
	setAttr ".uvtk[92]" -type "float2" -1.4449378e-08 0.08523792 ;
	setAttr ".uvtk[98]" -type "float2" -3.1539958e-08 -0.00023807159 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "FFF3A2FB-40FE-3052-0727-0C99B385A8B4";
	setAttr ".ics" -type "componentList" 2 "vtx[57]" "vtx[61]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "43937D3D-432A-625D-CAA0-42992C4DDB7F";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[57]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[61]" -type "float3" 0 36.704445 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "BA859648-4701-D9A2-20AB-DE90D0789E8B";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" -1.8658351e-08 -5.0693414e-09 ;
	setAttr ".uvtk[19]" -type "float2" 0.0072309519 -0.092337593 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "9A237ED2-4982-7A46-E830-378334BD8DB5";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "3A8DBAE6-4D1B-F1F1-EBF6-1A9614768476";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[14]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[19]" -type "float3" 0 -36.704445 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV34";
	rename -uid "26650CEE-4181-4ACF-E19C-E393B3595649";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" -1.8159676e-08 0.08523792 ;
	setAttr ".uvtk[9]" -type "float2" 0.00090386107 -0.001125533 ;
	setAttr ".uvtk[89]" -type "float2" 0.091758646 0.091758572 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "6A12C5C0-41A8-520B-4A1C-85A452646B40";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "2AA41E5A-44B9-8AAF-5A2E-1AB32BCF93A0";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[4]" -type "float3" 0 36.704437 7.6293945e-06 ;
	setAttr ".tk[9]" -type "float3" 0 0 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV35";
	rename -uid "8D253C5A-47D6-6EAD-D836-4CA24497BFD5";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" 1.8658389e-08 -5.0693414e-09 ;
	setAttr ".uvtk[14]" -type "float2" -0.0072309691 -0.092337593 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "74581F69-4358-EC03-FA76-35A7F3E9FC4F";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "50459C82-430C-5088-C4A4-E29DCECE2C86";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[9]" -type "float3" 0 0 7.6293945e-06 ;
	setAttr ".tk[14]" -type "float3" 0 -36.704445 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV36";
	rename -uid "02673325-4CCE-9028-8EA6-41A4A041EDE1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 1.8159716e-08 0.08523792 ;
	setAttr ".uvtk[5]" -type "float2" -0.00090385362 -0.001125533 ;
	setAttr ".uvtk[83]" -type "float2" -0.091758646 0.091758572 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "BED20D99-43B1-15D9-C5E7-9B8DF5766718";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "0601CC3E-41CD-0418-3B0C-DFA6DB93A0E1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[0]" -type "float3" 0 36.704437 7.6293945e-06 ;
	setAttr ".tk[5]" -type "float3" 0 0 7.6293945e-06 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "6FD935F9-4DBB-8D91-71B3-63A755A55212";
	setAttr ".uopa" yes;
	setAttr -s 102 ".tk[0:101]" -type "float3"  -3.049085379 9.34319401 3.049085379
		 -0.79827607 3.6317203 1.59655213 0 -3.41881561 9.5367432e-07 0.79827607 3.6317203
		 1.59655213 3.049085379 9.34319401 3.049085379 -0.79827607 -2.62738514 1.59655213
		 0 -5.56114626 9.5367432e-07 0.79827607 -2.62738514 1.59655213 -3.049085379 -9.34318924
		 3.049085379 -0.79827607 2.62738466 1.59655213 0 5.56114531 9.5367432e-07 0.79827607
		 2.62738466 1.59655213 3.049085379 -9.34318924 3.049085379 -0.79827607 -3.6317203
		 1.59655213 0 3.41881561 9.5367432e-07 0.79827607 -3.6317203 1.59655213 -1.59655213
		 1.59655213 1.06436801 -0.79827607 7.8821559 1.06436801 0 18.81271553 1.064368725
		 0.79827607 7.8821559 1.06436801 1.59655213 1.59655213 1.06436801 -4.92705584 4.92705584
		 1.64235234 -3.34046674 13.58592796 2.22697854 0 23.25450134 1.64235198 3.34046674
		 13.58592796 2.22697854 4.92705584 4.92705584 1.64235234 -7.42473698 7.42473698 5.6646269e-07
		 -4.6291852 16.47735214 7.0635753e-07 0 26.58558273 5.6646252e-07 4.6291852 16.47735214
		 7.0635753e-07 7.42473698 7.42473698 5.6646269e-07 -4.92705584 4.92705584 -1.64235187
		 -3.34046674 13.58592796 -2.22697711 0 23.25450134 -1.64235198 3.34046674 13.58592796
		 -2.22697711 4.92705584 4.92705584 -1.64235187 -1.59655213 1.59655213 -1.064367414
		 -0.79827607 7.8821559 -1.064367414 0 18.81271553 -1.064367294 0.79827607 7.8821559
		 -1.064367414 1.59655213 1.59655213 -1.064367414 -3.049085379 -9.34319401 -3.049085379
		 -0.79827607 -3.6317203 -1.59655213 0 3.41881561 -9.5367432e-07 0.79827607 -3.6317203
		 -1.59655213 3.049085379 -9.34319401 -3.049085379 -0.79827607 2.62738514 -1.59655213
		 0 5.56114626 -9.5367432e-07 0.79827607 2.62738514 -1.59655213 -3.049085379 9.34318924
		 -3.049085379 -0.79827607 -2.62738419 -1.59655213 0 -5.56114531 -9.5367432e-07 0.79827607
		 -2.62738419 -1.59655213 3.049085379 9.34318924 -3.049085379 -0.79827607 3.6317203
		 -1.59655213 0 -3.41881561 -9.5367432e-07 0.79827607 3.6317203 -1.59655213 -1.59655213
		 -1.59655213 -1.06436801 -0.79827607 -7.8821559 -1.06436801 0 -18.81271553 -1.064368725
		 0.79827607 -7.8821559 -1.06436801 1.59655213 -1.59655213 -1.06436801 -4.92705584
		 -4.92705584 -1.64235234 -3.34046674 -13.58593178 -2.22697854 0 -23.25450134 -1.64235198
		 3.34046674 -13.58593178 -2.22697854 4.92705584 -4.92705584 -1.64235234 -7.42473698
		 -7.42473698 -5.6646269e-07 -4.6291852 -16.47735596 -7.0635753e-07 0 -26.58558273
		 -5.6646252e-07 4.6291852 -16.47735596 -7.0635753e-07 7.42473698 -7.42473698 -5.6646269e-07
		 -4.92705584 -4.92705584 1.64235187 -3.34046674 -13.58593178 2.22697711 0 -23.25450134
		 1.64235198 3.34046674 -13.58593178 2.22697711 4.92705584 -4.92705584 1.64235187 -1.59655213
		 -1.59655213 1.064367414 -0.79827607 -7.8821559 1.064367414 0 -18.81271553 1.064367294
		 0.79827607 -7.8821559 1.064367414 1.59655213 -1.59655213 1.064367414 1.59655213 -0.532184
		 -1.06436801 4.92705584 -1.64235234 -1.64235234 7.42473698 -2.4749136 -5.6646269e-07
		 4.92705584 -1.64235234 1.64235187 1.59655213 -0.532184 1.064367414 1.59655213 0.53218371
		 -1.06436801 4.92705584 1.6423521 -1.64235234 7.42473698 2.47491312 -5.6646269e-07
		 4.92705584 1.6423521 1.64235187 1.59655213 0.53218371 1.064367414 -1.59655213 -0.532184
		 -1.06436801 -4.92705584 -1.64235234 -1.64235234 -7.42473698 -2.4749136 -5.6646269e-07
		 -4.92705584 -1.64235234 1.64235187 -1.59655213 -0.532184 1.064367414 -1.59655213
		 0.53218371 -1.06436801 -4.92705584 1.6423521 -1.64235234 -7.42473698 2.47491312 -5.6646269e-07
		 -4.92705584 1.6423521 1.64235187 -1.59655213 0.53218371 1.064367414;
createNode polySplit -n "polySplit1";
	rename -uid "91A1C405-4744-8B40-94A2-9D8B093FD63B";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483597 -2147483593;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "49693F36-4B37-E740-3D43-D29C5239F1B1";
	setAttr -s 3 ".e[0:2]"  1 0.5 0;
	setAttr -s 3 ".d[0:2]"  -2147483520 -2147483440 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "0F33B268-46FC-64F2-7447-9EA7918717E1";
	setAttr ".dc" -type "componentList" 19 "f[0:1]" "f[4:5]" "f[8:9]" "f[12:13]" "f[16:17]" "f[20:21]" "f[24:25]" "f[28:29]" "f[32:33]" "f[36:37]" "f[40:41]" "f[44:45]" "f[48:49]" "f[52:53]" "f[56:57]" "f[60:61]" "f[64:65]" "f[68:69]" "f[90:107]";
createNode polySplit -n "polySplit3";
	rename -uid "F8BBE991-429C-3CC9-732B-A2B55530C347";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483563 -2147483613;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "CF9DE7E3-44C9-F56A-6044-359E91ADD524";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483647 -2147483531 -2147483613;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "293E4915-4C07-3A90-ACB9-F0832B06F77D";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483639 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "DDB2DB08-4EAA-DF2A-6DCD-D28DDCF5EDB2";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483641 -2147483527 -2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "78D1D295-4C5A-BDB3-EE8B-238905563A94";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483631 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "ED6C7F0A-4CF7-ECAC-CECD-C2853F209CEE";
	setAttr -s 3 ".e[0:2]"  1 0.5 0;
	setAttr -s 3 ".d[0:2]"  -2147483631 -2147483523 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "AD3B83EC-4FA3-515A-B355-68B574F5DF75";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -9.6671352 0 ;
	setAttr ".tk[24]" -type "float3" 0 -9.6671352 0 ;
	setAttr ".tk[37]" -type "float3" 0 9.6671352 0 ;
	setAttr ".tk[49]" -type "float3" 0 9.6671352 0 ;
	setAttr ".tk[60]" -type "float3" 0 -10.314099 0 ;
	setAttr ".tk[61]" -type "float3" 0 -10.314099 0 ;
	setAttr ".tk[62]" -type "float3" 0 10.314099 0 ;
	setAttr ".tk[63]" -type "float3" 0 10.314099 0 ;
createNode polySplit -n "polySplit9";
	rename -uid "00D7C790-4F67-2CB4-1FF2-82BA9761591E";
	setAttr -s 11 ".e[0:10]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 11 ".d[0:10]"  -2147483610 -2147483609 -2147483608 -2147483541 -2147483542 -2147483543 
		-2147483544 -2147483545 -2147483583 -2147483584 -2147483585;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "6FC72BB9-4B83-357E-6C35-45B27D53CC4F";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -7.2291284 ;
	setAttr ".tk[1]" -type "float3" 0 0 -7.4599652 ;
	setAttr ".tk[5]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".tk[6]" -type "float3" 0 0 4.7683716e-07 ;
	setAttr ".tk[33]" -type "float3" 0 0 7.2291284 ;
	setAttr ".tk[34]" -type "float3" 0 0 7.4599652 ;
	setAttr ".tk[36]" -type "float3" 0 -4.1021891 0 ;
	setAttr ".tk[37]" -type "float3" -8.673255 0 0 ;
	setAttr ".tk[39]" -type "float3" 0 -4.1021891 0 ;
	setAttr ".tk[40]" -type "float3" -8.673255 5.9554286 0 ;
	setAttr ".tk[42]" -type "float3" 0 -4.1021891 0 ;
	setAttr ".tk[43]" -type "float3" -8.673255 5.9554286 0 ;
	setAttr ".tk[45]" -type "float3" 0 -4.1021891 0 ;
	setAttr ".tk[46]" -type "float3" -8.673255 5.9554286 0 ;
	setAttr ".tk[48]" -type "float3" 0 -4.1021891 0 ;
	setAttr ".tk[49]" -type "float3" -8.673255 0 0 ;
	setAttr ".tk[64]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[67]" -type "float3" 3.3408828 -3.5527137e-15 1.4901161e-07 ;
	setAttr ".tk[68]" -type "float3" 3.3408828 -3.5527137e-15 1.4901161e-08 ;
	setAttr ".tk[69]" -type "float3" 3.3408828 0 2.8421709e-14 ;
	setAttr ".tk[70]" -type "float3" 3.3408828 -3.5527137e-15 7.4505806e-08 ;
	setAttr ".tk[71]" -type "float3" 3.3408828 -3.5527137e-15 -8.9406967e-08 ;
	setAttr ".tk[74]" -type "float3" -5.7742e-08 0 0 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "273DF0D8-469B-67B1-7828-3CACB62B1EF8";
	setAttr ".dc" -type "componentList" 7 "f[6:11]" "f[30:35]" "f[39:41]" "f[45:47]" "f[51:53]" "f[58:62]" "f[68:70]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "9FEEC629-485C-FF46-0B31-D7A1A3B3117A";
	setAttr ".dc" -type "componentList" 3 "f[0:5]" "f[36]" "f[40:41]";
createNode polyTweakUV -n "polyTweakUV37";
	rename -uid "50EF7B21-41BD-7A90-204D-74B71D9C7105";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" 0.0025744841 -0.023504565 ;
	setAttr ".uvtk[28]" -type "float2" -2.2843647e-08 0.03406895 ;
	setAttr ".uvtk[47]" -type "float2" -2.9485822e-08 2.3939769e-08 ;
	setAttr ".uvtk[48]" -type "float2" -1.5261779e-08 1.8843993e-09 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "D9EA90DC-4111-BB2A-5E02-E1BD5CC9A73C";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "69E18D15-4B1B-C1B9-8B05-ED803AD682BD";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[16]" -type "float3" 0 9.0090265 7.6293945e-06 ;
	setAttr ".tk[39]" -type "float3" 0 -1.1368684e-13 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV38";
	rename -uid "FC5AD38A-4514-9D5B-A043-1A8E99C16D56";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[11]" -type "float2" 0.00046190328 0.029303502 ;
	setAttr ".uvtk[16]" -type "float2" -0.00087975059 -0.0069299228 ;
	setAttr ".uvtk[28]" -type "float2" -1.8162329e-08 0.0050553572 ;
	setAttr ".uvtk[35]" -type "float2" -2.9552471e-08 -0.036022317 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "53D5FC46-4D69-F1BE-77BD-46803EDFBB50";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.36100489913852618 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "78BD5509-4E64-440F-A7D7-918644528059";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[11]" -type "float3" 0 -9.0090275 1.5258789e-05 ;
	setAttr ".tk[16]" -type "float3" 0 1.1368684e-13 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV39";
	rename -uid "E82D6838-4205-3FAB-5507-F0A88284B059";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[35]" -type "float2" 0.00079087313 -0.042192303 ;
	setAttr ".uvtk[43]" -type "float2" 0.0010643576 1.3591606e-10 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "FF1AD7EB-414A-D8D3-5F6E-84A67B0F48FC";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "0C29FE27-459C-1B35-95B5-EEAA52A76E29";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[31]" -type "float3" 3.3408813 -18.309019 7.6293945e-06 ;
	setAttr ".tk[36]" -type "float3" 0 2.2737368e-13 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV40";
	rename -uid "E8DEEFBC-4D98-AF9D-3488-BCB02DA5466B";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[34]" -type "float2" -0.0021119846 -0.041538041 ;
	setAttr ".uvtk[43]" -type "float2" -0.0028720764 0.00061071885 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "9DD1BA97-4600-47B6-0EED-37979699D1E5";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "BB86635E-464E-E0AF-3323-C5ADF7EDE524";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[30]" -type "float3" 3.3408813 -17.198851 7.6293945e-06 ;
	setAttr ".tk[36]" -type "float3" 0 2.2737368e-13 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV41";
	rename -uid "725D92D8-4F69-E0E0-4D8C-1DB1ABBA81ED";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[31]" -type "float2" -0.00080297724 0.041058172 ;
	setAttr ".uvtk[34]" -type "float2" -0.0013839209 0.0023952711 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "2084085D-4765-E439-BF7C-139597DBD582";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak16";
	rename -uid "9B6F7782-4236-1D92-313F-0EB36087FD51";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[27]" -type "float3" 3.3408813 17.198851 1.5258789e-05 ;
	setAttr ".tk[30]" -type "float3" 0 1.1368684e-13 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV42";
	rename -uid "806186F3-4042-E00D-B9CF-608052B9D990";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[32]" -type "float2" 0.0011898319 0.043332368 ;
	setAttr ".uvtk[34]" -type "float2" 0.00011970597 -0.00019132761 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "AD47E75B-4914-482B-2545-A28D2D3014B0";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak17";
	rename -uid "6D9DB666-472F-C8D3-BB57-3CBE16AA9D29";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[28]" -type "float3" 3.3408813 18.309019 1.5258789e-05 ;
	setAttr ".tk[30]" -type "float3" 0 1.1368684e-13 7.6293945e-06 ;
createNode polyTweakUV -n "polyTweakUV43";
	rename -uid "41AC15CD-46F3-061F-BA3D-CA922D1F2ADA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" -0.0013353806 0.038060185 ;
	setAttr ".uvtk[41]" -type "float2" -0.0033201517 -0.0010985676 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "356D0138-45AF-2A9A-34ED-93A7ADD5120C";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "F2284DE3-486A-CDCD-5F8E-64BE7DDDE89F";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" 0 2.4036362 0 ;
	setAttr ".tk[1]" -type "float3" 0 11.05549 0 ;
	setAttr ".tk[2]" -type "float3" -3.1672604 0 0 ;
	setAttr ".tk[3]" -type "float3" 0 5.890038 0 ;
	setAttr ".tk[4]" -type "float3" 0 11.05549 0 ;
	setAttr ".tk[5]" -type "float3" -2.1578844 -2.1316282e-14 0 ;
	setAttr ".tk[7]" -type "float3" 0 5.9035244 0 ;
	setAttr ".tk[12]" -type "float3" 0 -3.5527137e-15 -2.8128884 ;
	setAttr ".tk[13]" -type "float3" 0 -19.29405 -2.8019631 ;
	setAttr ".tk[16]" -type "float3" 0 0.75656545 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.75656545 0 ;
	setAttr ".tk[20]" -type "float3" 2.0123847 1.4210855e-14 0 ;
	setAttr ".tk[29]" -type "float3" 0 -5.1347876 0 ;
	setAttr ".tk[30]" -type "float3" 1.1868569 6.9555745 0 ;
	setAttr ".tk[31]" -type "float3" 0 2.5904775 0 ;
	setAttr ".tk[32]" -type "float3" 1.6297824 -4.2632564e-14 -1.614372 ;
	setAttr ".tk[34]" -type "float3" 0 -2.2954791e-13 -2.8019638 ;
	setAttr ".tk[35]" -type "float3" 0 -2.1742211e-15 -2.8019714 ;
createNode polyTweakUV -n "polyTweakUV44";
	rename -uid "61F375BB-47ED-3AFF-2D6F-55A40D0FF419";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" -0.0018976983 0.00060399086 ;
	setAttr ".uvtk[15]" -type "float2" -0.0028143367 -0.041211978 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "9A486434-443A-A959-02CA-D784310E1B18";
	setAttr ".ics" -type "componentList" 2 "vtx[13]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "E30C343A-4E02-AD49-9C79-AB9F2378D500";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[13]" -type "float3" 0 -1.1368684e-13 7.6293945e-06 ;
	setAttr ".tk[15]" -type "float3" 0 19.29405 -2.8019562 ;
createNode polyMirror -n "polyMirror1";
	rename -uid "B1401425-4E62-121C-D174-1F81A010323E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.5103350448608398;
	setAttr ".cm" yes;
	setAttr ".fnf" 32;
	setAttr ".lnf" 63;
createNode polyTweak -n "polyTweak20";
	rename -uid "0B88B6B9-40B2-06F2-166E-0884B713AD40";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[9]" -type "float3" 0 1.4210855e-14 0.50804305 ;
	setAttr ".tk[11]" -type "float3" -6.5565109e-07 0 0 ;
	setAttr ".tk[33]" -type "float3" 0 -2.1175824e-22 -0.45957285 ;
createNode polyMirror -n "polyMirror2";
	rename -uid "3DF73FEC-4D50-0B5D-E1F5-2CA304D58C37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".p" -type "double3" 0 0 0.19098836898803712 ;
	setAttr ".a" 2;
	setAttr ".ma" 1;
	setAttr ".mps" 0.19098836898803712;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.5103350448608398;
	setAttr ".fnf" 64;
	setAttr ".lnf" 127;
	setAttr ".pc" -type "double3" 0 0 0.19098836898803712 ;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "39D78FE4-44C8-EF1B-D787-7DB89A8AF797";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".s" -type "double3" 1.515318260192871 1.515318260192871 1.515318260192871 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "832FE955-4794-830B-DAB7-BB9DE95C8388";
	setAttr ".uopa" yes;
	setAttr -s 59 ".tk";
	setAttr ".tk[0]" -type "float3" -3.0708839e-17 13.863194 -8.7819686e-08 ;
	setAttr ".tk[1]" -type "float3" 2.6021156 9.5612402 7.1054274e-15 ;
	setAttr ".tk[2]" -type "float3" 4.7650375 7.0424871 7.1054274e-15 ;
	setAttr ".tk[3]" -type "float3" 1.1615609e-16 8.3437767 2.465543 ;
	setAttr ".tk[4]" -type "float3" 0.62672478 4.2073693 4.099216 ;
	setAttr ".tk[5]" -type "float3" 1.1669443 3.0779293 4.0361362 ;
	setAttr ".tk[6]" -type "float3" 2.5372239e-16 3.1820121 -2.5177391 ;
	setAttr ".tk[9]" -type "float3" 2.6362214e-16 2.4575195 -3.2281284 ;
	setAttr ".tk[11]" -type "float3" -1.806004 0 2.3996246 ;
	setAttr ".tk[12]" -type "float3" 1.814739e-16 0.98955899 -3.3844247 ;
	setAttr ".tk[14]" -type "float3" 1.5752896e-16 -1.1026825 -3.2520392 ;
	setAttr ".tk[15]" -type "float3" 1.3678578e-16 -2.5350373 -2.9118104 ;
	setAttr ".tk[17]" -type "float3" 1.8610398e-16 -3.295135 -2.5177391 ;
	setAttr ".tk[20]" -type "float3" 1.8728773e-16 -7.9705558 2.4655428 ;
	setAttr ".tk[21]" -type "float3" 0.62672478 -3.9467177 4.099216 ;
	setAttr ".tk[22]" -type "float3" 1.0228623 -2.8744464 4.0361366 ;
	setAttr ".tk[23]" -type "float3" 1.1911133e-16 -13.863194 -8.7819686e-08 ;
	setAttr ".tk[24]" -type "float3" 2.6021156 -8.9913425 7.1054274e-15 ;
	setAttr ".tk[25]" -type "float3" 4.2814846 -6.5975933 7.1054274e-15 ;
	setAttr ".tk[27]" -type "float3" 1.2885449 -0.068852402 4.0361366 ;
	setAttr ".tk[28]" -type "float3" 5.0431962 -3.1914012 7.1054274e-15 ;
	setAttr ".tk[29]" -type "float3" 5.1474252 3.1183949 7.1054274e-15 ;
	setAttr ".tk[32]" -type "float3" 5.3365984 -0.1505401 7.1054274e-15 ;
	setAttr ".tk[33]" -type "float3" 1.847635e-16 -0.056561723 -3.4055383 ;
	setAttr ".tk[34]" -type "float3" -2.6021156 9.5612402 7.1054274e-15 ;
	setAttr ".tk[35]" -type "float3" -4.7650375 7.0424871 7.1054274e-15 ;
	setAttr ".tk[36]" -type "float3" -0.62672478 4.2073693 4.099216 ;
	setAttr ".tk[37]" -type "float3" -1.1669443 3.0779293 4.0361362 ;
	setAttr ".tk[41]" -type "float3" 1.806004 0 2.3996246 ;
	setAttr ".tk[46]" -type "float3" -0.62672478 -3.9467177 4.099216 ;
	setAttr ".tk[47]" -type "float3" -1.0228623 -2.8744464 4.0361366 ;
	setAttr ".tk[48]" -type "float3" -2.6021156 -8.9913425 7.1054274e-15 ;
	setAttr ".tk[49]" -type "float3" -4.2814846 -6.5975933 7.1054274e-15 ;
	setAttr ".tk[51]" -type "float3" -1.2885449 -0.068852402 4.0361366 ;
	setAttr ".tk[52]" -type "float3" -5.0431962 -3.1914012 7.1054274e-15 ;
	setAttr ".tk[53]" -type "float3" -5.1474252 3.1183949 7.1054274e-15 ;
	setAttr ".tk[56]" -type "float3" -5.3365984 -0.1505401 7.1054274e-15 ;
	setAttr ".tk[57]" -type "float3" -6.7046205e-17 8.3437786 -2.465543 ;
	setAttr ".tk[58]" -type "float3" 0.62672478 4.2073693 -4.099216 ;
	setAttr ".tk[59]" -type "float3" 1.166944 3.0779295 -4.0361366 ;
	setAttr ".tk[60]" -type "float3" 1.4856137e-16 3.1820121 2.5177391 ;
	setAttr ".tk[63]" -type "float3" 3.3355996e-16 2.4575195 3.2281284 ;
	setAttr ".tk[65]" -type "float3" -1.806004 0 -2.399626 ;
	setAttr ".tk[66]" -type "float3" 1.9534036e-16 0.98955899 3.3844247 ;
	setAttr ".tk[68]" -type "float3" 1.9932991e-16 -1.1026825 3.2520392 ;
	setAttr ".tk[69]" -type "float3" 1.3678578e-16 -2.5350373 2.9118104 ;
	setAttr ".tk[71]" -type "float3" -2.54601e-16 -3.295135 2.5177391 ;
	setAttr ".tk[74]" -type "float3" -5.8448519e-16 -7.9705558 -2.4655428 ;
	setAttr ".tk[75]" -type "float3" 0.62672478 -3.9467177 -4.099216 ;
	setAttr ".tk[76]" -type "float3" 1.0228623 -2.8744464 -4.0361366 ;
	setAttr ".tk[78]" -type "float3" 1.2885449 -0.068852402 -4.0361366 ;
	setAttr ".tk[81]" -type "float3" 2.2656443e-16 -0.056561723 3.4055386 ;
	setAttr ".tk[82]" -type "float3" -0.62672478 4.2073693 -4.099216 ;
	setAttr ".tk[83]" -type "float3" -1.166944 3.0779295 -4.0361366 ;
	setAttr ".tk[87]" -type "float3" 1.806004 0 -2.399626 ;
	setAttr ".tk[92]" -type "float3" -0.62672478 -3.9467177 -4.099216 ;
	setAttr ".tk[93]" -type "float3" -1.0228623 -2.8744464 -4.0361366 ;
	setAttr ".tk[95]" -type "float3" -1.2885449 -0.068852402 -4.0361366 ;
createNode polyTweakUV -n "polyTweakUV45";
	rename -uid "4D2BB133-476A-BB8B-C7C8-F79194BDEA51";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[91]" -type "float2" 0.070503749 -0.81254214 ;
	setAttr ".uvtk[92]" -type "float2" 0.071773164 -0.81119061 ;
	setAttr ".uvtk[93]" -type "float2" 0.071019597 -0.80998641 ;
	setAttr ".uvtk[94]" -type "float2" 0.069510438 -0.81140828 ;
	setAttr ".uvtk[95]" -type "float2" 0.06959755 -0.80800885 ;
	setAttr ".uvtk[96]" -type "float2" 0.067863308 -0.80952823 ;
	setAttr ".uvtk[97]" -type "float2" 0.067902371 -0.81271738 ;
	setAttr ".uvtk[98]" -type "float2" 0.068996944 -0.81362277 ;
	setAttr ".uvtk[99]" -type "float2" 0.066216148 -0.80764806 ;
	setAttr ".uvtk[100]" -type "float2" 0.067824222 -0.80633909 ;
	setAttr ".uvtk[101]" -type "float2" 0.066129059 -0.81104755 ;
	setAttr ".uvtk[102]" -type "float2" 0.064706996 -0.80906999 ;
	setAttr ".uvtk[103]" -type "float2" 0.065222867 -0.80651426 ;
	setAttr ".uvtk[104]" -type "float2" 0.066729642 -0.80543363 ;
	setAttr ".uvtk[105]" -type "float2" 0.063953437 -0.80786586 ;
createNode polyMapSewMove -n "polyMapSewMove16";
	rename -uid "A28B1CD0-4FB7-7703-C54C-AEBAA8829DC0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
createNode polyTweakUV -n "polyTweakUV46";
	rename -uid "6DE5434D-442C-FA64-6B19-7BBD7273AE69";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk";
	setAttr ".uvtk[33]" -type "float2" -0.23717847 -0.14189911 ;
	setAttr ".uvtk[34]" -type "float2" -0.23464108 -0.14193068 ;
	setAttr ".uvtk[35]" -type "float2" -0.23462501 -0.14064118 ;
	setAttr ".uvtk[36]" -type "float2" -0.23779374 -0.14310955 ;
	setAttr ".uvtk[37]" -type "float2" -0.23466036 -0.14314853 ;
	setAttr ".uvtk[38]" -type "float2" -0.23210365 -0.14196226 ;
	setAttr ".uvtk[39]" -type "float2" -0.23712355 -0.14118233 ;
	setAttr ".uvtk[40]" -type "float2" -0.23819534 -0.14512439 ;
	setAttr ".uvtk[41]" -type "float2" -0.23634361 -0.14514743 ;
	setAttr ".uvtk[42]" -type "float2" -0.23114595 -0.1431922 ;
	setAttr ".uvtk[43]" -type "float2" -0.23839214 -0.14188403 ;
	setAttr ".uvtk[44]" -type "float2" -0.2389909 -0.14306308 ;
	setAttr ".uvtk[45]" -type "float2" -0.23198274 -0.14114857 ;
	setAttr ".uvtk[46]" -type "float2" -0.23784401 -0.14714862 ;
	setAttr ".uvtk[47]" -type "float2" -0.23471062 -0.14718759 ;
	setAttr ".uvtk[48]" -type "float2" -0.23469044 -0.14516799 ;
	setAttr ".uvtk[49]" -type "float2" -0.23949669 -0.14510821 ;
	setAttr ".uvtk[50]" -type "float2" -0.23291333 -0.14519012 ;
	setAttr ".uvtk[51]" -type "float2" -0.23078002 -0.14521664 ;
	setAttr ".uvtk[52]" -type "float2" -0.22988418 -0.14317635 ;
	setAttr ".uvtk[53]" -type "float2" -0.23078099 -0.14197868 ;
	setAttr ".uvtk[54]" -type "float2" -0.23904194 -0.1471653 ;
	setAttr ".uvtk[55]" -type "float2" -0.23725902 -0.14837398 ;
	setAttr ".uvtk[56]" -type "float2" -0.23472159 -0.14840552 ;
	setAttr ".uvtk[57]" -type "float2" -0.23119618 -0.14723128 ;
	setAttr ".uvtk[58]" -type "float2" -0.22941072 -0.14523369 ;
	setAttr ".uvtk[59]" -type "float2" -0.23847266 -0.14835888 ;
	setAttr ".uvtk[60]" -type "float2" -0.23473762 -0.14969502 ;
	setAttr ".uvtk[61]" -type "float2" -0.23218416 -0.14843711 ;
	setAttr ".uvtk[62]" -type "float2" -0.22993518 -0.14727855 ;
	setAttr ".uvtk[63]" -type "float2" -0.23722194 -0.1490919 ;
	setAttr ".uvtk[64]" -type "float2" -0.2308615 -0.14845353 ;
	setAttr ".uvtk[65]" -type "float2" -0.23208354 -0.14925352 ;
createNode polyMapSewMove -n "polyMapSewMove17";
	rename -uid "252CD0D4-4338-9B8B-3D3F-5092C34FFEE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[97]";
createNode polyTweakUV -n "polyTweakUV47";
	rename -uid "DC33C97C-49FB-942F-75F7-ACB615413367";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk";
	setAttr ".uvtk[66]" -type "float2" -0.52656806 0.30956042 ;
	setAttr ".uvtk[67]" -type "float2" -0.52149546 0.30989134 ;
	setAttr ".uvtk[68]" -type "float2" -0.52235717 0.31519192 ;
	setAttr ".uvtk[69]" -type "float2" -0.52692676 0.3150596 ;
	setAttr ".uvtk[70]" -type "float2" -0.52620924 0.30406123 ;
	setAttr ".uvtk[71]" -type "float2" -0.52166122 0.30452371 ;
	setAttr ".uvtk[72]" -type "float2" -0.5230571 0.31824458 ;
	setAttr ".uvtk[73]" -type "float2" -0.52714306 0.31837583 ;
	setAttr ".uvtk[74]" -type "float2" -0.53147477 0.31459707 ;
	setAttr ".uvtk[75]" -type "float2" -0.53164053 0.30922949 ;
	setAttr ".uvtk[76]" -type "float2" -0.53077883 0.30392897 ;
	setAttr ".uvtk[77]" -type "float2" -0.52599293 0.30074495 ;
	setAttr ".uvtk[78]" -type "float2" -0.52195871 0.30140603 ;
	setAttr ".uvtk[79]" -type "float2" -0.52323365 0.32095122 ;
	setAttr ".uvtk[80]" -type "float2" -0.52730536 0.32086313 ;
	setAttr ".uvtk[81]" -type "float2" -0.53117728 0.31771481 ;
	setAttr ".uvtk[82]" -type "float2" -0.53007889 0.30087632 ;
	setAttr ".uvtk[83]" -type "float2" -0.52583063 0.29825765 ;
	setAttr ".uvtk[84]" -type "float2" -0.52178204 0.29869932 ;
	setAttr ".uvtk[85]" -type "float2" -0.52039659 0.32054675 ;
	setAttr ".uvtk[86]" -type "float2" -0.53135395 0.32042158 ;
	setAttr ".uvtk[87]" -type "float2" -0.52990234 0.29816955 ;
	setAttr ".uvtk[88]" -type "float2" -0.51902163 0.29946899 ;
	setAttr ".uvtk[89]" -type "float2" -0.53411436 0.31965184 ;
	setAttr ".uvtk[90]" -type "float2" -0.53273928 0.29857409 ;
createNode polyMapSewMove -n "polyMapSewMove18";
	rename -uid "D3881FCF-4D49-84D2-6C45-7980A0BD43D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[185]";
createNode polyTweakUV -n "polyTweakUV48";
	rename -uid "191C2230-41D3-1E82-05F1-51A288F7AE73";
	setAttr ".uopa" yes;
	setAttr -s 21 ".uvtk";
	setAttr ".uvtk[102]" -type "float2" -0.4218049 0.62852657 ;
	setAttr ".uvtk[103]" -type "float2" -0.42199025 0.62902331 ;
	setAttr ".uvtk[104]" -type "float2" -0.4228844 0.62901974 ;
	setAttr ".uvtk[105]" -type "float2" -0.42243469 0.62852407 ;
	setAttr ".uvtk[106]" -type "float2" -0.42288673 0.62960792 ;
	setAttr ".uvtk[107]" -type "float2" -0.42288351 0.62852228 ;
	setAttr ".uvtk[108]" -type "float2" -0.42288041 0.62802482 ;
	setAttr ".uvtk[109]" -type "float2" -0.42198622 0.62802827 ;
	setAttr ".uvtk[110]" -type "float2" -0.42204189 0.62936604 ;
	setAttr ".uvtk[111]" -type "float2" -0.42376396 0.62901616 ;
	setAttr ".uvtk[112]" -type "float2" -0.42333233 0.62852049 ;
	setAttr ".uvtk[113]" -type "float2" -0.42287806 0.62743652 ;
	setAttr ".uvtk[114]" -type "float2" -0.42367959 0.62932801 ;
	setAttr ".uvtk[115]" -type "float2" -0.42394686 0.62851787 ;
	setAttr ".uvtk[116]" -type "float2" -0.42376 0.62802112 ;
	setAttr ".uvtk[117]" -type "float2" -0.42203516 0.62768519 ;
	setAttr ".uvtk[118]" -type "float2" -0.42407972 0.62901497 ;
	setAttr ".uvtk[119]" -type "float2" -0.42427295 0.62851667 ;
	setAttr ".uvtk[120]" -type "float2" -0.42367306 0.6277101 ;
	setAttr ".uvtk[121]" -type "float2" -0.42407572 0.62801993 ;
createNode polyMapSewMove -n "polyMapSewMove19";
	rename -uid "3EA2A7D3-4653-A3B1-8333-7A96156C8A7B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[76]";
createNode polyTweakUV -n "polyTweakUV49";
	rename -uid "93ED9B92-404F-D519-B54F-44B1BAAD573A";
	setAttr ".uopa" yes;
	setAttr -s 62 ".uvtk";
	setAttr ".uvtk[66]" -type "float2" -0.045199506 -0.56341356 ;
	setAttr ".uvtk[67]" -type "float2" -0.047419362 -0.56634653 ;
	setAttr ".uvtk[68]" -type "float2" -0.04411041 -0.56838369 ;
	setAttr ".uvtk[69]" -type "float2" -0.042019926 -0.56582016 ;
	setAttr ".uvtk[70]" -type "float2" -0.048379116 -0.56100702 ;
	setAttr ".uvtk[71]" -type "float2" -0.050278686 -0.56371516 ;
	setAttr ".uvtk[72]" -type "float2" -0.042108364 -0.56944549 ;
	setAttr ".uvtk[73]" -type "float2" -0.040102474 -0.56727141 ;
	setAttr ".uvtk[74]" -type "float2" -0.040120356 -0.56311202 ;
	setAttr ".uvtk[75]" -type "float2" -0.042979658 -0.56048065 ;
	setAttr ".uvtk[76]" -type "float2" -0.046288617 -0.55844343 ;
	setAttr ".uvtk[77]" -type "float2" -0.050296552 -0.55955577 ;
	setAttr ".uvtk[78]" -type "float2" -0.051844262 -0.56207669 ;
	setAttr ".uvtk[79]" -type "float2" -0.04054334 -0.57063007 ;
	setAttr ".uvtk[80]" -type "float2" -0.038664378 -0.56835985 ;
	setAttr ".uvtk[81]" -type "float2" -0.038554803 -0.56475043 ;
	setAttr ".uvtk[82]" -type "float2" -0.048290677 -0.55738163 ;
	setAttr ".uvtk[83]" -type "float2" -0.051734693 -0.55846727 ;
	setAttr ".uvtk[84]" -type "float2" -0.053409271 -0.56089211 ;
	setAttr ".uvtk[85]" -type "float2" -0.04210759 -0.57199132 ;
	setAttr ".uvtk[86]" -type "float2" -0.036989741 -0.56593502 ;
	setAttr ".uvtk[87]" -type "float2" -0.049855702 -0.55619711 ;
	setAttr ".uvtk[88]" -type "float2" -0.054294579 -0.56276733 ;
	setAttr ".uvtk[89]" -type "float2" -0.036104444 -0.56405985 ;
	setAttr ".uvtk[90]" -type "float2" -0.048291467 -0.5548358 ;
	setAttr ".uvtk[102]" -type "float2" -0.038364932 -0.57129151 ;
	setAttr ".uvtk[103]" -type "float2" -0.033551231 -0.57252735 ;
	setAttr ".uvtk[104]" -type "float2" -0.035273932 -0.56923032 ;
	setAttr ".uvtk[105]" -type "float2" -0.034364201 -0.57569385 ;
	setAttr ".uvtk[106]" -type "float2" -0.032857772 -0.56985068 ;
	setAttr ".uvtk[107]" -type "float2" -0.032176007 -0.56717092 ;
	setAttr ".uvtk[108]" -type "float2" -0.038568102 -0.5732072 ;
	setAttr ".uvtk[109]" -type "float2" -0.028816096 -0.57374305 ;
	setAttr ".uvtk[110]" -type "float2" -0.030441597 -0.57047099 ;
	setAttr ".uvtk[111]" -type "float2" -0.031363063 -0.56400442 ;
	setAttr ".uvtk[112]" -type "float2" -0.029707838 -0.57530165 ;
	setAttr ".uvtk[113]" -type "float2" -0.027133323 -0.5713203 ;
	setAttr ".uvtk[114]" -type "float2" -0.027440906 -0.56838661 ;
	setAttr ".uvtk[115]" -type "float2" -0.036244906 -0.56415838 ;
	setAttr ".uvtk[116]" -type "float2" -0.027116369 -0.57417947 ;
	setAttr ".uvtk[117]" -type "float2" -0.025377832 -0.57177109 ;
	setAttr ".uvtk[118]" -type "float2" -0.027471505 -0.5665912 ;
	setAttr ".uvtk[119]" -type "float2" -0.025741152 -0.56882298 ;
	setAttr ".uvtk[120]" -type "float2" -0.053493075 -0.55544055 ;
	setAttr ".uvtk[121]" -type "float2" -0.057133995 -0.55467784 ;
	setAttr ".uvtk[122]" -type "float2" -0.054637544 -0.55897498 ;
	setAttr ".uvtk[123]" -type "float2" -0.052352183 -0.55189979 ;
	setAttr ".uvtk[124]" -type "float2" -0.054746144 -0.55328351 ;
	setAttr ".uvtk[125]" -type "float2" -0.059960805 -0.55632001 ;
	setAttr ".uvtk[126]" -type "float2" -0.04952541 -0.55025756 ;
	setAttr ".uvtk[127]" -type "float2" -0.055999212 -0.5511266 ;
	setAttr ".uvtk[128]" -type "float2" -0.059589766 -0.55045068 ;
	setAttr ".uvtk[129]" -type "float2" -0.0564261 -0.55969071 ;
	setAttr ".uvtk[130]" -type "float2" -0.048348032 -0.55499792 ;
	setAttr ".uvtk[131]" -type "float2" -0.054807954 -0.54767263 ;
	setAttr ".uvtk[132]" -type "float2" -0.057714947 -0.54817325 ;
	setAttr ".uvtk[133]" -type "float2" -0.060847633 -0.55173206 ;
	setAttr ".uvtk[134]" -type "float2" -0.05307167 -0.54721463 ;
	setAttr ".uvtk[135]" -type "float2" -0.058625422 -0.54660606 ;
	setAttr ".uvtk[136]" -type "float2" -0.060471289 -0.54893327 ;
	setAttr ".uvtk[137]" -type "float2" -0.055689462 -0.54615533 ;
createNode polyMapSewMove -n "polyMapSewMove20";
	rename -uid "C0F4D87B-4291-13C7-E28D-ABAA9C3D8B3C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[20]" "e[120]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "F1FD47AB-4E88-C1B5-1A88-85B8056DBC89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[187]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "8984D8A5-4D45-86C0-4F1C-069102C56B00";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[187]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "24ED13EC-4B5D-040A-E959-D89C7F2AAE28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[187]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "D629925F-4457-5F74-F3B1-88AD6AEA7436";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[187]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "A5B4D769-47E8-F4D2-3799-35A092889A90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[187]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "8039F569-4EE4-A877-D63F-FD94CE455B45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[189]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "9D91D3D9-4515-4FC6-0761-7D81FB0A648A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[189]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "6F463EC2-4378-5061-463E-DFA23CCB23DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[189]";
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "7B020471-49CA-387F-5EFC-9587496191F9";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".s" -type "double3" 1.515318260192871 1.515318260192871 1.515318260192871 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV50";
	rename -uid "D1971783-4492-49DA-2317-ACBADD494308";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[66]" -type "float2" -0.52988958 0.30943054 ;
	setAttr ".uvtk[67]" -type "float2" -0.52481645 0.30942723 ;
	setAttr ".uvtk[68]" -type "float2" -0.52532673 0.31476229 ;
	setAttr ".uvtk[69]" -type "float2" -0.52988601 0.31493035 ;
	setAttr ".uvtk[70]" -type "float2" -0.5298931 0.30393076 ;
	setAttr ".uvtk[71]" -type "float2" -0.52533364 0.30409288 ;
	setAttr ".uvtk[72]" -type "float2" -0.52582347 0.31784806 ;
	setAttr ".uvtk[73]" -type "float2" -0.52988374 0.31824705 ;
	setAttr ".uvtk[74]" -type "float2" -0.53444541 0.31476828 ;
	setAttr ".uvtk[75]" -type "float2" -0.53496259 0.30943382 ;
	setAttr ".uvtk[76]" -type "float2" -0.53445232 0.30409884 ;
	setAttr ".uvtk[77]" -type "float2" -0.52989519 0.30061412 ;
	setAttr ".uvtk[78]" -type "float2" -0.52583444 0.30100775 ;
	setAttr ".uvtk[79]" -type "float2" -0.52582169 0.32055509 ;
	setAttr ".uvtk[80]" -type "float2" -0.52988219 0.32073456 ;
	setAttr ".uvtk[81]" -type "float2" -0.53394455 0.31785333 ;
	setAttr ".uvtk[82]" -type "float2" -0.53395557 0.30101305 ;
	setAttr ".uvtk[83]" -type "float2" -0.52989686 0.29812655 ;
	setAttr ".uvtk[84]" -type "float2" -0.52583623 0.29830068 ;
	setAttr ".uvtk[85]" -type "float2" -0.52302313 0.31996617 ;
	setAttr ".uvtk[86]" -type "float2" -0.53394282 0.3205604 ;
	setAttr ".uvtk[87]" -type "float2" -0.53395736 0.29830599 ;
	setAttr ".uvtk[88]" -type "float2" -0.52303678 0.29888606 ;
	setAttr ".uvtk[89]" -type "float2" -0.53674227 0.31997502 ;
	setAttr ".uvtk[90]" -type "float2" -0.53675604 0.298895 ;
	setAttr ".uvtk[106]" -type "float2" -0.27942371 0.65703899 ;
	setAttr ".uvtk[107]" -type "float2" -0.27933162 0.65678769 ;
	setAttr ".uvtk[108]" -type "float2" -0.27888006 0.65678674 ;
	setAttr ".uvtk[109]" -type "float2" -0.27910566 0.65703827 ;
	setAttr ".uvtk[110]" -type "float2" -0.27888066 0.65648967 ;
	setAttr ".uvtk[111]" -type "float2" -0.27887899 0.65703791 ;
	setAttr ".uvtk[112]" -type "float2" -0.27887905 0.65728909 ;
	setAttr ".uvtk[113]" -type "float2" -0.27933061 0.65729004 ;
	setAttr ".uvtk[114]" -type "float2" -0.27930656 0.65661424 ;
	setAttr ".uvtk[115]" -type "float2" -0.27843586 0.65678567 ;
	setAttr ".uvtk[116]" -type "float2" -0.27865234 0.65703756 ;
	setAttr ".uvtk[117]" -type "float2" -0.27887845 0.65758616 ;
	setAttr ".uvtk[118]" -type "float2" -0.27847943 0.65662855 ;
	setAttr ".uvtk[119]" -type "float2" -0.27834201 0.65703672 ;
	setAttr ".uvtk[120]" -type "float2" -0.27843484 0.65728825 ;
	setAttr ".uvtk[121]" -type "float2" -0.27930486 0.65746325 ;
	setAttr ".uvtk[122]" -type "float2" -0.27827641 0.65678543 ;
	setAttr ".uvtk[123]" -type "float2" -0.27817732 0.65703648 ;
	setAttr ".uvtk[124]" -type "float2" -0.27847779 0.65744561 ;
	setAttr ".uvtk[125]" -type "float2" -0.2782754 0.65728801 ;
createNode polyMapSewMove -n "polyMapSewMove21";
	rename -uid "44109535-447D-6FB2-B1D6-31A2D933D5F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6]" "e[131]";
createNode polyTweakUV -n "polyTweakUV51";
	rename -uid "23E6BB0E-4C6F-8E64-DA9F-20A6DA83D857";
	setAttr ".uopa" yes;
	setAttr -s 33 ".uvtk[0:32]" -type "float2" 0.19968179 0.56007445 0.19927189
		 0.56529546 0.1972473 0.5640583 0.20076391 0.560835 0.19481286 0.5680421 0.19834545
		 0.55796385 0.1953392 0.56288326 0.20084617 0.55816901 0.19598624 0.56899798 0.1919674
		 0.56840104 0.19954395 0.5561139 0.19553593 0.55543524 0.19375929 0.55834252 0.19354388
		 0.57011873 0.19080675 0.57041168 0.19046822 0.56372803 0.18842149 0.5670774 0.19678444
		 0.55339205 0.19217324 0.56093794 0.18899778 0.55900806 0.192004 0.55408865 0.18710777
		 0.56922722 0.185626 0.56452584 0.1931034 0.5521782 0.18708168 0.55784613 0.18951616
		 0.55386239 0.18436623 0.56647599 0.18464723 0.56182998 0.19068055 0.55195695 0.18505712
		 0.55660897 0.18337823 0.56390655 0.18834573 0.55324638 0.18326131 0.5612219;
createNode polyMapSewMove -n "polyMapSewMove22";
	rename -uid "3EEB876A-448A-39DF-7C85-3397C92C7434";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20]";
createNode polyTweakUV -n "polyTweakUV52";
	rename -uid "9A3D8793-4F51-DB4E-5353-BB8E16F2157A";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk";
	setAttr ".uvtk[33]" -type "float2" -0.25361505 0.49869311 ;
	setAttr ".uvtk[34]" -type "float2" -0.25201237 0.50269276 ;
	setAttr ".uvtk[35]" -type "float2" -0.25404501 0.50350732 ;
	setAttr ".uvtk[36]" -type "float2" -0.25207436 0.49697793 ;
	setAttr ".uvtk[37]" -type "float2" -0.25009525 0.501917 ;
	setAttr ".uvtk[38]" -type "float2" -0.25040966 0.50669253 ;
	setAttr ".uvtk[39]" -type "float2" -0.25471678 0.4992187 ;
	setAttr ".uvtk[40]" -type "float2" -0.24912879 0.4951089 ;
	setAttr ".uvtk[41]" -type "float2" -0.24795912 0.4980278 ;
	setAttr ".uvtk[42]" -type "float2" -0.24787547 0.50745678 ;
	setAttr ".uvtk[43]" -type "float2" -0.25438163 0.49677998 ;
	setAttr ".uvtk[44]" -type "float2" -0.25288051 0.49511015 ;
	setAttr ".uvtk[45]" -type "float2" -0.25162446 0.50738192 ;
	setAttr ".uvtk[46]" -type "float2" -0.24570757 0.49442673 ;
	setAttr ".uvtk[47]" -type "float2" -0.2437285 0.49936581 ;
	setAttr ".uvtk[48]" -type "float2" -0.246915 0.50063366 ;
	setAttr ".uvtk[49]" -type "float2" -0.24995074 0.49305752 ;
	setAttr ".uvtk[50]" -type "float2" -0.24579252 0.5034349 ;
	setAttr ".uvtk[51]" -type "float2" -0.24444507 0.50679761 ;
	setAttr ".uvtk[52]" -type "float2" -0.24712849 0.50946498 ;
	setAttr ".uvtk[53]" -type "float2" -0.24957424 0.50877744 ;
	setAttr ".uvtk[54]" -type "float2" -0.24641421 0.49251908 ;
	setAttr ".uvtk[55]" -type "float2" -0.24340881 0.4946034 ;
	setAttr ".uvtk[56]" -type "float2" -0.24180607 0.49860317 ;
	setAttr ".uvtk[57]" -type "float2" -0.24150868 0.50490558 ;
	setAttr ".uvtk[58]" -type "float2" -0.24358018 0.50895607 ;
	setAttr ".uvtk[59]" -type "float2" -0.2441754 0.49269038 ;
	setAttr ".uvtk[60]" -type "float2" -0.2397735 0.49778861 ;
	setAttr ".uvtk[61]" -type "float2" -0.24020343 0.50260288 ;
	setAttr ".uvtk[62]" -type "float2" -0.2406622 0.50687397 ;
	setAttr ".uvtk[63]" -type "float2" -0.24224897 0.49422288 ;
	setAttr ".uvtk[64]" -type "float2" -0.23936798 0.50468779 ;
	setAttr ".uvtk[65]" -type "float2" -0.2388487 0.50226265 ;
createNode polyMapSewMove -n "polyMapSewMove23";
	rename -uid "8DF73E89-4473-F194-83BD-E493D5866C3B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[66]";
createNode polyTweakUV -n "polyTweakUV53";
	rename -uid "A80B479B-45D4-C151-9741-0AA2C70FE29E";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[87]" -type "float2" 0.55182278 0.40843922 ;
	setAttr ".uvtk[88]" -type "float2" 0.55586714 0.40742916 ;
	setAttr ".uvtk[89]" -type "float2" 0.55740458 0.41022807 ;
	setAttr ".uvtk[90]" -type "float2" 0.55295938 0.41163164 ;
	setAttr ".uvtk[91]" -type "float2" 0.55972737 0.41518706 ;
	setAttr ".uvtk[92]" -type "float2" 0.55484414 0.41692561 ;
	setAttr ".uvtk[93]" -type "float2" 0.54862738 0.41335315 ;
	setAttr ".uvtk[94]" -type "float2" 0.54805005 0.41021222 ;
	setAttr ".uvtk[95]" -type "float2" 0.55672896 0.42221957 ;
	setAttr ".uvtk[96]" -type "float2" 0.56106102 0.42049807 ;
	setAttr ".uvtk[97]" -type "float2" 0.54996103 0.41866416 ;
	setAttr ".uvtk[98]" -type "float2" 0.5522837 0.42362314 ;
	setAttr ".uvtk[99]" -type "float2" 0.55786556 0.425412 ;
	setAttr ".uvtk[100]" -type "float2" 0.5616383 0.423639 ;
	setAttr ".uvtk[101]" -type "float2" 0.55382121 0.42642206 ;
createNode polyMapSewMove -n "polyMapSewMove24";
	rename -uid "2F0C48F4-4C15-4292-129F-A59693B8395E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
createNode polyPlanarProj -n "polyPlanarProj27";
	rename -uid "DDC7B746-48ED-55F4-AC04-CEB0A71FCCCD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "f[0:5]" "f[27:29]" "f[32:37]" "f[59:61]" "f[64:69]" "f[91:93]" "f[96:101]" "f[123:125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.09482652664184571 -2.9454397583007812 ;
	setAttr ".ro" -type "double3" 90 6.6362715806864468e-15 6.6362715806864468e-15 ;
	setAttr ".ps" -type "double2" 1.496098518371582 1.496098518371582 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj28";
	rename -uid "D42285B5-44A3-450E-E5F2-47B29B3F92E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[0:8]" "f[20:23]" "f[27:29]" "f[32:40]" "f[52:55]" "f[59:61]" "f[64:72]" "f[84:87]" "f[91:93]" "f[96:104]" "f[116:119]" "f[123:125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.1021581099244869e-17 0.094672784805297852 -2.9454397583007812 ;
	setAttr ".ro" -type "double3" -90.000000000000014 90 0 ;
	setAttr ".ps" -type "double2" 1.5153182983398439 1.5153182983398439 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj29";
	rename -uid "6878B268-457D-267E-81BD-BD8DC6E11696";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[9:19]" "f[24:26]" "f[30:31]" "f[41:51]" "f[56:58]" "f[62:63]" "f[73:83]" "f[88:90]" "f[94:95]" "f[105:115]" "f[120:122]" "f[126:127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.20425213925097754 0 0 0 0 1 0 0 0 -313.64281270290866 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.0510659295790548e-17 -0.092371797561645513 -2.9454397583007812 ;
	setAttr ".ic" -type "double2" 0.5 1.4062648859678535 ;
	setAttr ".ro" -type "double3" 90.000000000000014 90 0 ;
	setAttr ".ps" -type "double2" 1.5153182983398439 1.5153182983398439 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV54";
	rename -uid "B4AB59E3-4DF1-97BD-09DD-6C86D57C4041";
	setAttr ".uopa" yes;
	setAttr -s 118 ".uvtk[0:117]" -type "float2" -0.41906372 -0.66186172 -0.42251554
		 -0.73953539 -0.39161876 -0.73953539 -0.39627388 -0.66186172 -0.20122901 -0.24839297
		 -0.42645231 -0.83136958 -0.36229688 -0.73953539 -0.36987734 -0.66186172 -0.20122901
		 -0.1513508 -0.30327529 -0.16117838 -0.39798692 -0.78817123 -0.30327517 -0.74907637
		 -0.30643362 -0.66186172 -0.30643368 -0.24839297 -0.20122901 -0.070687465 -0.30170503
		 -0.086001627 -0.36229697 -0.17071933 -0.36229688 -0.79715449 -0.30170488 -0.8042028
		 -0.20122895 -0.7589041 -0.20122895 -0.66186172 -0.36987734 -0.24839297 -0.36229697
		 -0.093045644 -0.20122895 -0.82153392 -0.36229688 -0.82726783 -0.30170488 -0.8411749
		 -0.41407946 -0.17071933 -0.41746214 -0.24839297 -0.20122895 -0.84994072 -0.20122895
		 -0.86088294 -0.4028478 -0.11717658 -0.42934576 -0.66186172 -0.42251566 -0.17071933
		 -0.39161876 -0.58418804 -0.42251554 -0.58418804 -0.42645231 -0.49235386 -0.36229688
		 -0.58418804 -0.39798692 -0.53555208 -0.42793146 -0.24839297 -0.30327517 -0.57464689
		 -0.30170488 -0.51952052 -0.36229688 -0.52656883 -0.42645243 -0.07888522 -0.20122895
		 -0.56481934 -0.20122895 -0.50218946 -0.42934588 -0.24839297 -0.36229688 -0.4964554
		 -0.30170488 -0.48254842 -0.20122895 -0.47378266 -0.20122895 -0.46284035 -0.20122901
		 -0.049371861 -0.30170503 -0.069079779 -0.20122901 -0.056426786 -0.36229697 -0.082986884
		 0.016605813 -0.66186172 -0.0061840182 -0.66186172 -0.010839038 -0.73953539 -0.30327529
		 -0.33560783 -0.20122901 -0.34543547 0.020057607 -0.73953539 0.023994554 -0.83136958
		 -0.30170503 -0.41078454 -0.20122901 -0.42609873 -0.032580547 -0.66186172 -0.36229697
		 -0.32606685 -0.36229697 -0.40374058 -0.41407946 -0.32606685 -0.4028478 -0.37960967
		 -0.42251566 -0.32606685 -0.42645243 -0.41790092 -0.20122901 -0.44741449 -0.20122901
		 -0.44035938 -0.30170503 -0.42770645 -0.36229697 -0.41379935 -0.096024387 -0.24839303
		 -0.099182762 -0.16117832 -0.10075306 -0.086001627 -0.032580562 -0.24839303 -0.040161021
		 -0.17071936 -0.040161021 -0.093045674 0.015004206 -0.24839303 0.011621464 -0.17071936
		 0.00038971542 -0.11717658 0.025473494 -0.24839303 0.020057607 -0.17071936 0.023994464
		 -0.07888525 0.026887793 -0.24839303 -0.040160932 -0.73953539 -0.0044708354 -0.78817123
		 -0.096024327 -0.66186172 -0.099182762 -0.74907637 -0.10075305 -0.8042028 -0.040160932
		 -0.79715449 -0.040160932 -0.82726783 -0.10075305 -0.8411749 0.026887853 -0.66186172
		 0.020057607 -0.58418804 -0.010839038 -0.58418804 0.023994554 -0.49235386 -0.040160932
		 -0.58418804 -0.0044708354 -0.53555208 -0.10075306 -0.069079779 -0.099182762 -0.57464689
		 -0.040160932 -0.52656883 -0.10075305 -0.51952052 -0.040161021 -0.082986914 -0.099182762
		 -0.33560783 -0.040160932 -0.4964554 -0.10075305 -0.48254842 -0.040161021 -0.41379932
		 -0.10075306 -0.42770645 0.023994464 -0.41790089 0.020057607 -0.32606685 -0.10075306
		 -0.41078454 0.00038971542 -0.37960967 0.011621464 -0.32606685 -0.040161021 -0.40374058
		 -0.040161021 -0.32606685;
createNode polyPlanarProj -n "polyPlanarProj30";
	rename -uid "E240DA2D-4551-85F2-FFE3-EEB82150FEFE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[9:19]" "f[24:26]" "f[30:31]" "f[41:51]" "f[56:58]" "f[62:63]" "f[73:83]" "f[88:90]" "f[94:95]" "f[105:115]" "f[120:122]" "f[126:127]";
	setAttr ".ix" -type "matrix" 0.3656714760489313 0 0 0 0 0.094466365117692047 0 0
		 0 0 0.57894212187985905 0 -182.22363630513576 43.25791230715825 94.149273859321937 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.822236328125 0.38985729217529297 1.0520639038085937 ;
	setAttr ".ro" -type "double3" 90.000000000000014 90 0 ;
	setAttr ".ps" -type "double2" 0.8772815909642464 0.8772815909642464 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj31";
	rename -uid "ABE85026-4D49-FB22-0F22-89B74C0A51B4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[0:8]" "f[20:23]" "f[27:29]" "f[32:40]" "f[52:55]" "f[59:61]" "f[64:72]" "f[84:87]" "f[91:93]" "f[96:104]" "f[116:119]" "f[123:125]";
	setAttr ".ix" -type "matrix" 0.3656714760489313 0 0 0 0 0.094466365117692047 0 0
		 0 0 0.57894212187985905 0 -182.22363630513576 43.25791230715825 94.149273859321937 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.822236328125 0.47636516571044923 1.0520639038085937 ;
	setAttr ".ro" -type "double3" -90.000000000000014 90 0 ;
	setAttr ".ps" -type "double2" 0.87728141428513196 0.87728141428513196 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV55";
	rename -uid "6B6E6EDC-43D5-30E1-E085-FFA837A53BFC";
	setAttr ".uopa" yes;
	setAttr -s 118 ".uvtk[0:117]" -type "float2" -0.16378327 -0.22775173 -0.16540058
		 -0.25073689 -0.15092511 -0.25073689 -0.15310605 -0.22775173 -0.061725903 0.24009687
		 -0.16724499 -0.27791244 -0.13718756 -0.25073689 -0.14073904 -0.22775173 -0.061725903
		 0.26881361 -0.10953553 0.26590538 -0.15390874 -0.26512921 -0.10953535 -0.25356025
		 -0.11101522 -0.22775173 -0.11101533 0.24009687 -0.061725903 0.29268339 -0.10879983
		 0.28815177 -0.13718767 0.26308209 -0.13718756 -0.26778758 -0.10879971 -0.26987323
		 -0.061725814 -0.25646847 -0.061725814 -0.22775173 -0.14073916 0.24009687 -0.13718767
		 0.28606716 -0.061725814 -0.27500182 -0.13718756 -0.27669865 -0.10879971 -0.28081402
		 -0.16144831 0.26308209 -0.16303296 0.24009687 -0.061725814 -0.28340802 -0.061725814
		 -0.28664601 -0.15618612 0.27892643 -0.16860063 -0.22775173 -0.16540058 0.26308209
		 -0.15092511 -0.20476654 -0.16540058 -0.20476654 -0.16724499 -0.17759103 -0.13718756
		 -0.20476654 -0.15390868 -0.19037423 -0.16793807 0.24009687 -0.10953541 -0.20194319
		 -0.10879971 -0.18563023 -0.13718756 -0.18771589 -0.16724499 0.29025766 -0.061725814
		 -0.19903496 -0.061725814 -0.18050158 -0.16860075 0.24009687 -0.13718756 -0.17880473
		 -0.10879971 -0.17468938 -0.061725814 -0.17209545 -0.061725814 -0.1688574 -0.061725903
		 0.29899126 -0.10879983 0.2931594 -0.061725903 0.29690355 -0.13718767 0.28904381 0.040331703
		 -0.22775173 0.029654456 -0.22775173 0.027473582 -0.25073689 -0.10953553 0.21428825
		 -0.061725903 0.21138026 0.041948896 -0.25073689 0.043793421 -0.27791238 -0.10879983
		 0.19204213 -0.061725903 0.18751027 0.017287474 -0.22775173 -0.13718767 0.21711172
		 -0.13718767 0.1941265 -0.16144831 0.21711172 -0.15618612 0.20126726 -0.16540058 0.21711172
		 -0.16724499 0.18993606 -0.061725903 0.18120255 -0.061725903 0.18329038 -0.10879983
		 0.18703456 -0.13718767 0.19114991 -0.012436545 0.24009687 -0.013916409 0.26590544
		 -0.014652034 0.28815171 0.017287355 0.24009687 0.013735869 0.26308209 0.013735869
		 0.28606722 0.039581221 0.24009687 0.037996452 0.26308209 0.032734223 0.27892631 0.044486236
		 0.24009687 0.041948866 0.26308209 0.043793302 0.2902576 0.045148831 0.24009687 0.013735929
		 -0.25073689 0.030457122 -0.26512915 -0.012436455 -0.22775173 -0.013916289 -0.25356019
		 -0.014651945 -0.26987317 0.013735929 -0.26778752 0.013735929 -0.27669865 -0.014651945
		 -0.28081399 0.04514889 -0.22775173 0.041948896 -0.20476654 0.027473582 -0.20476654
		 0.043793421 -0.17759103 0.013735929 -0.20476654 0.030457122 -0.19037423 -0.014652034
		 0.2931594 -0.013916289 -0.20194319 0.013735929 -0.18771589 -0.014651945 -0.18563023
		 0.013735869 0.28904375 -0.013916409 0.21428825 0.013735929 -0.17880473 -0.014651945
		 -0.17468938 -0.014652034 0.19204213 0.013735869 0.21711172 0.013735869 0.1941265
		 0.037996452 0.21711172 0.032734223 0.20126726 0.041948866 0.21711172 0.043793302
		 0.18993606 -0.014652034 0.18703456 0.013735869 0.19114991;
createNode polyCube -n "polyCube4";
	rename -uid "68B089CA-4EF6-3D05-B00E-F9A726936928";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "D943F9FF-4711-62C4-5113-AE9FC210B2F1";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5063562 0.18875128 ;
	setAttr ".rs" 52423;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39857007241549008 0.98642002592759759 0.18875127951178336 ;
	setAttr ".cbx" -type "double3" 0.39857007241549008 2.02629248950175 0.18875127951178336 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "C99BC8CA-41D1-6865-0350-26AA96717252";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5063562 0.18875128 ;
	setAttr ".rs" 54193;
	setAttr ".lt" -type "double3" 0 0 -0.22241217766531371 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.36550121171976735 1.0295584851586816 0.18875127951178336 ;
	setAttr ".cbx" -type "double3" 0.36550121171976735 1.9831540302706661 0.18875127951178336 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "30B8ADC7-49C4-14BC-330E-CA81281C0115";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" 4.1484356 4.1484361 0 ;
	setAttr ".tk[9]" -type "float3" -4.1484356 4.1484361 0 ;
	setAttr ".tk[10]" -type "float3" -4.1484356 -4.1484361 0 ;
	setAttr ".tk[11]" -type "float3" 4.1484356 -4.1484361 0 ;
createNode groupId -n "groupId4";
	rename -uid "BCEA3E2C-4BE5-4A45-602A-8BAD77365ABF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "04673948-41E4-2138-02B4-FA84D6791837";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[11]";
createNode polyCube -n "polyCube5";
	rename -uid "C4B22DB6-4894-CD29-EBDD-87AEE0F3A1EE";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak23";
	rename -uid "0A5842F3-4AF0-F0C4-1055-588C06C20EF5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 -33.762169 ;
	setAttr ".tk[13]" -type "float3" 0 0 -33.762169 ;
	setAttr ".tk[14]" -type "float3" 0 0 -33.762169 ;
	setAttr ".tk[15]" -type "float3" 0 0 -33.762169 ;
createNode polySplit -n "polySplit10";
	rename -uid "5BE3BF04-47F8-426D-8E4F-329FC1250AEC";
	setAttr -s 9 ".e[0:8]"  0.53048003 0.46952 0.46952 0.53048003 0.53048003
		 0.53048003 0.53048003 0.53048003 0.53048003;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483640 -2147483639 -2147483643 -2147483632 -2147483624 
		-2147483621 -2147483629 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "DDE21659-4826-ABC2-7712-5BAF16108B3A";
	setAttr -s 9 ".e[0:8]"  0.94751501 0.052485202 0.052485202 0.94751501
		 0.94751501 0.94751501 0.94751501 0.94751501 0.94751501;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483619 -2147483618 -2147483643 -2147483632 -2147483624 
		-2147483621 -2147483629 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "00C9C11A-496B-4738-2D04-E6A00E8AA013";
	setAttr ".dc" -type "componentList" 2 "f[26]" "f[28]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "A9E4879E-4AD2-9BCA-25C8-30B2A86D194F";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5221467 -0.16111396 ;
	setAttr ".rs" 41408;
	setAttr ".lt" -type "double3" 0 8.5265128291212019e-16 0.34681221978329679 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.36550121171976735 1.5088715873797065 -0.16111396037690298 ;
	setAttr ".cbx" -type "double3" 0.36550121171976735 1.5354218244025444 -0.16111396037690298 ;
createNode polyTweakUV -n "polyTweakUV56";
	rename -uid "187C7E5A-4850-E206-C6EF-70AF0F83D767";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[28]" -type "float2" 2.5979219e-14 0.0010442752 ;
	setAttr ".uvtk[44]" -type "float2" -4.9692683e-10 -2.694739e-08 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "0914B2DA-4BA0-BD20-893D-7FA51CD040F2";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[34]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak24";
	rename -uid "F52F3627-47E2-F253-C9C2-338BB0ED40D1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[20]" -type "float3" 0 -3.3378601e-06 0 ;
	setAttr ".tk[34]" -type "float3" 0 -3.3378601e-06 0.80874634 ;
createNode polyTweakUV -n "polyTweakUV57";
	rename -uid "4AC55C3C-45F9-4A42-C7D9-CD9F2034EB85";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[38]" -type "float2" -2.5979219e-14 -0.00089928566 ;
	setAttr ".uvtk[43]" -type "float2" -4.9569671e-10 5.5457345e-09 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "18965F5E-4F0F-F3C7-C760-14B7E94D474D";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[32]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak25";
	rename -uid "DDF26879-40FB-6668-0C0C-78B801C9FA16";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[28]" -type "float3" 0 -3.2484531e-06 0 ;
	setAttr ".tk[32]" -type "float3" 0 -3.2484531e-06 0.80874634 ;
createNode polyTweakUV -n "polyTweakUV58";
	rename -uid "3AA48B35-4872-471F-33AA-95BD35192F74";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[31]" -type "float2" 0 0.0010442752 ;
	setAttr ".uvtk[45]" -type "float2" 5.0000276e-10 -3.1183358e-08 ;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "A370EE2E-4525-8261-EE82-2A8B01F3F270";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[33]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak26";
	rename -uid "60045471-4CF9-B14A-862E-12AF20F72344";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[23]" -type "float3" 0 -3.3378601e-06 0 ;
	setAttr ".tk[33]" -type "float3" 0 -3.3378601e-06 0.80874634 ;
createNode polyTweakUV -n "polyTweakUV59";
	rename -uid "40FA04DA-4249-3B1A-6BB4-29998ADCC581";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[41]" -type "float2" -4.0745185e-14 -0.00089928566 ;
	setAttr ".uvtk[42]" -type "float2" 4.9876225e-10 8.7826759e-09 ;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "E7C8A96F-4FD3-BF45-4824-A19B156D96A1";
	setAttr ".ics" -type "componentList" 1 "vtx[31:32]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak27";
	rename -uid "5A579873-4D04-56DD-0A15-FAA90565A7B1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[31:32]" -type "float3"  0 -3.2484531e-06 0 0 -3.2484531e-06
		 0.80874634;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "E2FA5A86-4609-35FB-400D-559CCEBA375A";
	setAttr ".ics" -type "componentList" 5 "f[6:9]" "f[17]" "f[21]" "f[25]" "f[27]";
	setAttr ".ix" -type "matrix" 0.79714014483098006 0 0 0 0 1.0398724635741523 0 0 0 0 0.37750255902356672 0
		 0 150.63562577146737 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5063562 0.18875128 ;
	setAttr ".rs" 54805;
	setAttr ".lt" -type "double3" 0 1.4210854715202004e-16 0.011066259290362623 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39856998119004011 0.98642002592759759 0.18875127951178336 ;
	setAttr ".cbx" -type "double3" 0.39856998119004011 2.02629248950175 0.18875127951178336 ;
createNode polyTweak -n "polyTweak28";
	rename -uid "17D6848F-49B3-2D07-3DED-27BA513149FA";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[16]" -type "float3" 0 -0.28789899 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.28789899 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.28789899 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.28789899 0 ;
createNode polyCube -n "polyCube6";
	rename -uid "6DA3D377-47B2-5664-EBD3-AF943721C88E";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyPlanarProj -n "polyPlanarProj32";
	rename -uid "548B9F05-453B-F53A-845E-7C94D2991CED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[5]" "f[9]" "f[12]" "f[14]" "f[17]" "f[20]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4842373657226564 0.42651573181152347 0.002487660050392151 ;
	setAttr ".ro" -type "double3" 0 -90 0 ;
	setAttr ".ps" -type "double2" 0.99978516796754546 0.99978516796754546 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj33";
	rename -uid "F6DE0A4C-4A37-DFBA-2569-4390A5AC490D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "f[4]" "f[7]" "f[10]" "f[13]" "f[15]" "f[18]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.3965713500976564 0.42651569366455078 0.0024876326322555544 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.99978521336082515 0.99978521336082515 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV60";
	rename -uid "3CD79015-4D88-D6CB-3D96-D8A1D3AE267D";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" 0.76932466 0.010023785 ;
	setAttr ".uvtk[11]" -type "float2" 0.76932454 0.010023785 ;
	setAttr ".uvtk[27]" -type "float2" 0.76932454 0.010023785 ;
	setAttr ".uvtk[41]" -type "float2" 0.76932466 0.010023785 ;
	setAttr ".uvtk[42]" -type "float2" 0.76932454 0.01002377 ;
	setAttr ".uvtk[43]" -type "float2" 0.76932466 0.01002377 ;
	setAttr ".uvtk[44]" -type "float2" 0.76932466 0.010023774 ;
	setAttr ".uvtk[45]" -type "float2" 0.76932454 0.010023774 ;
	setAttr ".uvtk[46]" -type "float2" 0.7693246 0.01002377 ;
	setAttr ".uvtk[47]" -type "float2" 0.7693246 0.010023774 ;
	setAttr ".uvtk[48]" -type "float2" 0.7693246 0.01002377 ;
	setAttr ".uvtk[49]" -type "float2" 0.7693246 0.010023774 ;
createNode polyPlanarProj -n "polyPlanarProj34";
	rename -uid "FD35481C-4064-1690-9E8E-40A461CF11A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404046630859377 0.50067138671875 0.044037513732910157 ;
	setAttr ".ro" -type "double3" -43.199999699128696 0 0 ;
	setAttr ".ps" -type "double2" 1.0540407835779064 1.0540407835779064 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV61";
	rename -uid "73B1AB2E-4112-CC85-3BED-F69BDD2689AB";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.38591525 0.17792198 ;
	setAttr ".uvtk[1]" -type "float2" 0.38591525 0.17792198 ;
	setAttr ".uvtk[10]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[41]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[42]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[43]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[44]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[45]" -type "float2" 0.11527336 0 ;
	setAttr ".uvtk[46]" -type "float2" 0.11527342 0 ;
	setAttr ".uvtk[47]" -type "float2" 0.11527342 0 ;
	setAttr ".uvtk[48]" -type "float2" 0.11527342 0 ;
	setAttr ".uvtk[49]" -type "float2" 0.11527342 0 ;
	setAttr ".uvtk[50]" -type "float2" 0.38591525 0.17792195 ;
	setAttr ".uvtk[51]" -type "float2" 0.38591525 0.17792195 ;
createNode polyPlanarProj -n "polyPlanarProj35";
	rename -uid "CF60B199-4586-CDC5-3682-5E951FBCEB15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404046630859377 0.074934377670288085 0.003906605541706085 ;
	setAttr ".ro" -type "double3" -90 -89.999999999999929 0 ;
	setAttr ".ps" -type "double2" 0.55277434556295713 0.55277434556295713 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV62";
	rename -uid "70CF43D9-4EFB-F317-4C57-0EBAD212CD21";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[52]" -type "float2" 1.2083805 1.6255593 ;
	setAttr ".uvtk[53]" -type "float2" 1.2083803 1.6255593 ;
	setAttr ".uvtk[54]" -type "float2" 1.2083803 1.6255593 ;
	setAttr ".uvtk[55]" -type "float2" 1.2083805 1.6255593 ;
createNode polyPlanarProj -n "polyPlanarProj36";
	rename -uid "D8B57CD4-4B87-E579-AC6F-B08926A478D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[23]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404043579101562 0.44613315582275392 0.0039066123962402345 ;
	setAttr ".ro" -type "double3" 37.800001083438588 180.79996262438505 2.8985261907716507e-05 ;
	setAttr ".ps" -type "double2" 0.9261255407117307 0.9261255407117307 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV63";
	rename -uid "972EBAEC-4178-B7C8-F661-6E983AA9BE30";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[23]" -type "float2" 0.35197356 1.7225999 ;
	setAttr ".uvtk[24]" -type "float2" 0.35197356 1.7226 ;
	setAttr ".uvtk[56]" -type "float2" 0.35197356 1.7226 ;
	setAttr ".uvtk[57]" -type "float2" 0.35197356 1.7225999 ;
createNode polyPlanarProj -n "polyPlanarProj37";
	rename -uid "7FB9AB93-458C-5276-BCB6-588CB4E01D3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404046630859377 0.44613311767578123 -0.27248054504394531 ;
	setAttr ".ps" -type "double2" 0.7423975102537651 0.7423975102537651 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV64";
	rename -uid "5857EA83-46C0-5775-F186-2CAB92A19194";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[18]" -type "float2" 0.52588987 1.6811913 ;
	setAttr ".uvtk[21]" -type "float2" 0.52588987 1.6811913 ;
	setAttr ".uvtk[22]" -type "float2" 0.52588987 1.6811913 ;
	setAttr ".uvtk[25]" -type "float2" 0.52588987 1.6811913 ;
createNode polyPlanarProj -n "polyPlanarProj38";
	rename -uid "C18F1AAC-43AA-F1AA-B07E-DE95C072292B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404046630859377 0.00077878154814243323 0.36055553436279297 ;
	setAttr ".ps" -type "double2" 0.14831119284856648 0.14831119284856648 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV65";
	rename -uid "C56F7715-4206-84A8-B494-C2A5D8C0E5AC";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.18054011 -0.85240817 ;
	setAttr ".uvtk[9]" -type "float2" 0.69017792 -0.85240817 ;
	setAttr ".uvtk[58]" -type "float2" 0.69017792 0.0097791329 ;
	setAttr ".uvtk[59]" -type "float2" 0.18054011 0.0097791329 ;
createNode polyPlanarProj -n "polyPlanarProj39";
	rename -uid "C0226D74-4E21-2A47-0DDB-87A3106162B6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[2]" "f[6]" "f[16]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404046630859377 0.42651573181152347 -0.35558029174804689 ;
	setAttr ".ro" -type "double3" 0 180 0 ;
	setAttr ".ps" -type "double2" 0.99978512257426588 0.99978512257426588 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV66";
	rename -uid "2EF03489-4ACD-CEDA-A171-72A5FD86E379";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" -0.45820996 0.0079458635 ;
	setAttr ".uvtk[7]" -type "float2" -0.45820996 0.0079458635 ;
	setAttr ".uvtk[26]" -type "float2" -0.45820996 0.0079458635 ;
	setAttr ".uvtk[29]" -type "float2" -0.45820996 0.0079458635 ;
	setAttr ".uvtk[60]" -type "float2" -0.45820996 0.0079458337 ;
	setAttr ".uvtk[61]" -type "float2" -0.45820996 0.0079458337 ;
	setAttr ".uvtk[62]" -type "float2" -0.45820996 0.0079458375 ;
	setAttr ".uvtk[63]" -type "float2" -0.45820996 0.0079458375 ;
createNode polyPlanarProj -n "polyPlanarProj40";
	rename -uid "882981B3-45B5-1C6F-7D1F-FF8C1BB9499E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[11]" "f[19]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404046630859377 -0.073376860618591305 0.0024876190721988679 ;
	setAttr ".ro" -type "double3" 90 89.999999999999986 0 ;
	setAttr ".ps" -type "double2" 0.71613585188269158 0.71613585188269158 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV67";
	rename -uid "E7FEA0AB-44D6-67F1-D503-D8A29AE99192";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" 0.0088426564 -0.61014217 ;
	setAttr ".uvtk[15]" -type "float2" 0.0088426564 -0.61014217 ;
	setAttr ".uvtk[16]" -type "float2" 0.0088426564 -0.61014217 ;
	setAttr ".uvtk[17]" -type "float2" 0.0088426564 -0.61014217 ;
	setAttr ".uvtk[19]" -type "float2" 0.0088426415 -0.61014217 ;
	setAttr ".uvtk[20]" -type "float2" 0.0088426415 -0.61014217 ;
	setAttr ".uvtk[30]" -type "float2" 0.0088426396 -0.61014217 ;
	setAttr ".uvtk[31]" -type "float2" 0.0088426396 -0.61014217 ;
createNode polyPlanarProj -n "polyPlanarProj41";
	rename -uid "4F1007BF-4D0E-A748-5B3F-E682558D509F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.087665966216345273 0 0 0 0 1.1899575893517367 0 0
		 0 0 0.71613576992745664 0 -344.04044067381977 66.991312728262727 0.24876873309679515 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4404046630859377 0.92640830993652346 -0.3140304183959961 ;
	setAttr ".ro" -type "double3" -90 90 0 ;
	setAttr ".ps" -type "double2" 0.087666400961203414 0.087666400961203414 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV68";
	rename -uid "BB4964E1-450B-778B-8778-6A908313485C";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.1127618 0.099489033 ;
	setAttr ".uvtk[3]" -type "float2" 0.1127618 1.0123001 ;
	setAttr ".uvtk[4]" -type "float2" -0.75250036 1.0123001 ;
	setAttr ".uvtk[5]" -type "float2" -0.75250036 0.099489033 ;
	setAttr ".uvtk[8]" -type "float2" -0.030259132 0.00075149164 ;
	setAttr ".uvtk[9]" -type "float2" -0.036483645 0.00075149164 ;
	setAttr ".uvtk[58]" -type "float2" -0.036483645 -0.0097789317 ;
	setAttr ".uvtk[59]" -type "float2" -0.030259132 -0.0097789317 ;
createNode polyMapSewMove -n "polyMapSewMove25";
	rename -uid "86F6FE1A-4925-88BB-A85C-2D8DAAD82E7A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyTweakUV -n "polyTweakUV69";
	rename -uid "44BC0292-437A-7F75-9A8B-CEB3BD16B9C0";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[11]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[27]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[40]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[41]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[42]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[43]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[44]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[45]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[46]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[47]" -type "float2" -0.080622911 -0.010023789 ;
	setAttr ".uvtk[48]" -type "float2" -0.080622911 -0.010023789 ;
createNode polyMapSewMove -n "polyMapSewMove26";
	rename -uid "A7EFDF18-45F5-2288-CB89-67BE6EA59D0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[15]";
createNode polyTweakUV -n "polyTweakUV70";
	rename -uid "84258590-4A94-764D-2B73-279C15D6E953";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.3264305 -0.13379389 ;
	setAttr ".uvtk[1]" -type "float2" 0.33152205 -0.13435817 ;
	setAttr ".uvtk[48]" -type "float2" 0.33830649 -0.073141821 ;
	setAttr ".uvtk[49]" -type "float2" 0.33321506 -0.072577603 ;
createNode polyMapSewMove -n "polyMapSewMove27";
	rename -uid "7AA6EE96-4CFF-8042-BA88-28A321E00ED3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyTweakUV -n "polyTweakUV71";
	rename -uid "B2465B35-482B-0ECC-3F57-85A4740E9EA1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" 0.65327752 0.083665036 ;
	setAttr ".uvtk[14]" -type "float2" 0.65327752 0.048934385 ;
	setAttr ".uvtk[15]" -type "float2" 0.68619907 0.048934385 ;
	setAttr ".uvtk[16]" -type "float2" 0.68619907 0.083665036 ;
	setAttr ".uvtk[18]" -type "float2" 0.90519035 0.048934385 ;
	setAttr ".uvtk[19]" -type "float2" 0.90519035 0.083665036 ;
	setAttr ".uvtk[29]" -type "float2" 0.93698758 0.048934385 ;
	setAttr ".uvtk[30]" -type "float2" 0.93698758 0.083665036 ;
createNode polyMapSewMove -n "polyMapSewMove28";
	rename -uid "703146F9-490F-C050-FB1F-B88A3273DF50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[21]";
createNode polyTweakUV -n "polyTweakUV72";
	rename -uid "3321D4FE-4FD6-2056-6F01-6D903A6B8EBC";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" 1.6641718 -0.0079449192 ;
	setAttr ".uvtk[7]" -type "float2" 1.6641718 -0.0079449192 ;
	setAttr ".uvtk[25]" -type "float2" 1.6641718 -0.0079449788 ;
	setAttr ".uvtk[28]" -type "float2" 1.6641718 -0.0079449788 ;
	setAttr ".uvtk[52]" -type "float2" 1.6641718 -0.0079448894 ;
	setAttr ".uvtk[53]" -type "float2" 1.6641718 -0.0079448894 ;
	setAttr ".uvtk[54]" -type "float2" 1.6641718 -0.0079448838 ;
	setAttr ".uvtk[55]" -type "float2" 1.6641718 -0.0079448838 ;
createNode polyMapSewMove -n "polyMapSewMove29";
	rename -uid "FE801AA8-41EC-6265-A24E-C1AB843B95BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[35]";
createNode polyTweakUV -n "polyTweakUV73";
	rename -uid "553C7AFC-4475-D580-90B7-A9BF8E20BBE9";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 1.4401944 -0.011799276 ;
	setAttr ".uvtk[3]" -type "float2" 1.4401944 -0.012295425 ;
	setAttr ".uvtk[4]" -type "float2" 1.4406645 -0.012295425 ;
	setAttr ".uvtk[5]" -type "float2" 1.4406645 -0.011799276 ;
createNode polyMapSewMove -n "polyMapSewMove30";
	rename -uid "04BD4024-4257-0F4D-0135-4EA05040AC0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[7]";
createNode polyTweakUV -n "polyTweakUV74";
	rename -uid "144DA6FD-4809-A13F-1BCD-0EABD41CCC94";
	setAttr ".uopa" yes;
	setAttr -s 52 ".uvtk[0:51]" -type "float2" -0.50003314 -0.043702438
		 -0.53715599 -0.016103188 -0.86899441 -0.50839984 -0.86899108 -0.46244475 -0.91255182
		 -0.4624432 -0.91255486 -0.5083968 -0.95850605 -0.4624441 -0.91255158 -0.46244398
		 -0.4912014 -0.016103188 -0.8689912 -0.40526637 -0.91255182 -0.4052664 -0.11580492
		 -0.46244362 -0.11580492 -0.4052659 -0.9125526 0.10759528 -0.91255248 0.061640758
		 -0.86899191 0.061640855 -0.86899179 0.10759531 -0.82186764 -1.69441342 -0.57922894
		 0.061641041 -0.57922894 0.10759562 -0.82186764 -1.12900066 -0.88863456 -1.12900066
		 -0.5723092 -1.83460903 -0.2933113 -1.16101682 -0.88863456 -1.69441342 -0.15936556
		 -0.4052659 -0.95850617 -0.40526649 -0.53715587 0.061641131 -0.53715599 0.10759571
		 -0.15936556 -0.46244362 -0.1593655 0.061641183 -0.1593655 -0.016103188 -0.11580492
		 -0.016103188 -0.11580492 0.061641183 -0.4491283 0.061641183 -0.4491283 -0.016103188
		 -0.4912014 0.061641183 -0.91255236 -0.016103664 -0.86899167 -0.016103664 -0.91255248
		 0.061640691 -0.57922882 -0.016103217 -0.53715611 0.061641138 -0.83186817 -0.49004325
		 -1.63224244 -1.66191065 -1.066830039 -1.66191065 -1.066830039 -1.57224035 -1.63224244
		 -1.57224035 -0.3571243 -1.13460231 -0.63612205 -1.80819392 -0.95850676 -0.016103828
		 -0.9125526 0.061640676 -0.95850688 0.061640572;
createNode polyPlanarProj -n "polyPlanarProj42";
	rename -uid "F5B057E4-4592-734F-1D61-F38E9735472F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.7622651490752457 0 0 0 0 0.070703864198410099 0 0
		 0 0 0.6250279860527137 0 -473.36116787318667 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4.7336117553710935 0.035351932048797607 0 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2.7622651490752452 2.7622651490752452 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj43";
	rename -uid "13E611EB-4E8A-8E47-E139-3784C147EF2E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 2.7622651490752457 0 0 0 0 0.070703864198410099 0 0
		 0 0 0.6250279860527137 0 -473.36116787318667 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4.7336114501953128 -0.035351932048797607 0 ;
	setAttr ".ro" -type "double3" 90 0 0 ;
	setAttr ".ps" -type "double2" 2.76226493833114 2.76226493833114 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj44";
	rename -uid "FDA0F818-44AE-CCA1-9C04-89B2DEF5EBE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 2.7622651490752457 0 0 0 0 0.070703864198410099 0 0
		 0 0 0.6250279860527137 0 -473.36116787318667 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.3524786376953126 0 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 0.6250279860527137 0.6250279860527137 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj45";
	rename -uid "5140F45F-4C4A-601B-B542-169B43DA8475";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 2.7622651490752457 0 0 0 0 0.070703864198410099 0 0
		 0 0 0.6250279860527137 0 -473.36116787318667 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -6.1147436523437504 0 0 ;
	setAttr ".ro" -type "double3" 0 -90 0 ;
	setAttr ".ps" -type "double2" 0.6250279860527137 0.6250279860527137 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj46";
	rename -uid "091ED927-4C50-7A31-12FF-49B45B238EC5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 2.7622651490752457 0 0 0 0 0.070703864198410099 0 0
		 0 0 0.6250279860527137 0 -473.36116787318667 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4.7336108398437498 0 0.31251399993896484 ;
	setAttr ".ps" -type "double2" 2.7622653598193523 2.7622653598193523 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj47";
	rename -uid "B8640579-4BDE-2511-2F1F-5EB7117CF92B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 2.7622651490752457 0 0 0 0 0.070703864198410099 0 0
		 0 0 0.6250279860527137 0 -473.36116787318667 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -4.7336105346679691 0 -0.31251399993896484 ;
	setAttr ".ro" -type "double3" 0 180 0 ;
	setAttr ".ps" -type "double2" 2.7622657813075651 2.7622657813075651 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV75";
	rename -uid "8B505960-48E6-3084-D5A9-BFB957B50322";
	setAttr ".uopa" yes;
	setAttr -s 21 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" -2.9802322e-08 0.21293163 ;
	setAttr ".uvtk[5]" -type "float2" -5.9604645e-08 0.21293163 ;
	setAttr ".uvtk[6]" -type "float2" -5.9604645e-08 0.21293163 ;
	setAttr ".uvtk[7]" -type "float2" -2.9802322e-08 0.21293163 ;
	setAttr ".uvtk[8]" -type "float2" 0 0.31327033 ;
	setAttr ".uvtk[9]" -type "float2" 0 0.31327033 ;
	setAttr ".uvtk[10]" -type "float2" 0 -0.34091181 ;
	setAttr ".uvtk[11]" -type "float2" 0 -0.34091181 ;
	setAttr ".uvtk[12]" -type "float2" 0 -0.20270431 ;
	setAttr ".uvtk[13]" -type "float2" 0 -0.20270431 ;
	setAttr ".uvtk[14]" -type "float2" 0 -0.56818634 ;
	setAttr ".uvtk[15]" -type "float2" 0 -0.56818634 ;
	setAttr ".uvtk[16]" -type "float2" 0 -0.56818634 ;
	setAttr ".uvtk[17]" -type "float2" 0 -0.56818634 ;
	setAttr ".uvtk[18]" -type "float2" 0 0.31327033 ;
	setAttr ".uvtk[19]" -type "float2" 0 0.31327033 ;
	setAttr ".uvtk[20]" -type "float2" 0 -0.34091181 ;
	setAttr ".uvtk[21]" -type "float2" 0 -0.34091181 ;
	setAttr ".uvtk[22]" -type "float2" 0 -0.2027043 ;
	setAttr ".uvtk[23]" -type "float2" 0 -0.2027043 ;
createNode polyMapSewMove -n "polyMapSewMove31";
	rename -uid "B9BE7A3D-4AF7-6D3C-E890-9AB97B842004";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyTweakUV -n "polyTweakUV76";
	rename -uid "29EDB975-4A74-5D81-57D0-48A9773C52DE";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[12]" -type "float2" 2.3841858e-07 0.68077934 ;
	setAttr ".uvtk[13]" -type "float2" 1.1920929e-07 0.68077934 ;
	setAttr ".uvtk[14]" -type "float2" 1.1920929e-07 0.68077928 ;
	setAttr ".uvtk[15]" -type "float2" 2.3841858e-07 0.68077928 ;
createNode polyMapSewMove -n "polyMapSewMove32";
	rename -uid "2AAEE884-4E20-74D9-9037-5694D46D4552";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode polyTweakUV -n "polyTweakUV77";
	rename -uid "CA0107F4-4FBD-00A4-67F6-31B3BF1EDBAD";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" 0.88727915 0.57076132 ;
	setAttr ".uvtk[11]" -type "float2" 0.11352491 0.57431543 ;
	setAttr ".uvtk[18]" -type "float2" 0.11312294 0.48678759 ;
	setAttr ".uvtk[19]" -type "float2" 0.88687712 0.48323342 ;
createNode polyMapSewMove -n "polyMapSewMove33";
	rename -uid "2AA38A09-47E8-1BFC-D8A0-83A350A673C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[6]";
createNode polyTweakUV -n "polyTweakUV78";
	rename -uid "82EAAD87-4B42-6893-7D58-F6AE7A40FB7A";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" -0.11352494 0.71252298 ;
	setAttr ".uvtk[9]" -type "float2" -0.88727915 0.70896882 ;
	setAttr ".uvtk[16]" -type "float2" -0.88687712 0.62144089 ;
	setAttr ".uvtk[17]" -type "float2" -0.11312288 0.62499505 ;
createNode polyMapSewMove -n "polyMapSewMove34";
	rename -uid "F35A3C18-4AC9-DA8F-3AC8-0984540154D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[7]";
createNode polyTweakUV -n "polyTweakUV79";
	rename -uid "F19841C7-4AA6-AED7-88E3-62B5ACF6BB1B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" -2.3841858e-07 -0.013342261
		 -3.5762787e-07 -0.013342261 -3.5762787e-07 -0.013342261 -2.3841858e-07 -0.013342261;
createNode polyMapSewMove -n "polyMapSewMove35";
	rename -uid "6DD34CF5-4964-2D7D-F7F3-EEA3801A495A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
createNode polyTweakUV -n "polyTweakUV80";
	rename -uid "B1714D45-4C73-6A28-3676-EC906BF6E366";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.040939748 -0.41452295
		 0.040939748 -0.41452295 0.040939748 -0.41242713 -0.040939748 -0.41242713 -0.040939748
		 -0.43514597 0.040939767 -0.43514597 0.040939748 -0.43305016 -0.040939748 -0.43305016
		 0.043035556 -0.45367312 0.043035574 -0.43514597 -0.043035567 -0.43514597 -0.043035626
		 -0.45367306 -0.040939748 -0.45367306 0.04093973 -0.45367312;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "7B17C497-4865-56ED-9CE4-609F8DC7E0BB";
	setAttr ".dc" -type "componentList" 1 "e[32:35]";
createNode polyDuplicateEdge -n "polyDuplicateEdge1";
	rename -uid "5D0CBDE5-4121-4D19-4BE9-AE8637E6E0DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32:35]";
	setAttr ".of" 0.06335720419883728;
createNode polySplit -n "polySplit14";
	rename -uid "8E74288B-4AD4-24C4-6438-93BE6F15E384";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483635 -2147483628 -2147483625 -2147483634 -2147483635;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak29";
	rename -uid "7EB8D89B-4290-118E-B5C6-9EB5669E73A7";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 5.5651636 0 ;
	setAttr ".tk[13]" -type "float3" 0 5.5651636 0 ;
	setAttr ".tk[14]" -type "float3" 0 5.5651636 0 ;
	setAttr ".tk[15]" -type "float3" 0 5.5651636 0 ;
createNode polySplit -n "polySplit13";
	rename -uid "6A2293BD-4BDD-7569-7CEB-8DADF760469C";
	setAttr -s 5 ".e[0:4]"  0.1 0.89999998 0.89999998 0.1 0.1;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483635 -2147483634 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "9171C6DC-43BF-1FE7-A739-1BBACEB98541";
	setAttr -s 5 ".e[0:4]"  0.89999998 0.1 0.1 0.89999998 0.89999998;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483640 -2147483639 -2147483643 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube7";
	rename -uid "A0695729-411D-C79C-92F6-4E8DF5A87C27";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "382198B7-47B3-7C22-70BD-FDBA8281ECDB";
	setAttr ".dc" -type "componentList" 1 "vtx[0:27]";
createNode polySplit -n "polySplit15";
	rename -uid "470AD93C-4DAA-4AFD-54F4-0AA03C8B87DE";
	setAttr -s 13 ".e[0:12]"  0.1 0.89999998 0.89999998 0.1 0.89999998
		 0.1 0.1 0.1 0.89999998 0.1 0.1 0.1 0.1;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483621 -2147483614 -2147483610 -2147483629 -2147483647 
		-2147483646 -2147483631 -2147483606 -2147483618 -2147483623 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "C45E8DC7-402E-FDC3-7BC8-4DAF29CD8245";
	setAttr -s 13 ".e[0:12]"  0.1 0.89999998 0.1 0.1 0.89999998 0.89999998
		 0.89999998 0.89999998 0.1 0.89999998 0.89999998 0.89999998 0.1;
	setAttr -s 13 ".d[0:12]"  -2147483629 -2147483601 -2147483614 -2147483621 -2147483604 -2147483593 
		-2147483594 -2147483595 -2147483606 -2147483597 -2147483598 -2147483599 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "3B53F319-4A32-9007-A381-9DA6D19C9B21";
	setAttr ".ics" -type "componentList" 2 "f[34]" "f[36]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2610042 0.57092428 0.34278104 ;
	setAttr ".rs" 40715;
	setAttr ".lt" -type "double3" 0 0 -0.65301480533983125 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9804013934641957 0.19375009202803689 0.34278101126445798 ;
	setAttr ".cbx" -type "double3" -0.54160699686090463 0.94809846544112275 0.34278101126445798 ;
createNode polyTweak -n "polyTweak30";
	rename -uid "1B5BE5A0-4A72-7CE6-B435-0EAB0C3F4478";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[24]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[26]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.90256381 0 0 ;
	setAttr ".tk[36]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[37]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[39]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[40]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.90256381 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.90256381 0 0 ;
createNode polySplit -n "polySplit17";
	rename -uid "F1DC6DF8-4302-89CF-58F4-718C6526C905";
	setAttr -s 17 ".e[0:16]"  0.2 0.2 0.80000001 0.2 0.2 0.80000001 0.80000001
		 0.2 0.80000001 0.80000001 0.80000001 0.2 0.80000001 0.2 0.80000001 0.2 0.2;
	setAttr -s 17 ".d[0:16]"  -2147483642 -2147483632 -2147483605 -2147483613 -2147483624 -2147483638 
		-2147483581 -2147483564 -2147483637 -2147483622 -2147483616 -2147483608 -2147483630 -2147483641 -2147483558 -2147483587 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "5F2D4F0C-4E91-24C5-9D1E-82BE08381EB3";
	setAttr -s 17 ".e[0:16]"  0.2 0.80000001 0.80000001 0.2 0.80000001
		 0.80000001 0.80000001 0.2 0.80000001 0.2 0.80000001 0.2 0.2 0.2 0.80000001 0.2 0.2;
	setAttr -s 17 ".d[0:16]"  -2147483638 -2147483536 -2147483537 -2147483605 -2147483539 -2147483540 
		-2147483525 -2147483558 -2147483527 -2147483630 -2147483529 -2147483616 -2147483622 -2147483637 -2147483533 -2147483581 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "B53F82FB-4275-FD58-0214-D2B56DD5C85A";
	setAttr ".ics" -type "componentList" 4 "f[3]" "f[33]" "f[59]" "f[61]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2700881 0.048098464 0 ;
	setAttr ".rs" 58450;
	setAttr ".ls" -type "double3" 0.53447214777556196 0.67953718193656099 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1784767162102652 0.048098465441122826 -0.34278101126445798 ;
	setAttr ".cbx" -type "double3" -0.36169944680884941 0.048098465441122826 0.34278101126445798 ;
createNode polyTweak -n "polyTweak31";
	rename -uid "C7B0A0ED-47B0-520F-FC97-8F94C653E15B";
	setAttr ".uopa" yes;
	setAttr -s 35 ".tk";
	setAttr ".tk[56]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[57]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[58]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[59]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[60]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[61]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[62]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[63]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[64]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[65]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[66]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[67]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[68]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[69]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[70]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[71]" -type "float3" 0 0 -2.5285482 ;
	setAttr ".tk[72]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[73]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[74]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[75]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[76]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[77]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[78]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[79]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[80]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[81]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[82]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[83]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[84]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[85]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[86]" -type "float3" 0 0 4.4762301 ;
	setAttr ".tk[87]" -type "float3" 0 0 4.4762301 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "2BACC9DB-47E8-B3E8-A61F-62BCB3D37421";
	setAttr ".ics" -type "componentList" 4 "f[3]" "f[33]" "f[59]" "f[61]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2679737 0.048098464 -0.0011272477 ;
	setAttr ".rs" 44843;
	setAttr ".lt" -type "double3" 0 -3.552713678800501e-17 0.1514698474189789 ;
	setAttr ".ls" -type "double3" 0.74437554098801484 0.77776022852008697 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1323720010569618 0.048098465441122826 -0.32028817802583331 ;
	setAttr ".cbx" -type "double3" -0.40357547536738808 0.048098465441122826 0.31803368258530634 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "4E4EE929-45A9-6564-F96A-5FB4B1C361A8";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[27]" "f[44]" "f[67:69]" "f[75:77]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2700881 1.0480984 0 ;
	setAttr ".rs" 63285;
	setAttr ".lt" -type "double3" -2.8421709430404008e-16 0 0.011839539235805319 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1784767162102652 1.0480984654411227 -0.34278101126445798 ;
	setAttr ".cbx" -type "double3" -0.36169944680884941 1.0480984654411227 0.34278101126445798 ;
createNode polyTweak -n "polyTweak32";
	rename -uid "44B067F5-4657-0B67-43DD-FB86E3487543";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[104]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[105]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[106]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[107]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[108]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[109]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[110]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[111]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[112]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[113]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[114]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[115]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[116]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[117]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[118]" -type "float3" 0 2.1004751 0 ;
	setAttr ".tk[119]" -type "float3" 0 2.1004751 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "FEE8145F-416A-3CAB-9EA8-E4A6AFBFCF76";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[27]" "f[44]" "f[67:69]" "f[75:77]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2700881 1.0521845 0.016775496 ;
	setAttr ".rs" 64758;
	setAttr ".lt" -type "double3" 8.1311633456000857e-17 6.4879418213602749e-17 0.025793588855019044 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2203982778600055 1.0521843876823338 -0.34182462839230066 ;
	setAttr ".cbx" -type "double3" -0.31977788515910915 1.052184463976279 0.37537562224517268 ;
createNode polyTweak -n "polyTweak33";
	rename -uid "578BBCE9-4AF7-0A56-A7E5-C091DE8D56C8";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[116:131]" -type "float3"  -2.30746722 -0.77535939 4.75443792
		 -1.80432105 -0.77535939 4.75443792 -1.80432105 -0.77535975 3.71475959 -2.30746722
		 -0.77535939 3.71475959 2.30746722 -0.77535939 3.71475959 1.85047019 -0.77535975 3.71475959
		 1.85047019 -0.77535939 4.75443792 2.30746722 -0.77535939 4.75443792 1.85047019 -0.77535939
		 0.13950327 1.85047019 -0.77535975 1.084468007 2.30746722 -0.77535939 1.084468007
		 2.30746722 -0.77535939 0.13950327 -1.80432105 -0.77535975 1.084468007 -1.80432105
		 -0.77535939 0.13950327 -2.30746722 -0.77535939 1.084468007 -2.30746722 -0.77535939
		 0.13950327;
createNode polyTweak -n "polyTweak34";
	rename -uid "59B746A4-4827-9623-8D05-BB95FAB0D122";
	setAttr ".uopa" yes;
	setAttr -s 59 ".tk";
	setAttr ".tk[24]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[25]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[26]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[27]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[28]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[29]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[30]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[31]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[32]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[33]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[34]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[35]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[36]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[37]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[38]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[39]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[40]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[41]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[42]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[43]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[44]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[45]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[46]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[47]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[48]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[49]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[50]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[51]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[52]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[53]" -type "float3" -1.9083549 0 0 ;
	setAttr ".tk[54]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[55]" -type "float3" 1.9061328 0 0 ;
	setAttr ".tk[62]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[63]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[82]" -type "float3" 1.9061321 0 0 ;
	setAttr ".tk[83]" -type "float3" -1.9083544 0 0 ;
	setAttr ".tk[117]" -type "float3" -1.9952614 0 0 ;
	setAttr ".tk[120]" -type "float3" 1.9952614 0 0 ;
	setAttr ".tk[122]" -type "float3" 1.9952614 0 -0.81206006 ;
	setAttr ".tk[124]" -type "float3" 0 0 -0.81206006 ;
	setAttr ".tk[125]" -type "float3" -1.9952614 0 -0.81206006 ;
	setAttr ".tk[127]" -type "float3" 0 0 -0.81206006 ;
	setAttr ".tk[128]" -type "float3" 0 0.38371801 0 ;
	setAttr ".tk[129]" -type "float3" -1.9952614 0.38371801 0 ;
	setAttr ".tk[130]" -type "float3" -1.9952614 0.38371801 0 ;
	setAttr ".tk[131]" -type "float3" 0 0.38371801 0 ;
	setAttr ".tk[132]" -type "float3" 0 0.38371801 0 ;
	setAttr ".tk[133]" -type "float3" 1.9952614 0.38371801 0 ;
	setAttr ".tk[134]" -type "float3" 1.9952614 0.38371801 0 ;
	setAttr ".tk[135]" -type "float3" 0 0.38371801 0 ;
	setAttr ".tk[136]" -type "float3" 1.9952614 0.38371801 -0.81206006 ;
	setAttr ".tk[137]" -type "float3" 1.9952614 0.38371801 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.38371801 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.38371801 -0.81206006 ;
	setAttr ".tk[140]" -type "float3" -1.9952614 0.38371801 0 ;
	setAttr ".tk[141]" -type "float3" -1.9952614 0.38371801 -0.81206006 ;
	setAttr ".tk[142]" -type "float3" 0 0.38371801 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.38371801 -0.81206006 ;
createNode polySplit -n "polySplit19";
	rename -uid "4BD8F56A-4F82-6C2A-4A11-D2BDFB56E0FA";
	setAttr -s 4 ".e[0:3]"  0 0.160796 0.83920401 1;
	setAttr -s 4 ".d[0:3]"  -2147483478 -2147483565 -2147483536 -2147483485;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "E07D3C1F-4F92-1CBB-57DA-4393658A9354";
	setAttr -s 4 ".e[0:3]"  0 0.190933 0.80906701 1;
	setAttr -s 4 ".d[0:3]"  -2147483484 -2147483536 -2147483364 -2147483479;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "E0629869-4A20-AFF9-FBCF-AB91960D4EC0";
	setAttr -s 4 ".e[0:3]"  0 0.16023099 0.83976901 1;
	setAttr -s 4 ".d[0:3]"  -2147483460 -2147483503 -2147483582 -2147483469;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "5DA77A85-42B7-E4CC-E8D0-66829C9B0655";
	setAttr -s 4 ".e[0:3]"  0 0.191973 0.80802703 1;
	setAttr -s 4 ".d[0:3]"  -2147483468 -2147483582 -2147483354 -2147483461;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV81";
	rename -uid "3AD12394-4917-230B-74E6-8096CDC6E503";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[125]" -type "float2" -0.00093303673 -0.0030299148 ;
	setAttr ".uvtk[172]" -type "float2" -0.00024573717 0.0011113647 ;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "9161952D-41B1-310B-7C04-D8A93ABFCECB";
	setAttr ".ics" -type "componentList" 2 "vtx[97]" "vtx[148]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak35";
	rename -uid "2784128B-4EA1-8524-5EB0-6F95399E3D2D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[97]" -type "float3" -0.3988266 0 3.8146973e-06 ;
createNode polyTweakUV -n "polyTweakUV82";
	rename -uid "2358F56E-4843-5A3B-49C1-5F8155C83F0B";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[126]" -type "float2" -0.00091520773 0.0029842528 ;
	setAttr ".uvtk[174]" -type "float2" -0.00027465803 -0.0011517901 ;
createNode polyMergeVert -n "polyMergeVert22";
	rename -uid "6AC0AD76-4DF8-A9B7-C322-C986A2A991C2";
	setAttr ".ics" -type "componentList" 2 "vtx[98]" "vtx[150]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak36";
	rename -uid "D8A2C289-45DC-39F5-8B1A-2F951978DE38";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[98]" -type "float3" -0.3988266 0 0.02009964 ;
createNode polyTweakUV -n "polyTweakUV83";
	rename -uid "E5200AFF-4D4B-AA6F-DEA7-FFA35281E52D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[122]" -type "float2" 0.0013801726 -0.0030728767 ;
	setAttr ".uvtk[172]" -type "float2" 0.000404619 0.0012952981 ;
createNode polyMergeVert -n "polyMergeVert23";
	rename -uid "D7A56501-453E-BDA8-7F66-2FA0A67E8273";
	setAttr ".ics" -type "componentList" 2 "vtx[94]" "vtx[148]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak37";
	rename -uid "FE74C2D0-4DA8-CD0A-C01B-79A99B89C942";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[94]" -type "float3" 0.62936783 0 3.8146973e-06 ;
	setAttr ".tk[148]" -type "float3" 3.8146973e-06 0 0 ;
createNode polyTweakUV -n "polyTweakUV84";
	rename -uid "BAF3737A-4F27-6607-4DFA-1FA46228A082";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[121]" -type "float2" 0.001352848 0.0030368611 ;
	setAttr ".uvtk[172]" -type "float2" 0.00044250261 -0.0012944243 ;
createNode polyMergeVert -n "polyMergeVert24";
	rename -uid "C7929F73-44A9-002F-D29C-31BB40B97DBD";
	setAttr ".ics" -type "componentList" 2 "vtx[93]" "vtx[148]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak38";
	rename -uid "AC563447-4FEC-F9B7-5F26-FCA8BADEEC8E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[93]" -type "float3" 0.62936401 0 0.02009964 ;
	setAttr ".tk[148]" -type "float3" 3.8146973e-06 0 0 ;
createNode polyTweakUV -n "polyTweakUV85";
	rename -uid "FAFAA1A2-4CEE-052B-D9A8-3BA9AB4B875A";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[113]" -type "float2" 0.0013802442 0.0038412081 ;
	setAttr ".uvtk[170]" -type "float2" 0.0003883919 -0.0013900882 ;
createNode polyMergeVert -n "polyMergeVert25";
	rename -uid "31ADD986-4CD5-02B4-476F-D8923432B91F";
	setAttr ".ics" -type "componentList" 2 "vtx[85]" "vtx[146]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak39";
	rename -uid "EFF2397E-4A7B-CF55-9D07-8C9466860D92";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[85]" -type "float3" 0.62936783 0 7.6293945e-06 ;
	setAttr ".tk[146]" -type "float3" 3.8146973e-06 0 0 ;
createNode polyTweakUV -n "polyTweakUV86";
	rename -uid "A17954E3-42B0-878D-9074-1980F89A3D52";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[114]" -type "float2" 0.0013521685 -0.0037627439 ;
	setAttr ".uvtk[169]" -type "float2" 0.00042856642 0.0014461987 ;
createNode polyMergeVert -n "polyMergeVert26";
	rename -uid "1062291F-4624-FFC6-BB64-34B0F65F82D8";
	setAttr ".ics" -type "componentList" 2 "vtx[86]" "vtx[145]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak40";
	rename -uid "2232C653-4A4C-C53D-C4D9-FE8D31CFD41D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[86]" -type "float3" 0.62936783 0 -0.012710571 ;
	setAttr ".tk[145]" -type "float3" 3.8146973e-06 0 0 ;
createNode polyTweakUV -n "polyTweakUV87";
	rename -uid "73339533-4A64-846C-99E7-D2A54666A978";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[116]" -type "float2" -0.00093338988 -0.0038224976 ;
	setAttr ".uvtk[168]" -type "float2" -0.00027009522 0.001611497 ;
createNode polyMergeVert -n "polyMergeVert27";
	rename -uid "BDE73CA9-429A-B5BA-A2F1-7A94C2643B59";
	setAttr ".ics" -type "componentList" 2 "vtx[88]" "vtx[144]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak41";
	rename -uid "6CAC82C7-4E32-DEC2-C49C-4382A4EF78FF";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[88]" -type "float3" -0.3988266 0 -0.012710571 ;
createNode polyTweakUV -n "polyTweakUV88";
	rename -uid "20B77967-462E-2631-0992-6A81A64B02E7";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[117]" -type "float2" -0.00091592106 0.0036792115 ;
	setAttr ".uvtk[168]" -type "float2" -0.00029592577 -0.0016152005 ;
createNode polyMergeVert -n "polyMergeVert28";
	rename -uid "F2AEAC3E-4A31-8805-318A-E78662E3FDD5";
	setAttr ".ics" -type "componentList" 2 "vtx[89]" "vtx[144]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak42";
	rename -uid "06376887-42D7-C84E-CADD-639EFCF3ABF6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[89]" -type "float3" -0.3988266 0 5.7220459e-06 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "0AC529F7-41CA-092C-A500-4591F4321FAE";
	setAttr ".dc" -type "componentList" 4 "e[122]" "e[124]" "e[153]" "e[155]";
createNode polyTweakUV -n "polyTweakUV89";
	rename -uid "63BECDD1-4D0C-9C61-E365-01A8E94DE7D1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[81]" -type "float2" 0.001623734 0.0072295135 ;
	setAttr ".uvtk[117]" -type "float2" 0.0020239051 0.00014106504 ;
createNode polyMergeVert -n "polyMergeVert29";
	rename -uid "FF60C13E-479D-956D-B0C1-9A8494F02196";
	setAttr ".ics" -type "componentList" 2 "vtx[63]" "vtx[89]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak43";
	rename -uid "1B1A5664-44AF-A85E-8414-E786DAA2026B";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[63]" -type "float3" 0 0 3.609787 ;
createNode polyTweakUV -n "polyTweakUV90";
	rename -uid "A0E15B02-4DA5-8FC4-0635-A282A1838D71";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[110]" -type "float2" 0.0016900444 -0.0065375976 ;
	setAttr ".uvtk[124]" -type "float2" 0.002057204 0.00062039803 ;
createNode polyMergeVert -n "polyMergeVert30";
	rename -uid "F0515331-4067-D9DD-6E6A-69BB672D2654";
	setAttr ".ics" -type "componentList" 2 "vtx[82]" "vtx[96]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak44";
	rename -uid "ED50B6BD-4193-8988-902A-4683D13A338B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[82]" -type "float3" 0 0 -3.2809277 ;
createNode polyTweakUV -n "polyTweakUV91";
	rename -uid "2484C01A-40B9-A671-B3F2-27BE38282BDD";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[111]" -type "float2" -0.0015570467 -0.0059376303 ;
	setAttr ".uvtk[121]" -type "float2" -0.002257837 0.00059529452 ;
createNode polyMergeVert -n "polyMergeVert31";
	rename -uid "B5AB4039-4FB4-58D7-59FD-8A9EAA533470";
	setAttr ".ics" -type "componentList" 2 "vtx[83]" "vtx[93]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak45";
	rename -uid "9BE866B4-4978-C91A-DBCD-168A929CA75B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[83]" -type "float3" 7.6293945e-06 0 -3.2809277 ;
	setAttr ".tk[93]" -type "float3" 3.8146973e-06 0 0 ;
createNode polyTweakUV -n "polyTweakUV92";
	rename -uid "77E8DFBD-4B1F-78CB-E2B4-9E930C01AC0D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[80]" -type "float2" -0.0016387904 0.0068501616 ;
	setAttr ".uvtk[113]" -type "float2" -0.002303123 5.0999042e-05 ;
createNode polyMergeVert -n "polyMergeVert32";
	rename -uid "07A77934-441A-7E82-D9CA-41B3C0AE289E";
	setAttr ".ics" -type "componentList" 2 "vtx[62]" "vtx[85]";
	setAttr ".ix" -type "matrix" 1.8167772694014157 0 0 0 0 1 0 0 0 0 0.68556202252891596 0
		 -127.00880815095573 54.809846544112283 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak46";
	rename -uid "D0A37958-45CD-934C-F34C-1280849CA40E";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[62]" -type "float3" 7.6293945e-06 0 3.6097889 ;
	setAttr ".tk[85]" -type "float3" 3.8146973e-06 0 0 ;
createNode polyTorus -n "polyTorus1";
	rename -uid "71840D2E-4E18-B58B-FE18-D895464B69D7";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 1;
	setAttr ".sr" 0.5;
	setAttr ".sa" 5;
	setAttr ".sh" 5;
createNode polyTweak -n "polyTweak49";
	rename -uid "6D8B8C39-4AB1-AD9B-8F4F-B68945615365";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[0]" -type "float3" -3.5527137e-15 -28.519928 0 ;
	setAttr ".tk[1]" -type "float3" 0 -28.519928 0 ;
	setAttr ".tk[2]" -type "float3" 0 -28.519928 0 ;
	setAttr ".tk[3]" -type "float3" -3.5527137e-15 -28.519928 0 ;
	setAttr ".tk[4]" -type "float3" 0 -28.519928 0 ;
	setAttr ".tk[20]" -type "float3" -1.0658141e-14 18.522385 0 ;
	setAttr ".tk[21]" -type "float3" 0 18.522385 0 ;
	setAttr ".tk[22]" -type "float3" 0 18.522385 0 ;
	setAttr ".tk[23]" -type "float3" -1.0658141e-14 18.522385 0 ;
	setAttr ".tk[24]" -type "float3" 0 18.522385 0 ;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "73EFB36C-42DE-FABA-F75F-18B203187436";
	setAttr ".dc" -type "componentList" 1 "e[20:24]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "F01FC210-4E2F-B059-39E5-67974A79A77D";
	setAttr ".dc" -type "componentList" 2 "vtx[0:16]" "vtx[18:24]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "E68C5801-43E0-4301-6FCB-639478B9C8A9";
	setAttr ".dc" -type "componentList" 1 "f[15:19]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "494F1C67-4295-0C61-3F72-3F8AE0E491B3";
	setAttr ".ics" -type "componentList" 1 "e[0:4]";
createNode sweepMeshCreator -n "sweepMeshCreator1";
	rename -uid "F7EBED5F-4BE5-CFB9-2371-8B830C2A5C1B";
	setAttr ".profilePolySides" 3;
	setAttr ".profileRectWidth" 2;
	setAttr ".profileRectHeight" 2;
	setAttr ".profileRectCornerRadius" 0.4;
	setAttr ".profileWaveAmplitude" 0.25;
	setAttr ".scaleProfileX" 0.004999999888241291;
	setAttr ".rotateProfile" 234.54545459625402;
	setAttr ".twist" -0.080808080732822418;
	setAttr -s 2 ".taperCurve[0:1]"  0 1 1 1 1 1;
	setAttr ".interpolationPrecision" 97.97979736328125;
	setAttr ".interpolationDistance" 3;
	setAttr -s 4 ".inCurveArray";
	setAttr -s 3 ".outMeshArray";
createNode groupParts -n "groupParts5";
	rename -uid "6F725B70-41D7-2A29-CD2A-D38EBAF2D16F";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 2 "f[11]" "f[18]";
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "D48EA275-4FD2-DB9D-719A-76BB500AB536";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1 0 -0 0 0 1 0 0 0 0 1 0 -5.6843418860808015e-14 0.44931048128128737 0 1;
	setAttr ".s" -type "double3" 0.42993095397949221 0.42993095397949221 0.42993095397949221 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak50";
	rename -uid "B3B8D65D-4F7A-2A7F-92C4-089E03DD8C26";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 4.1835952 0 ;
	setAttr ".tk[1]" -type "float3" 0 4.1835952 0 ;
	setAttr ".tk[2]" -type "float3" 0 4.1835952 0 ;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "6B29B0EF-4548-3855-2CE8-C6B72EB5AFFC";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 0.39764855180187841 -6.1629758220391547e-33 -0.91753780807652219 0
		 0 1 0 0 0.91753780807652219 0 0.3976485518018783 0 62.943898193282052 0.44931048128123052 102.26249822002907 1;
	setAttr ".s" -type "double3" 0.41589828491210934 0.41589828491210934 0.41589828491210934 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "FD1B38C1-4F2C-2DE6-64B5-BE82CB36E7AE";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 0.47161799729221049 0.015797719878168515 0.88166144107403011 0
		 -0.074723783081961023 0.99695918233349479 0.022107577950778168 0 -0.87863122006448457 -0.076307409912672444 0.47136435834756818 0
		 65.591580477463765 -1.035668860777335 -100.18827060788819 1;
	setAttr ".s" -type "double3" 0.42801713368428729 0.42801713368428729 0.42801713368428729 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak51";
	rename -uid "87DAE909-405C-D366-D832-F9877B015FE1";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[12:14]" -type "float3"  0 3.48895717 0 0 3.48895717
		 0 0 3.48895717 0;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "5189BCF6-4E50-1BD3-2569-68B12771C893";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 0.98129847646118384 -2.4651903288156619e-32 0.19249233775649313 0
		 0 1 1.5407439555097887e-33 0 -0.19249233775649313 -3.0814879110195774e-33 0.98129847646118362 0
		 2.217613785561241 0.44931048128128737 -21.278769436647792 1;
	setAttr ".s" -type "double3" 0.22079970040328289 0.22079970040328289 0.22079970040328289 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak52";
	rename -uid "34E9881F-4DDE-97BA-861E-BD8DF25090F2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 2.7015021 0 ;
	setAttr ".tk[1]" -type "float3" 0 2.7015021 0 ;
	setAttr ".tk[2]" -type "float3" 0 2.7015021 0 ;
	setAttr ".tk[10]" -type "float3" 0.12556638 0.62707055 0.44380713 ;
createNode polyTweakUV -n "polyTweakUV93";
	rename -uid "1A2F72B3-49FA-8525-0EB1-EEA15A1FE443";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.017532358 -0.3855232 0.011246143
		 -0.3855232 0.0049599726 -0.3855232 -0.0013262401 -0.3855232 -0.0076124389 -0.3855232
		 -0.013898641 -0.3855232 0.017532358 -0.37923703 0.011246143 -0.37923703 0.0049599726
		 -0.37923703 -0.0013262401 -0.37923703 -0.0076124389 -0.37923703 -0.013898641 -0.37923703
		 0.017532358 -0.37295088 0.011246143 -0.37295088 0.0049599726 -0.37295088 -0.0013262401
		 -0.37295088 -0.0076124389 -0.37295088 -0.013898641 -0.37295088 0.017532358 -0.36666468
		 0.011246143 -0.36666468 0.0049599726 -0.36666468 -0.0013262401 -0.36666468 -0.0076124389
		 -0.36666468 -0.013898641 -0.36666468;
createNode polyUnite -n "polyUnite1";
	rename -uid "575BDA95-41F3-5EB8-F270-598CD3742D13";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "groupId5";
	rename -uid "A5BBFC38-47BA-C361-77C9-73AA47325D9B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "C8FBE2F1-422D-422B-74C2-B9BD16713B9A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:8]";
createNode groupId -n "groupId6";
	rename -uid "99A40F4D-47E7-6A3C-49DB-8C9B934FABA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "C032B9F2-4B94-E4AB-DF2B-7DB981EE54A5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "26347623-4E5B-41B8-8963-CC808F019EE4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId8";
	rename -uid "A3EC9877-418E-8CF8-4310-9C9BC286B7A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "41E071D2-471B-AAFE-6B41-998D83A3F613";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "1D3EBCB8-42C8-7522-C804-3F8F58C09F29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId10";
	rename -uid "176B99AA-463D-623B-27C6-2D8D191B1A5B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "ADBE0477-40B9-EA9E-54A0-F79113775EC4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "464218D2-4383-7B4B-1C29-0A916323ECBB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId12";
	rename -uid "BEFC9D75-4613-D4C4-0A1B-BD8BCB720A8E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "C37F8C77-48E2-E4A1-3469-4EAE393CACE3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "1E7D257A-4901-A592-B4CF-E4B293BEC951";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode groupId -n "groupId14";
	rename -uid "EC0E608B-4116-68BB-F5A6-8D88799D9F08";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "A5052F36-4A7D-343C-FBD7-F0950A323C02";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "F65CA260-4B2A-7539-4D5E-FA81E97C3C55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:60]";
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "B51D5FDF-401F-7CF9-A292-FDB3DEFD33C3";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:60]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 0.44845497131347667 0.44845497131347667 0.44845497131347667 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 47 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 11 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "polyTweakUV28.out" "mattressShape.i";
connectAttr "polyTweakUV28.uvtk[0]" "mattressShape.uvst[0].uvtw";
connectAttr "polyTweakUV3.out" "pCubeShape23.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape23.uvst[0].uvtw";
connectAttr "polyTweakUV8.out" "pCubeShape24.i";
connectAttr "polyTweakUV8.uvtk[0]" "pCubeShape24.uvst[0].uvtw";
connectAttr "polyTweakUV55.out" "pillowShape.i";
connectAttr "polyTweakUV55.uvtk[0]" "pillowShape.uvst[0].uvtw";
connectAttr "groupId4.id" "pCubeShape25.iog.og[3].gid";
connectAttr "groupParts5.og" "pCubeShape25.i";
connectAttr "polyTweakUV59.uvtk[0]" "pCubeShape25.uvst[0].uvtw";
connectAttr "polyCube5.out" "pCubeShape26.i";
connectAttr "polyTweakUV74.out" "ShelfMetal1Shape.i";
connectAttr "polyTweakUV74.uvtk[0]" "ShelfMetal1Shape.uvst[0].uvtw";
connectAttr "polyTweakUV80.out" "ShelfBoardShape.i";
connectAttr "polyTweakUV80.uvtk[0]" "ShelfBoardShape.uvst[0].uvtw";
connectAttr "polyMergeVert32.out" "pCubeShape27.i";
connectAttr "polyTweakUV92.uvtk[0]" "pCubeShape27.uvst[0].uvtw";
connectAttr "groupId13.id" "holeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "holeShape.iog.og[0].gco";
connectAttr "groupParts10.og" "holeShape.i";
connectAttr "polyTweakUV93.uvtk[0]" "holeShape.uvst[0].uvtw";
connectAttr "groupId14.id" "holeShape.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "cableShape1.i";
connectAttr "groupId7.id" "cableShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cableShape1.iog.og[0].gco";
connectAttr "groupId8.id" "cableShape1.ciog.cog[0].cgid";
connectAttr "groupParts9.og" "cableShape2.i";
connectAttr "groupId11.id" "cableShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cableShape2.iog.og[0].gco";
connectAttr "groupId12.id" "cableShape2.ciog.cog[0].cgid";
connectAttr "groupParts8.og" "cableShape3.i";
connectAttr "groupId9.id" "cableShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cableShape3.iog.og[0].gco";
connectAttr "groupId10.id" "cableShape3.ciog.cog[0].cgid";
connectAttr "groupParts6.og" "cableShape4.i";
connectAttr "groupId5.id" "cableShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cableShape4.iog.og[0].gco";
connectAttr "groupId6.id" "cableShape4.ciog.cog[0].cgid";
connectAttr "polyAutoProj7.out" "cable4Shape.i";
connectAttr "groupId15.id" "cable4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cable4Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape1.o" "polyPlanarProj1.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyPlanarProj3.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyPlanarProj4.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyPlanarProj5.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polyPlanarProj6.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj6.mp";
connectAttr "polyPlanarProj6.out" "polyPlanarProj7.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj7.mp";
connectAttr "polyPlanarProj7.out" "polyPlanarProj8.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj8.mp";
connectAttr "polyPlanarProj8.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyPlanarProj9.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj9.mp";
connectAttr "polyPlanarProj9.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj10.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj10.mp";
connectAttr "polyPlanarProj10.out" "polyPlanarProj11.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj11.mp";
connectAttr "polyPlanarProj11.out" "polyPlanarProj12.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj12.mp";
connectAttr "polyPlanarProj12.out" "polyPlanarProj13.ip";
connectAttr "pCubeShape23.wm" "polyPlanarProj13.mp";
connectAttr "polyPlanarProj13.out" "polyTweakUV3.ip";
connectAttr "polySurfaceShape2.o" "polyPlanarProj14.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj14.mp";
connectAttr "polyPlanarProj14.out" "polyPlanarProj15.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj15.mp";
connectAttr "polyPlanarProj15.out" "polyPlanarProj16.ip";
connectAttr "pCubeShape24.wm" "polyPlanarProj16.mp";
connectAttr "polyPlanarProj16.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyTweakUV8.ip";
connectAttr "polyCube2.out" "polyBevel1.ip";
connectAttr "mattressShape.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyPlanarProj17.ip";
connectAttr "mattressShape.wm" "polyPlanarProj17.mp";
connectAttr "polyPlanarProj17.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyPlanarProj18.ip";
connectAttr "mattressShape.wm" "polyPlanarProj18.mp";
connectAttr "polyPlanarProj18.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyPlanarProj19.ip";
connectAttr "mattressShape.wm" "polyPlanarProj19.mp";
connectAttr "polyPlanarProj19.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyPlanarProj20.ip";
connectAttr "mattressShape.wm" "polyPlanarProj20.mp";
connectAttr "polyPlanarProj20.out" "polyPlanarProj21.ip";
connectAttr "mattressShape.wm" "polyPlanarProj21.mp";
connectAttr "polyPlanarProj21.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyPlanarProj22.ip";
connectAttr "mattressShape.wm" "polyPlanarProj22.mp";
connectAttr "polyPlanarProj22.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyPlanarProj23.ip";
connectAttr "mattressShape.wm" "polyPlanarProj23.mp";
connectAttr "polyPlanarProj23.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "polyPlanarProj24.ip";
connectAttr "mattressShape.wm" "polyPlanarProj24.mp";
connectAttr "polyPlanarProj24.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyPlanarProj25.ip";
connectAttr "mattressShape.wm" "polyPlanarProj25.mp";
connectAttr "polyPlanarProj25.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyPlanarProj26.ip";
connectAttr "mattressShape.wm" "polyPlanarProj26.mp";
connectAttr "polyPlanarProj26.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyTweakUV24.ip";
connectAttr "polyTweakUV24.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyTweakUV25.ip";
connectAttr "polyTweakUV25.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV26.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyTweakUV27.ip";
connectAttr "polyTweakUV27.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyTweakUV28.ip";
connectAttr "polyCube3.out" "polyTweakUV29.ip";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "pillowShape.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV29.out" "polyTweak1.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV30.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pillowShape.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV30.out" "polyTweak2.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV31.ip";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "pillowShape.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV31.out" "polyTweak3.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV32.ip";
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "pillowShape.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV32.out" "polyTweak4.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV33.ip";
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "pillowShape.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV33.out" "polyTweak5.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV34.ip";
connectAttr "polyTweak6.out" "polyMergeVert6.ip";
connectAttr "pillowShape.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV34.out" "polyTweak6.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV35.ip";
connectAttr "polyTweak7.out" "polyMergeVert7.ip";
connectAttr "pillowShape.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV35.out" "polyTweak7.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV36.ip";
connectAttr "polyTweak8.out" "polyMergeVert8.ip";
connectAttr "pillowShape.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV36.out" "polyTweak8.ip";
connectAttr "polyMergeVert8.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyTweakUV37.ip";
connectAttr "polyTweak12.out" "polyMergeVert9.ip";
connectAttr "pillowShape.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV37.out" "polyTweak12.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV38.ip";
connectAttr "polyTweak13.out" "polyMergeVert10.ip";
connectAttr "pillowShape.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV38.out" "polyTweak13.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV39.ip";
connectAttr "polyTweak14.out" "polyMergeVert11.ip";
connectAttr "pillowShape.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV39.out" "polyTweak14.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV40.ip";
connectAttr "polyTweak15.out" "polyMergeVert12.ip";
connectAttr "pillowShape.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV40.out" "polyTweak15.ip";
connectAttr "polyMergeVert12.out" "polyTweakUV41.ip";
connectAttr "polyTweak16.out" "polyMergeVert13.ip";
connectAttr "pillowShape.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV41.out" "polyTweak16.ip";
connectAttr "polyMergeVert13.out" "polyTweakUV42.ip";
connectAttr "polyTweak17.out" "polyMergeVert14.ip";
connectAttr "pillowShape.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV42.out" "polyTweak17.ip";
connectAttr "polyMergeVert14.out" "polyTweakUV43.ip";
connectAttr "polyTweak18.out" "polyMergeVert15.ip";
connectAttr "pillowShape.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV43.out" "polyTweak18.ip";
connectAttr "polyMergeVert15.out" "polyTweakUV44.ip";
connectAttr "polyTweak19.out" "polyMergeVert16.ip";
connectAttr "pillowShape.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV44.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMirror1.ip";
connectAttr "pillowShape.wm" "polyMirror1.mp";
connectAttr "polyMergeVert16.out" "polyTweak20.ip";
connectAttr "polyMirror1.out" "polyMirror2.ip";
connectAttr "pillowShape.wm" "polyMirror2.mp";
connectAttr "polyTweak21.out" "polyAutoProj1.ip";
connectAttr "pillowShape.wm" "polyAutoProj1.mp";
connectAttr "polyMirror2.out" "polyTweak21.ip";
connectAttr "polyAutoProj1.out" "polyTweakUV45.ip";
connectAttr "polyTweakUV45.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyTweakUV46.ip";
connectAttr "polyTweakUV46.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyTweakUV47.ip";
connectAttr "polyTweakUV47.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyTweakUV48.ip";
connectAttr "polyTweakUV48.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyTweakUV49.ip";
connectAttr "polyTweakUV49.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyAutoProj2.ip";
connectAttr "pillowShape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV50.ip";
connectAttr "polyTweakUV50.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyTweakUV51.ip";
connectAttr "polyTweakUV51.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyTweakUV52.ip";
connectAttr "polyTweakUV52.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyTweakUV53.ip";
connectAttr "polyTweakUV53.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove24.out" "polyPlanarProj27.ip";
connectAttr "pillowShape.wm" "polyPlanarProj27.mp";
connectAttr "polyPlanarProj27.out" "polyPlanarProj28.ip";
connectAttr "pillowShape.wm" "polyPlanarProj28.mp";
connectAttr "polyPlanarProj28.out" "polyPlanarProj29.ip";
connectAttr "pillowShape.wm" "polyPlanarProj29.mp";
connectAttr "polyPlanarProj29.out" "polyTweakUV54.ip";
connectAttr "polyTweakUV54.out" "polyPlanarProj30.ip";
connectAttr "pillowShape.wm" "polyPlanarProj30.mp";
connectAttr "polyPlanarProj30.out" "polyPlanarProj31.ip";
connectAttr "pillowShape.wm" "polyPlanarProj31.mp";
connectAttr "polyPlanarProj31.out" "polyTweakUV55.ip";
connectAttr "polyCube4.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak22.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak22.ip";
connectAttr "polyExtrudeFace2.out" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "polyTweak23.ip";
connectAttr "polyTweak23.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeFace3.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyTweakUV56.ip";
connectAttr "polyTweak24.out" "polyMergeVert17.ip";
connectAttr "pCubeShape25.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV56.out" "polyTweak24.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV57.ip";
connectAttr "polyTweak25.out" "polyMergeVert18.ip";
connectAttr "pCubeShape25.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV57.out" "polyTweak25.ip";
connectAttr "polyMergeVert18.out" "polyTweakUV58.ip";
connectAttr "polyTweak26.out" "polyMergeVert19.ip";
connectAttr "pCubeShape25.wm" "polyMergeVert19.mp";
connectAttr "polyTweakUV58.out" "polyTweak26.ip";
connectAttr "polyMergeVert19.out" "polyTweakUV59.ip";
connectAttr "polyTweak27.out" "polyMergeVert20.ip";
connectAttr "pCubeShape25.wm" "polyMergeVert20.mp";
connectAttr "polyTweakUV59.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace4.mp";
connectAttr "polyMergeVert20.out" "polyTweak28.ip";
connectAttr "|SimpleShelf|ShelfMetal1|polySurfaceShape3.o" "polyPlanarProj32.ip"
		;
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj32.mp";
connectAttr "polyPlanarProj32.out" "polyPlanarProj33.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj33.mp";
connectAttr "polyPlanarProj33.out" "polyTweakUV60.ip";
connectAttr "polyTweakUV60.out" "polyPlanarProj34.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj34.mp";
connectAttr "polyPlanarProj34.out" "polyTweakUV61.ip";
connectAttr "polyTweakUV61.out" "polyPlanarProj35.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj35.mp";
connectAttr "polyPlanarProj35.out" "polyTweakUV62.ip";
connectAttr "polyTweakUV62.out" "polyPlanarProj36.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj36.mp";
connectAttr "polyPlanarProj36.out" "polyTweakUV63.ip";
connectAttr "polyTweakUV63.out" "polyPlanarProj37.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj37.mp";
connectAttr "polyPlanarProj37.out" "polyTweakUV64.ip";
connectAttr "polyTweakUV64.out" "polyPlanarProj38.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj38.mp";
connectAttr "polyPlanarProj38.out" "polyTweakUV65.ip";
connectAttr "polyTweakUV65.out" "polyPlanarProj39.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj39.mp";
connectAttr "polyPlanarProj39.out" "polyTweakUV66.ip";
connectAttr "polyTweakUV66.out" "polyPlanarProj40.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj40.mp";
connectAttr "polyPlanarProj40.out" "polyTweakUV67.ip";
connectAttr "polyTweakUV67.out" "polyPlanarProj41.ip";
connectAttr "ShelfMetal1Shape.wm" "polyPlanarProj41.mp";
connectAttr "polyPlanarProj41.out" "polyTweakUV68.ip";
connectAttr "polyTweakUV68.out" "polyMapSewMove25.ip";
connectAttr "polyMapSewMove25.out" "polyTweakUV69.ip";
connectAttr "polyTweakUV69.out" "polyMapSewMove26.ip";
connectAttr "polyMapSewMove26.out" "polyTweakUV70.ip";
connectAttr "polyTweakUV70.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyTweakUV71.ip";
connectAttr "polyTweakUV71.out" "polyMapSewMove28.ip";
connectAttr "polyMapSewMove28.out" "polyTweakUV72.ip";
connectAttr "polyTweakUV72.out" "polyMapSewMove29.ip";
connectAttr "polyMapSewMove29.out" "polyTweakUV73.ip";
connectAttr "polyTweakUV73.out" "polyMapSewMove30.ip";
connectAttr "polyMapSewMove30.out" "polyTweakUV74.ip";
connectAttr "polyCube6.out" "polyPlanarProj42.ip";
connectAttr "ShelfBoardShape.wm" "polyPlanarProj42.mp";
connectAttr "polyPlanarProj42.out" "polyPlanarProj43.ip";
connectAttr "ShelfBoardShape.wm" "polyPlanarProj43.mp";
connectAttr "polyPlanarProj43.out" "polyPlanarProj44.ip";
connectAttr "ShelfBoardShape.wm" "polyPlanarProj44.mp";
connectAttr "polyPlanarProj44.out" "polyPlanarProj45.ip";
connectAttr "ShelfBoardShape.wm" "polyPlanarProj45.mp";
connectAttr "polyPlanarProj45.out" "polyPlanarProj46.ip";
connectAttr "ShelfBoardShape.wm" "polyPlanarProj46.mp";
connectAttr "polyPlanarProj46.out" "polyPlanarProj47.ip";
connectAttr "ShelfBoardShape.wm" "polyPlanarProj47.mp";
connectAttr "polyPlanarProj47.out" "polyTweakUV75.ip";
connectAttr "polyTweakUV75.out" "polyMapSewMove31.ip";
connectAttr "polyMapSewMove31.out" "polyTweakUV76.ip";
connectAttr "polyTweakUV76.out" "polyMapSewMove32.ip";
connectAttr "polyMapSewMove32.out" "polyTweakUV77.ip";
connectAttr "polyTweakUV77.out" "polyMapSewMove33.ip";
connectAttr "polyMapSewMove33.out" "polyTweakUV78.ip";
connectAttr "polyTweakUV78.out" "polyMapSewMove34.ip";
connectAttr "polyMapSewMove34.out" "polyTweakUV79.ip";
connectAttr "polyTweakUV79.out" "polyMapSewMove35.ip";
connectAttr "polyMapSewMove35.out" "polyTweakUV80.ip";
connectAttr "polyDuplicateEdge1.out" "deleteComponent5.ig";
connectAttr "polySplit14.out" "polyDuplicateEdge1.ip";
connectAttr "polyTweak29.out" "polySplit14.ip";
connectAttr "polySplit13.out" "polyTweak29.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polyCube7.out" "polySplit12.ip";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape27.wm" "polyExtrudeFace5.mp";
connectAttr "polySplit16.out" "polyTweak30.ip";
connectAttr "polyExtrudeFace5.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape27.wm" "polyExtrudeFace6.mp";
connectAttr "polySplit18.out" "polyTweak31.ip";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape27.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak32.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape27.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak32.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape27.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak33.ip";
connectAttr "polyExtrudeFace9.out" "polyTweak34.ip";
connectAttr "polyTweak34.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polyTweakUV81.ip";
connectAttr "polyTweak35.out" "polyMergeVert21.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert21.mp";
connectAttr "polyTweakUV81.out" "polyTweak35.ip";
connectAttr "polyMergeVert21.out" "polyTweakUV82.ip";
connectAttr "polyTweak36.out" "polyMergeVert22.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert22.mp";
connectAttr "polyTweakUV82.out" "polyTweak36.ip";
connectAttr "polyMergeVert22.out" "polyTweakUV83.ip";
connectAttr "polyTweak37.out" "polyMergeVert23.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert23.mp";
connectAttr "polyTweakUV83.out" "polyTweak37.ip";
connectAttr "polyMergeVert23.out" "polyTweakUV84.ip";
connectAttr "polyTweak38.out" "polyMergeVert24.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert24.mp";
connectAttr "polyTweakUV84.out" "polyTweak38.ip";
connectAttr "polyMergeVert24.out" "polyTweakUV85.ip";
connectAttr "polyTweak39.out" "polyMergeVert25.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert25.mp";
connectAttr "polyTweakUV85.out" "polyTweak39.ip";
connectAttr "polyMergeVert25.out" "polyTweakUV86.ip";
connectAttr "polyTweak40.out" "polyMergeVert26.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert26.mp";
connectAttr "polyTweakUV86.out" "polyTweak40.ip";
connectAttr "polyMergeVert26.out" "polyTweakUV87.ip";
connectAttr "polyTweak41.out" "polyMergeVert27.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert27.mp";
connectAttr "polyTweakUV87.out" "polyTweak41.ip";
connectAttr "polyMergeVert27.out" "polyTweakUV88.ip";
connectAttr "polyTweak42.out" "polyMergeVert28.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert28.mp";
connectAttr "polyTweakUV88.out" "polyTweak42.ip";
connectAttr "polyMergeVert28.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyTweakUV89.ip";
connectAttr "polyTweak43.out" "polyMergeVert29.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert29.mp";
connectAttr "polyTweakUV89.out" "polyTweak43.ip";
connectAttr "polyMergeVert29.out" "polyTweakUV90.ip";
connectAttr "polyTweak44.out" "polyMergeVert30.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert30.mp";
connectAttr "polyTweakUV90.out" "polyTweak44.ip";
connectAttr "polyMergeVert30.out" "polyTweakUV91.ip";
connectAttr "polyTweak45.out" "polyMergeVert31.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert31.mp";
connectAttr "polyTweakUV91.out" "polyTweak45.ip";
connectAttr "polyMergeVert31.out" "polyTweakUV92.ip";
connectAttr "polyTweak46.out" "polyMergeVert32.ip";
connectAttr "pCubeShape27.wm" "polyMergeVert32.mp";
connectAttr "polyTweakUV92.out" "polyTweak46.ip";
connectAttr "polyTorus1.out" "polyTweak49.ip";
connectAttr "polyTweak49.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "polyCloseBorder1.ip";
connectAttr "curveShape1.ws" "sweepMeshCreator1.inCurveArray[0]";
connectAttr "curveShape4.ws" "sweepMeshCreator1.inCurveArray[1]";
connectAttr "curveShape3.ws" "sweepMeshCreator1.inCurveArray[2]";
connectAttr "curveShape2.ws" "sweepMeshCreator1.inCurveArray[3]";
connectAttr "polyExtrudeFace4.out" "groupParts5.ig";
connectAttr "groupId4.id" "groupParts5.gi";
connectAttr "polyTweak50.out" "polyAutoProj3.ip";
connectAttr "cableShape2.wm" "polyAutoProj3.mp";
connectAttr "sweepMeshCreator1.outMeshArray[3]" "polyTweak50.ip";
connectAttr "polySurfaceShape4.o" "polyAutoProj4.ip";
connectAttr "cableShape1.wm" "polyAutoProj4.mp";
connectAttr "polyTweak51.out" "polyAutoProj5.ip";
connectAttr "cableShape3.wm" "polyAutoProj5.mp";
connectAttr "sweepMeshCreator1.outMeshArray[2]" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polyAutoProj6.ip";
connectAttr "cableShape4.wm" "polyAutoProj6.mp";
connectAttr "sweepMeshCreator1.outMeshArray[0]" "polyTweak52.ip";
connectAttr "polyCloseBorder1.out" "polyTweakUV93.ip";
connectAttr "cableShape4.o" "polyUnite1.ip[0]";
connectAttr "cableShape1.o" "polyUnite1.ip[1]";
connectAttr "cableShape3.o" "polyUnite1.ip[2]";
connectAttr "cableShape2.o" "polyUnite1.ip[3]";
connectAttr "holeShape.o" "polyUnite1.ip[4]";
connectAttr "cableShape4.wm" "polyUnite1.im[0]";
connectAttr "cableShape1.wm" "polyUnite1.im[1]";
connectAttr "cableShape3.wm" "polyUnite1.im[2]";
connectAttr "cableShape2.wm" "polyUnite1.im[3]";
connectAttr "holeShape.wm" "polyUnite1.im[4]";
connectAttr "polyAutoProj6.out" "groupParts6.ig";
connectAttr "groupId5.id" "groupParts6.gi";
connectAttr "polyAutoProj4.out" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "polyAutoProj5.out" "groupParts8.ig";
connectAttr "groupId9.id" "groupParts8.gi";
connectAttr "polyAutoProj3.out" "groupParts9.ig";
connectAttr "groupId11.id" "groupParts9.gi";
connectAttr "polyTweakUV93.out" "groupParts10.ig";
connectAttr "groupId13.id" "groupParts10.gi";
connectAttr "polyUnite1.out" "groupParts11.ig";
connectAttr "groupId15.id" "groupParts11.gi";
connectAttr "groupParts11.og" "polyAutoProj7.ip";
connectAttr "cable4Shape.wm" "polyAutoProj7.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "mattressShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pillowShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ShelfBoardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ShelfMetal1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ShelfMetal2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "doorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "doorknobShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "doorframeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lightbulbShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cableShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "holeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "holeShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cable4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":defaultLastHiddenSet.gn" -na;
connectAttr "pCubeShape25.iog.og[3]" ":defaultLastHiddenSet.dsm" -na;
// End of AssetsMashup.ma
