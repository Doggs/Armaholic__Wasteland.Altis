//	@file Version: 1.3
//	@file Name: gearcheck.sqf
//	@file Author: Cael817, With help of AgentRev, based of something i found
//	@file Created: 20140808 13:1509

private ["_uid"];

_uid = getPlayerUID player;

sleep 1;
switch (true) do 
{
    case (_uid in call gearLevel1) :
    {
		player execVM "addons\gear\gearLevel1.sqf"; 
		sleep 5;
		hint "Your Level 1 gear loaded.";
		};
		
    case (_uid in call gearLevel2) :
   {
		player execVM "addons\gear\gearLevel2.sqf"; 
		sleep 5;
		hint "Defensive Pack loaded";
   };
   
	case (_uid in call gearLevel3) :
   {
		player execVM "addons\gear\gearLevel3.sqf"; 
		sleep 5;
		hint "SICA Defensive Pack loaded";
   };
   
    case  (_uid in call gearLevel4) :
   {
		player execVM "addons\gear\gearLevel4.sqf"; 
		sleep 5;
		hint "Your Level 4 gear loaded";
   };
   
    case  (_uid in call gearLevel5) :
   {
		player execVM "addons\gear\gearLevel5.sqf"; 
		sleep 5;
		hint "Your Level 5 gear loaded";
   };
   
    case  (_uid in call gearLevel6) :
   {
		player execVM "addons\gear\gearLevel6.sqf"; 
		sleep 5;
		hint "Donator Level 6 gear loaded";
   };
   
    case  (_uid in call gearLevel7) :
   {
		player execVM "addons\gear\gearLevel7.sqf"; 
		sleep 5;
		hint "Donator Level 7 gear loaded";
   };
   
    case  (_uid in call gearLevel8) :
   {
		player execVM "addons\gear\gearLevel8.sqf"; 
		sleep 5;
		hint "Donator Level 8 gear loaded";
   };
   
      case  (_uid in call gearLevel9) :
   {
		player execVM "addons\gear\gearLevel9.sqf"; 
		sleep 5;
		hint "Donator Level 9 gear loaded";
   };

      case  (_uid in call gearLevel10) :
   {
		player execVM "addons\gear\gearLevel10.sqf"; 
		sleep 5;
		hint "Your admin gear has loaded";
   };
   
    default
    {
		hint "No gear to load";
    };
};
