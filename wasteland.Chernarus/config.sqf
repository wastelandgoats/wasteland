//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.
                                                                                                
//Gunstore Weapon List - Gun Store Base List
// Type, Text name, classname, buy cost, sell amount
weaponsArray = [
	// Pistols
	[1, "Glock 17","glock17_EP1",25,10],
    [1, "Sa.61 Skorpion","Sa61_EP1",35,13],
	[1, "M9 Silenced","M9SD",50,25],
    [1, "UZI Silenced","UZI_SD_EP1",85,35],
    [1, "Golden Revolver","revolver_gold_EP1",250,125],
    
    // Shotguns & Rifles
    [2, "M1014","M1014",35,25],
	[2, "Saiga 12K","Saiga12K",50,25],
	[2, "AK-74","AK_74",50,25],
	[2, "AK-107 Kobra","AK_107_kobra",75,30],
    [2, "M16","M16A2",80,35],
    [2, "AKM","AK_47_M",100,45],
    [2, "M4A1 CCO","M4A1_Aim",120,55],
    [2, "AKS Silenced","AKS_74_UN_kobra",120,55],
    [2, "M4A1 CCO SD","M4A1_AIM_SD_camo",150,65],
    [2, "AA-12 Shotgun","AA12_PMC",1000,425],
	[2, "Lee Enfield","LeeEnfield",300,100],
	[2, "AK 74","AKS_74",100,40],
	[2, "AK 74 GL","AK_74_GL_kobra",200,75],
	[2, "FN FAL","FN_FAL",300,125],
	[2, "FN FAL ANPVS4","FN_FAL_ANPVS4",600,250],
	[2, "G36 C SD camo","G36_C_SD_camo",250,125],
	[2, "G36A camo","G36A_camo",200,75],
	[2, "G36C camo","G36C_camo",200,75],
	[2, "G36K camo","G36K_camo",250,100],
	[2, "M4A3 CCO EP1","M4A3_CCO_EP1",350,125],
	[2, "M4A3 RCO GL EP1","M4A3_RCO_GL_EP1",400,150],
	[2, "M14 EP1","M14_EP1",750,330],
	[2, "Sa58P_EP1","Sa58P_EP1",150,50],
	[2, "Sa58V CCO EP1","Sa58V_CCO_EP1",200,75],
	[2, "Sa58V RCO EP1","Sa58V_RCO_EP1",200,75],
	[2, "MK17 CCO","SCAR_H_CQC_CCO",400,150],
	[2, "MK17 CCO SD","SCAR_H_CQC_CCO_SD",450,150],
	[2, "MK17 EGLM RCO","SCAR_H_STD_EGLM_Spect",700,125],
	[2, "MK16 CQC","SCAR_L_CQC",300,100],
	[2, "MK16 CCO SD","SCAR_L_CQC_CCO_SD",350,100], 
	[2, "MK16 EGLM Holo","SCAR_L_CQC_EGLM_Holo",550,125],
	[2, "MK16 CQC Holo","SCAR_L_CQC_Holo",250,75],
	[2, "MK16 EGLM RCO","SCAR_L_STD_EGLM_RCO",650,200],
	[2, "MK16 HOLO","SCAR_L_STD_HOLO",200,75],
	[2, "MK16 Mk4CQT","SCAR_L_STD_Mk4CQT",300,100],
    
    // Sniper rifles
    [3, "Mk12 SPR","M4SPR",350,150],
    [3, "M24","M24",600,300],
    [3, "DMR","DMR",1500,755],
    [3, "M107","m107",2000,1100],
	[3, "M24 des EP1","M24_des_EP1",1100,300],
	[3, "M110 NVG EP1","M110_NVG_EP1",1500,300],
	[3, "MK17 Sniper","SCAR_H_LNG_Sniper",1200,300],
	[3, "MK17 Sniper SD","SCAR_H_LNG_Sniper_SD",700,150],
	[3, "SVD Camo","SVD_des_EP1",1100,300],
	[3, "SVD Camo NV","SVD_NSPU_EP1",1300,300],
    
    // Machineguns
	[4, "RPK","RPK_74",150,75],
    [4, "Mk 48 Mod","Mk_48",350,150],
    [4, "Pecheneg","Pecheneg",450,230],
	[4, "M60A4 EP1","M60A4_EP1",550,150],
	[4, "M240 scoped EP1","m240_scoped_EP1",800,200],
	[4, "M249 EP1","M249_EP1",550,150],
	[4, "M249 m145 EP1","M249_m145_EP1",900,225],
	[4, "MG36 camo","MG36_camo",850,200],
	[4, "Mk 48 DES EP1","Mk_48_DES_EP1",850,300],
    
    // Anti-tank
    [5, "SMAW","SMAW",300,175],
    [5, "Stinger","Stinger",1000,550],
    [5, "Javelin","Javelin",1200,750],
	[5, "M32 EP1","M32_EP1",900,300],
	[5, "M47 Dragon","M47Launcher_EP1",750,250],
	[5, "M79 EP1","M79_EP1",925,250],
	[5, "MAAWS","MAAWS",850,300],
	[5, "Mk13 EP1","Mk13_EP1",650,250]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [    
    ["6Rnd. Revolver Clip","6Rnd_45ACP",5],
	["8Rnd. M1014 Slug","8Rnd_B_Beneli_74Slug",5],
	["8Rnd. M1014 Pellets","8Rnd_B_Beneli_Pellets",10],
	["8Rnd. Saiga 12K Slug","8Rnd_B_Saiga12_74Slug",5],
    ["8Rnd. Saiga 12K Pellets","8Rnd_B_Saiga12_Pellets",10],
    ["10Rnd. SVD Dragunov","10Rnd_762x54_SVD",25],
    ["15Rnd. M9 Silenced","15Rnd_9x19_M9SD",10],
    ["17Rnd. Glock 17","17Rnd_9x19_glock17",10],
    ["10Rnd. M107","10Rnd_127x99_m107",50],
    ["20Rnd. Sa.62","20Rnd_B_765x17_Ball",10],
    ["20Rnd. FN FAL","20Rnd_762x51_FNFAL",25],
    ["20Rnd. Mk17 / M110","20Rnd_762x51_B_SCAR",25],
	["20Rnd. Mk17 SD","20Rnd_762x51_SB_SCAR",25], 
    ["20Rnd. AA-12 Slug","20Rnd_B_AA12_74Slug",30],
    ["20Rnd. AA-12 Pellets","20Rnd_B_AA12_Pellets",50],   
    ["30Rnd. UZI Silenced","30Rnd_9x19_UZI_SD",10],
	["30Rnd. AK","30Rnd_545x39_AK",8],
	["30Rnd. AKM / Sa58","30Rnd_762x39_AK47",15],
	["30Rnd. STANAG","30Rnd_556x45_Stanag",10],
    ["30Rnd. STANAG SD","30Rnd_556x45_StanagSD",25],
    ["100Rnd. STANAG Drum","100Rnd_556x45_BetaCMag",50],
	["100Rnd. MK48 / M60 Belt","100Rnd_762x51_M240",30],
	["100Rnd. Pencheng Belt","100Rnd_762x54_PK",50],
	["200Rnd. M249 Belt","200Rnd_556x45_M249",50],
    ["1 Carl-Gustav Shot","MAAWS_HEAT",200],  
    ["1 Anti-personnel RPG Rocket","OG7",350],
    ["1 Adv. RPG Rocket","PG7VR",200],
    ["1 Basic RPG Rocket","PG7V",100],  
    ["1 Anti-personnel SMAW Rocket","SMAW_HEDP",750],
    ["1 AT SMAW Rocket","SMAW_HEAA",250],
    ["1 Stinger Missile","Stinger",250],
    ["1 Javelin Missile","Javelin",500],
	["30Rnd 545x39 AKSD","30Rnd_545x39_AKSD",30],
	["64Rnd 9x19 Bizon","64Rnd_9x19_Bizon",25],
	["64Rnd 9x19 SD_Bizon","64Rnd_9x19_SD_Bizon",30],
	["30Rnd 556x45 G36","30Rnd_556x45_G36",25],
	["30Rnd 556x45 G36SD","30Rnd_556x45_G36SD",30],
	["30Rnd 9x19 MP5","30Rnd_9x19_MP5",25],
	["30Rnd 9x19 MP5SD","30Rnd_9x19_MP5SD",30],
	["10Rnd 9x39 SP5 VSS","10Rnd_9x39_SP5_VSS",30],
	["20Rnd 9x39 SP5 VSS","20Rnd_9x39_SP5_VSS",40],
	["20Rnd 556x45 Stanag","20Rnd_556x45_Stanag",20],
	["30Rnd 762x39 SA58","30Rnd_762x39_SA58",25],
	["75Rnd 545x39 RPK","75Rnd_545x39_RPK",60],
	["200Rnd 556x45 L110A1","200Rnd_556x45_L110A1",50],
	["5x 22 LR 17 HMR","5x_22_LR_17_HMR",25],
	["20Rnd 762x51 DMR","20Rnd_762x51_DMR",40],
	["5Rnd 127x108 KSVK","5Rnd_127x108_KSVK",30],
	["10Rnd 762x54 SVD","10Rnd_762x54_SVD",40],
	["10x 303","10x_303",30],
	["5Rnd 86x70 L115A1","5Rnd_86x70_L115A1",50],
	["5Rnd 762x51 M24","5Rnd_762x51_M24",35],
	["6Rnd HE M203","6Rnd_HE_M203",100],
	["Dragon","Dragon_EP1",500],
	["IED V1","BAF_ied_v1",1100],
	["IED V2","BAF_ied_v2",1500],
	["IED V3","BAF_ied_v3",1200],
	["IED V4","BAF_ied_v4",1600]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	//["1 Hand Grenade","BAF_L109A1_HE", 50],
    //["1 Land Mine","Mine", 75],
	["GPS","ItemGPS", 100],
	["NV Goggles","NVGoggles",100],
	["Range Finder","Binocular_Vector",350]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\repair.paa",1000,500],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",400,200],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","client\icons\satellite.paa",3000,1500],
    ["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\tent.paa",300,150]  
];

//Name, Price, Vehicle
BuildStoreArray = [
	["Land_Barrel_water", 25, "Land_Barrel_water"],
	["Land_leseni2x", 25, "Land_leseni2x"],
    ["Fort_Crate_wood", 25, "Fort_Crate_wood"],
    ["Land_CamoNet_NATO", 25, "Land_CamoNet_NATO"],
	["Land_stand_small_EP1", 25, "Land_stand_small_EP1"],
	["Base_WarfareBBarrier10xTall", 25, "Base_WarfareBBarrier10xTall"],
	["Base_WarfareBBarrier10x", 25, "Base_WarfareBBarrier10x"],
	["Base_WarfareBBarrier5x", 25, "Base_WarfareBBarrier5x"],
	["Land_Misc_deerstand", 25, "Land_Misc_deerstand"],
	["Fort_Barricade", 25, "Fort_Barricade"],
	["Concrete_Wall_EP1", 25, "Concrete_Wall_EP1"],
    ["Land_fort_bagfence_long", 25, "Land_fort_bagfence_long"],
    ["Land_fort_bagfence_round", 25, "Land_fort_bagfence_round"],
    ["Land_fort_bagfence_corner", 25, "Land_fort_bagfence_corner"],
    ["Land_BagFenceLong", 25, "Land_BagFenceLong"],
    ["Land_fort_artillery_nest", 25, "Land_fort_artillery_nest"],
	["Land_fortified_nest_small_EP1", 25, "Land_fortified_nest_small_EP1"],
    ["Land_fort_rampart", 25, "Land_fort_rampart"],
    ["Land_fort_rampart_EP1", 25, "Land_fort_rampart_EP1"],
	["Land_HBarrier_large", 25, "Land_HBarrier_large"],
	["Land_Misc_Scaffolding", 25, "Land_Misc_Scaffolding"],
	["Land_Fort_Watchtower_EP1", 25, "Land_Fort_Watchtower_EP1"],
    ["Land_Fort_Watchtower", 25, "Land_Fort_Watchtower"],
	["Land_fortified_nest_big", 25, "Land_fortified_nest_big"],
	["RampConcrete", 25, "RampConcrete"],
	["WarfareBDepot", 25, "WarfareBDepot"],
	["WarfareBCamp", 25, "WarfareBCamp"],
    ["Hedgehog", 25, "Hedgehog"],
    ["Land_ConcreteRamp", 25, "Land_ConcreteRamp"],
    ["Land_CncBlock_Stripes", 25, "Land_CncBlock_Stripes"],
    ["Land_Campfire_burning", 25, "Land_Campfire_burning"],
    ["Land_GuardShed", 25, "Land_GuardShed"],
    ["Land_tent_east", 25, "Land_tent_east"],
	["Land_ConcreteBlock", 25, "Land_ConcreteBlock"]
];

//Name, Price, Vehicle
vehicleStoreArray = [
	["Old Bicycle", 20, "Old_bike_TK_CIV_EP1"],
	["Old Motorbike", 120, "Old_moto_TK_Civ_EP1"],
	["UAZ", 250, "UAZ_RU"],
	["UAZ AGS30", 500, "UAZ_AGS30_RU"],
	["UAZ SPG9", 700, "UAZ_SPG9_INS"],
	["MTVR", 400, "MTVR"],
	["V3S", 2000, "V3S_Civ"],
	["Old HMMWV", 250, "HMMWV"],
	["HMMWV Ambulance", 300, "HMMWV_Ambulance"],
	["HMMWV TOW", 1000, "HMMWV_TOW"],
	["HMMWV MK19", 900, "HMMWV_MK19"],
	["HMMWV Armored", 700, "HMMWV_Armored"],
	["BRD M2", 3500, "BRDM2_GUE"],
	["GAZ Vodnik", 2000, "GAZ_Vodnik"],
	["GAZ MedEvac", 2000, "GAZ_Vodnik_MedEvac"],
	["Surprise", 8000, "T72_Gue"]
];

//Name, Price, Vehicle
ChopperStoreArray = [
        ["AH6X", 4000, "AH6X_EP1"],
        ["MH6J", 2000, "MH6J_EP1"],
        ["CH 47F", 5000, "CH_47F_EP1"],
		["UH1H", 3000, "UH1H_TK_GUE_EP1"],
		["MH60S", 4000, "MH60S"]
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = [
		["Town_0",600,"Chernogorsk"],
		["Town_1",200,"Prigorodki"],
		["Town_2",200,"Pusta"],
		["Town_3",600,"Elektro"],
		["Town_4",200,"Kamyshovo"],			
		["Town_5",200,"Tulga"],
		["Town_6",250,"Solnychniy"],
		["Town_7",200,"Nizhnoye"],
		["Town_8",500,"Berezino City"],
		["Town_9",500,"Berezino Dock"],
		["Town_10",250,"Khelm"],
		["Town_11",200,"Olsha"],
		["Town_12",350,"Krasnostav"],
		["Town_13",250,"Gvozdno"],
		["Town_14",300,"Grishino"],
		["Town_15",200,"Petrovka"],
		["Town_16",200,"Lopatino"],
		["Town_17",300,"Vybor"],
		["Town_18",250,"Pustoshka"],
		["Town_19",200,"Myshkino"],
		["Town_20",200,"Sosnovka"],
		["Town_21",300,"Zelenogorsk"],
		["Town_22",200,"Pavlovo"],
		["Town_23",200,"Kamenka"],
		["Town_24",200,"Komarovo"],
		["Town_25",200,"Balota"],
		["Town_26",200,"Bor"],
		["Town_27",200,"Drozhino"],
		["Town_28",200,"Kozlovka"],
		["Town_29",200,"Pulkovo"],
		["Town_30",200,"Pogorevka"],
		["Town_31",200,"Rogovo"],
		["Town_32",200,"Kabanino"],
		["Town_33",300,"StarySobor"],
		["Town_34",200,"NovySobor"],
		["Town_35",200,"Vyshnoye"],
		["Town_36",250,"Mogilevka"],
		["Town_37",200,"Guglovo"],
		["Town_38",350,"Gorka"],
		["Town_39",200,"Shakhovka"],
		["Town_40",200,"Staroye"],
		["Town_41",200,"Msta"],
		["Town_42",200,"Dolina"],
		["Town_43",200,"Orlovets"],
		["Town_44",200,"Polana"],
		["Town_45",200,"Nadezhdino"],
		["Town_46",200,"Dubrovka"]
];
cityLocations = [];
