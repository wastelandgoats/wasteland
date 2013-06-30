#include "dialog\content_sys.sqf";
disableSerialization;

_switch = _this select 0;

_dialog = findDisplay contentsys_DIALOG;
_contentList = _dialog displayCtrl content_list;
_contentListIndex = _contentList lbAdd format["10$ Land_ConcreteRamp"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_ConcreteRamp"];
_contentListIndex = _contentList lbAdd format["15$ Land_ConcreteBlock"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_ConcreteBlock"];
_contentListIndex = _contentList lbAdd format["12$ RampConcrete"];
_contentList lbSetData [(lbSize _contentList)-1, "RampConcrete"];
_contentListIndex = _contentList lbAdd format["12$ Land_Misc_Scaffolding"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Misc_Scaffolding"];
_contentListIndex = _contentList lbAdd format["12$ Concrete_Wall_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Concrete_Wall_EP1"];
_contentListIndex = _contentList lbAdd format["12$ Base_WarfareBBarrier10xTall"];
_contentList lbSetData [(lbSize _contentList)-1, "Base_WarfareBBarrier10xTall"];
_contentListIndex = _contentList lbAdd format["12$ Base_WarfareBBarrier10x"];
_contentList lbSetData [(lbSize _contentList)-1, "Base_WarfareBBarrier10x"];
_contentListIndex = _contentList lbAdd format["12$ Base_WarfareBBarrier5x"];
_contentList lbSetData [(lbSize _contentList)-1, "Base_WarfareBBarrier5x"];
_contentListIndex = _contentList lbAdd format["12$ Land_Fire_barrel_burning"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Fire_barrel_burning"];
_contentListIndex = _contentList lbAdd format["12$ Land_Fort_Watchtower_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Fort_Watchtower_EP1"];
_contentListIndex = _contentList lbAdd format["12$ Land_Fort_Watchtower"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Fort_Watchtower"];
_contentListIndex = _contentList lbAdd format["12$ Hedgehog"];
_contentList lbSetData [(lbSize _contentList)-1, "Hedgehog"];
_contentListIndex = _contentList lbAdd format["12$ SatPhone"];
_contentList lbSetData [(lbSize _contentList)-1, "SatPhone"];
_contentListIndex = _contentList lbAdd format["12$ M2StaticMG_base"];
_contentList lbSetData [(lbSize _contentList)-1, "M2StaticMG_base"];
_contentListIndex = _contentList lbAdd format["12$ WarfareBMGNest_M240_base"];
_contentList lbSetData [(lbSize _contentList)-1, "WarfareBMGNest_M240_base"];
_contentListIndex = _contentList lbAdd format["12$ WarfareBMGNest_PK_Base"];
_contentList lbSetData [(lbSize _contentList)-1, "WarfareBMGNest_PK_Base"];
_contentListIndex = _contentList lbAdd format["12$ StaticSEARCHLight"];
_contentList lbSetData [(lbSize _contentList)-1, "StaticSEARCHLight"];
_contentListIndex = _contentList lbAdd format["12$ Fort_EnvelopeBig"];
_contentList lbSetData [(lbSize _contentList)-1, "Fort_EnvelopeBig"];
_contentListIndex = _contentList lbAdd format["12$ Fort_EnvelopeSmall"];
_contentList lbSetData [(lbSize _contentList)-1, "Fort_EnvelopeSmall"];
_contentListIndex = _contentList lbAdd format["12$ Land_GuardShed"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_GuardShed"];
_contentListIndex = _contentList lbAdd format["12$ Land_fort_bagfence_corner"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_fort_bagfence_corner"];
_contentListIndex = _contentList lbAdd format["12$ Land_fort_bagfence_long"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_fort_bagfence_long"];
_contentListIndex = _contentList lbAdd format["12$ Land_fort_bagfence_round"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_fort_bagfence_round"];
_contentListIndex = _contentList lbAdd format["12$ Land_fortified_nest_small"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_fortified_nest_small"];
_contentListIndex = _contentList lbAdd format["12$ Hedgehog"];
_contentList lbSetData [(lbSize _contentList)-1, "Hedgehog"];
_contentListIndex = _contentList lbAdd format["12$ Desk"];
_contentList lbSetData [(lbSize _contentList)-1, "Desk"];
_contentListIndex = _contentList lbAdd format["12$ FoldChair"];
_contentList lbSetData [(lbSize _contentList)-1, "FoldChair"];
_contentListIndex = _contentList lbAdd format["12$ FoldTable"];
_contentList lbSetData [(lbSize _contentList)-1, "FoldTable"];
_contentListIndex = _contentList lbAdd format["12$ SmallTable"];
_contentList lbSetData [(lbSize _contentList)-1, "SmallTable"];
_contentListIndex = _contentList lbAdd format["12$ Notebook"];
_contentList lbSetData [(lbSize _contentList)-1, "Notebook"];

_contentListIndex = _contentList lbAdd format["12$ Land_Barrel_water"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Barrel_water"];
_contentListIndex = _contentList lbAdd format["12$ Land_HBarrier_large"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_HBarrier_large"];
_contentListIndex = _contentList lbAdd format["12$ Land_HBarrier5"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_HBarrier5"];
_contentListIndex = _contentList lbAdd format["12$ Land_WoodenRamp"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_WoodenRamp"];
_contentListIndex = _contentList lbAdd format["12$ Obstacle_saddle"];
_contentList lbSetData [(lbSize _contentList)-1, "Obstacle_saddle"];
_contentListIndex = _contentList lbAdd format["12$ WarfareBCamp"];
_contentList lbSetData [(lbSize _contentList)-1, "WarfareBCamp"];
_contentListIndex = _contentList lbAdd format["12$ WarfareBDepot"];
_contentList lbSetData [(lbSize _contentList)-1, "WarfareBDepot"];
_contentListIndex = _contentList lbAdd format["12$ PowerGenerator"];
_contentList lbSetData [(lbSize _contentList)-1, "PowerGenerator"];
_contentListIndex = _contentList lbAdd format["12$ Land_Climbing_Obstacle"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Climbing_Obstacle"];
_contentListIndex = _contentList lbAdd format["12$ Land_Antenna"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Antenna"];
_contentListIndex = _contentList lbAdd format["12$ Land_runway_edgelight"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_runway_edgelight"];



_contentListIndex = _contentList lbAdd format["12$ Land_Teapot_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Teapot_EP1"];
_contentListIndex = _contentList lbAdd format["12$ Fort_Crate_wood"];
_contentList lbSetData [(lbSize _contentList)-1, "Fort_Crate_wood"];
_contentListIndex = _contentList lbAdd format["12$ Land_Campfire_burning"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Campfire_burning"];
_contentListIndex = _contentList lbAdd format["12$ Fort_EnvelopeBig_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Fort_EnvelopeBig_EP1"];
_contentListIndex = _contentList lbAdd format["12$ Fort_EnvelopeSmall_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Fort_EnvelopeSmall_EP1"];
_contentListIndex = _contentList lbAdd format["12$ MASH"];
_contentList lbSetData [(lbSize _contentList)-1, "MASH"];






_contentListIndex = _contentList lbAdd format["12$ ACamp"];
_contentList lbSetData [(lbSize _contentList)-1, "ACamp"];
_contentListIndex = _contentList lbAdd format["12$ Camp"];
_contentList lbSetData [(lbSize _contentList)-1, "Camp"];
_contentListIndex = _contentList lbAdd format["12$ CampEast"];
_contentList lbSetData [(lbSize _contentList)-1, "CampEast"];
_contentListIndex = _contentList lbAdd format["12$ RoadBarrier_light"];
_contentList lbSetData [(lbSize _contentList)-1, "RoadBarrier_light"];
_contentListIndex = _contentList lbAdd format["12$ Land_HBarrier_large"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_HBarrier_large"];
_contentListIndex = _contentList lbAdd format["12$ Land_Chair_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Chair_EP1"];
_contentListIndex = _contentList lbAdd format["12$ Suitcase"];
_contentList lbSetData [(lbSize _contentList)-1, "Suitcase"];
_contentListIndex = _contentList lbAdd format["12$ Land_Misc_deerstand"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Misc_deerstand"];
_contentListIndex = _contentList lbAdd format["12$ Land_Fort_Watchtower"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Fort_Watchtower"];
_contentListIndex = _contentList lbAdd format["12$ Land_CncBlock_Stripes"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_CncBlock_Stripes"];
_contentListIndex = _contentList lbAdd format["12$ Land_CncBlock"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_CncBlock"];
_contentListIndex = _contentList lbAdd format["12$ Barrack2"];
_contentList lbSetData [(lbSize _contentList)-1, "Barrack2"];



_contentListIndex = _contentList lbAdd format["12$ Land_Misc_Rubble_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_Misc_Rubble_EP1"];
_contentListIndex = _contentList lbAdd format["12$ Land_stand_small_EP1"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_stand_small_EP1"];
_contentListIndex = _contentList lbAdd format["12$ Fort_Barricade"];
_contentList lbSetData [(lbSize _contentList)-1, "Fort_Barricade"];
_contentListIndex = _contentList lbAdd format["12$ Land_fort_rampart"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_fort_rampart"];
_contentListIndex = _contentList lbAdd format["12$ Land_prebehlavka"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_prebehlavka"];
_contentListIndex = _contentList lbAdd format["12$ Land_prolejzacka"];
_contentList lbSetData [(lbSize _contentList)-1, "Land_prolejzacka"];
_contentListIndex = _contentList lbAdd format["12$ Paleta1"];
_contentList lbSetData [(lbSize _contentList)-1, "Paleta1"];
