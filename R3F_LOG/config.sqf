/**
 * MAIN CONFIGURATION FILE
 * 
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * This file contains the configuration variables of the logistics system.
 * For the configuration of the creation factory, see the file "config_creation_factory.sqf".
 * IMPORTANT NOTE : when a logistics feature is given to an object/vehicle class name, all the classes which inherit
 *                  of the parent/generic class (according to the CfgVehicles) will also have this feature.
 *                  CfgVehicles tree view example : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 * 
 * Fichier contenant les variables de configuration du syst�me de logistique.
 * Pour la configuration de l'usine de cr�ation, voir le fichier "config_creation_factory.sqf".
 * NOTE IMPORTANTE : lorsqu'une fonctionnalit� logistique est accord�e � un nom de classe d'objet/v�hicule, les classes
 *                   h�ritant de cette classe m�re/g�n�rique (selon le CfgVehicles) se verront �galement dot�es de cette fonctionnalit�.
 *                   Exemple d'arborescence du CfgVehicles : http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html
 */

/**
 * DISABLE LOGISTICS ON OBJECTS BY DEFAULT
 * 
 * Define if objects and vehicles have logistics features by default,
 * or if it must be allowed explicitely on specific objects/vehicles.
 * 
 * If false : all objects are enabled according to the class names listed in this configuration file
 *            You can disable some objects with : object setVariable ["R3F_LOG_disabled", true];
 * If true :  all objects are disabled by default
 *            You can enable some objects with : object setVariable ["R3F_LOG_disabled", false];
 * 
 * 
 * D�fini si les objets et v�hicules disposent des fonctionnalit�s logistiques par d�faut,
 * ou si elles doivent �tre autoris�s explicitement sur des objets/v�hicules sp�cifiques.
 * 
 * Si false : tous les objets sont actifs en accord avec les noms de classes list�s dans ce fichier
 *            Vous pouvez d�sactiver certains objets avec : objet setVariable ["R3F_LOG_disabled", true];
 * Si true :  tous les objets sont inactifs par d�faut
 *            Vous pouvez activer quelques objets avec : objet setVariable ["R3F_LOG_disabled", false];
 */
R3F_LOG_CFG_disabled_by_default = false;

/**
 * ALLOW NO GRAVITY OVER GROUND
 * 
 * Define if movable objects with no gravity simulation can be set in height over the ground (no ground contact).
 * The no gravity objects corresponds to most of decoration and constructions items.
 * 
 * D�fini si les objets d�pla�able sans simulation de gravit� peuvent �tre position en hauteur sans �tre contact avec le sol.
 * Les objets sans gravit� correspondent � la plupart des objets de d�cors et de construction.
 */
R3F_LOG_CFG_no_gravity_objects_can_be_set_in_height_over_ground = true;

/**
 * LANGUAGE
 * 
 * Automatic language selection according to the game language.
 * New languages can be easily added (read below).
 * 
 * S�lection automatique de la langue en fonction de la langue du jeu.
 * De nouveaux langages peuvent facilement �tre ajout�s (voir ci-dessous).
 */
R3F_LOG_CFG_language = switch (language) do
{
	case "English":{"en"};
	case "French":{"fr"};
	
	// Feel free to create you own language file named "XX_strings_lang.sqf", where "XX" is the language code.
	// Make a copy of an existing language file (e.g. en_strings_lang.sqf) and translate it.
	// Then add a line with this syntax : case "YOUR_GAME_LANGUAGE":{"LANGUAGE_CODE"};
	// For example :
	
	//case "Czech":{"cz"}; // Not supported. Need your own "cz_strings_lang.sqf"
	//case "Polish":{"pl"}; // Not supported. Need your own "pl_strings_lang.sqf"
	//case "Portuguese":{"pt"}; // Not supported. Need your own "pt_strings_lang.sqf"
	//case "YOUR_GAME_LANGUAGE":{"LANGUAGE_CODE"};  // Need your own "LANGUAGE_CODE_strings_lang.sqf"
	
	default {"en"}; // If language is not supported, use English
};

/**
 * CONDITION TO ALLOW LOGISTICS
 * 
 * This variable allow to set a dynamic SQF condition to allow/deny all logistics features only on specific clients.
 * The variable must be a STRING delimited by quotes and containing a valid SQF condition to evaluate during the game.
 * For example you can allow logistics only on few clients having a known game ID by setting the variable to :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Or based on the profile name : "profileName in [""john"", ""jack"", ""james""]"
 * Or only for the server admin : "serverCommandAvailable "#kick"""
 * Note that quotes of the strings inside the string condition must be doubled.
 * Note : if the condition depends of the aimed objects/v�hicule, you can use the command cursorTarget
 * Note also that the condition is evaluted in real time, so it can use condition depending on the mission progress :
 * "alive officer && taskState task1 == ""Succeeded"""
 * To allow the logistics to everyone, just set the condition to "true".
 * 
 * Cette variable permet d'utiliser une condition SQF dynamique pour autoriser ou non les fonctions logistiques sur des clients sp�cifiques.
 * La variable doit �tre une CHAINE de caract�res d�limit�e par des guillemets et doit contenir une condition SQF valide qui sera �valu�e durant la mission.
 * Par exemple pour autoriser la logistique sur seulement quelques joueurs ayant un ID de jeu connu, la variable peut �tre d�fini comme suit :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Ou elle peut se baser sur le nom de profil : "profileName in [""maxime"", ""martin"", ""marc""]"
 * Ou pour n'autoriser que l'admin de serveur : "serverCommandAvailable "#kick"""
 * Notez que les guillemets des cha�nes de caract�res dans la cha�ne de condition doivent �tre doubl�s.
 * Note : si la condition d�pend de l'objet/v�hicule point�, vous pouvez utiliser la commande cursorTarget
 * Notez aussi que les condition sont �valu�es en temps r�el, et peuvent donc d�pendre du d�roulement de la mission :
 * "alive officier && taskState tache1 == ""Succeeded"""
 * Pour autoriser la logistique chez tout le monde, il suffit de d�finir la condition � "true".
 */
R3F_LOG_CFG_string_condition_allow_logistics_on_this_client = "true";

/**
 * CONDITION TO ALLOW CREATION FACTORY
 * 
 * This variable allow to set a dynamic SQF condition to allow/deny the access to the creation factory only on specific clients.
 * The variable must be a STRING delimited by quotes and containing a valid SQF condition to evaluate during the game.
 * For example you can allow the creation factory only on few clients having a known game ID by setting the variable to :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Or based on the profile name : "profileName in [""john"", ""jack"", ""james""]"
 * Or only for the server admin : "serverCommandAvailable "#kick"""
 * Note that quotes of the strings inside the string condition must be doubled.
 * Note : if the condition depends of the aimed objects/v�hicule, you can use the command cursorTarget
 * Note also that the condition is evaluted in real time, so it can use condition depending on the mission progress :
 * "alive officer && taskState task1 == ""Succeeded"""
 * To allow the creation factory to everyone, just set the condition to "true".
 * 
 * Cette variable permet d'utiliser une condition SQF dynamique pour rendre accessible ou non l'usine de cr�ation sur des clients sp�cifiques.
 * La variable doit �tre une CHAINE de caract�res d�limit�e par des guillemets et doit contenir une condition SQF valide qui sera �valu�e durant la mission.
 * Par exemple pour autoriser l'usine de cr�ation sur seulement quelques joueurs ayant un ID de jeu connu, la variable peut �tre d�fini comme suit :
 * "getPlayerUID player in [""76xxxxxxxxxxxxxxx"", ""76yyyyyyyyyyyyyyy"", ""76zzzzzzzzzzzzzzz""]"
 * Ou elle peut se baser sur le nom de profil : "profileName in [""maxime"", ""martin"", ""marc""]"
 * Ou pour n'autoriser que l'admin de serveur : "serverCommandAvailable "#kick"""
 * Notez que les guillemets des cha�nes de caract�res dans la cha�ne de condition doivent �tre doubl�s.
 * Note : si la condition d�pend de l'objet/v�hicule point�, vous pouvez utiliser la commande cursorTarget
 * Notez aussi que les condition sont �valu�es en temps r�el, et peuvent donc d�pendre du d�roulement de la mission :
 * "alive officier && taskState tache1 == ""Succeeded"""
 * Pour autoriser l'usine de cr�ation chez tout le monde, il suffit de d�finir la condition � "true".
 */
R3F_LOG_CFG_string_condition_allow_creation_factory_on_this_client = "false";

/*
 ********************************************************************************************
 * BELOW IS THE CLASS NAMES CONFIGURATION / CI-DESSOUS LA CONFIGURATION DES NOMS DE CLASSES *
 ********************************************************************************************
 * 
 * There are two ways to manage new objects with the logistics system. The first one is to add these objects in the
 * following appropriate lists. The second one is to create a new external file in the /addons_config/ directory,
 * based on /addons_config/TEMPLATE.sqf, and to add a #include below to.
 * The first method is better to add/fix only some various class names.
 * The second method is better to take into account an additional addon.
 * 
 * Deux moyens existent pour g�rer de nouveaux objets avec le syst�me logistique. Le premier consiste � ajouter
 * ces objets dans les listes appropri�es ci-dessous. Le deuxi�me est de cr�er un fichier externe dans le r�pertoire
 * /addons_config/ bas� sur /addons_config/TEMPLATE.sqf, et d'ajouter un #include ci-dessous.
 * La premi�re m�thode est pr�f�rable lorsqu'il s'agit d'ajouter ou corriger quelques classes diverses.
 * La deuxi�me m�thode est pr�f�rable s'il s'agit de prendre en compte le contenu d'un addon suppl�mentaire.
 */

/****** LIST OF ADDONS CONFIG TO INCLUDE / LISTE DES CONFIG D'ADDONS A INCLURE ******/
//#include "addons_config\A3_vanilla_1.22.sqf"
//#include "addons_config\R3F_addons.sqf"
//#include "addons_config\YOUR_ADDITIONAL_ADDON.sqf"

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of ground vehicles which can tow objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets.
 */
R3F_LOG_CFG_can_tow = R3F_LOG_CFG_can_tow +
[
	"SUV_01_base_F",
	"Offroad_01_base_F",
	"Van_01_base_F",
	"MRAP_01_base_F",
	"MRAP_02_base_F",
	"MRAP_03_base_F",
	"Truck_01_base_F",
	"Truck_02_base_F",
	"Truck_03_base_F",
	"Wheeled_APC_F",
	"Tank_F"
];

/**
 * List of class names of objects which can be towed.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_can_be_towed = R3F_LOG_CFG_can_be_towed +
[
	"Hatchback_01_base_F",
	"SUV_01_base_F",
	"Offroad_01_base_F",
	"Van_01_base_F",
	"MRAP_01_base_F",
	"MRAP_02_base_F",
	"MRAP_03_base_F",
	"UGV_01_base_F",
	"SDV_01_base_F",
	"Boat_Civil_01_base_F",
	"Boat_Armed_01_base_F"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of helicopters which can lift objects.
 * Liste des noms de classes des h�licopt�res pouvant h�liporter des objets.
 */
R3F_LOG_CFG_can_lift = R3F_LOG_CFG_can_lift +
[

	"Helicopter_Base_F"

];

/**
 * List of class names of objects which can be lifted.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_can_be_lifted = R3F_LOG_CFG_can_be_lifted +
[

	"Hatchback_01_base_F",
	"SUV_01_base_F",
	"Offroad_01_base_F",
	"Van_01_base_F",
	"MRAP_01_base_F",
	"MRAP_02_base_F",
	"MRAP_03_base_F",
	"UGV_01_base_F",
	"SDV_01_base_F",
	"Boat_Civil_01_base_F",
	"Boat_Armed_01_base_F",
	"LandVehicle",
	"Tank_F"

];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section uses a numeric quantification of capacity and cost of the objets.
 * For example, in a vehicle has a capacity of 100, we will be able to load in 5 objects costing 20 capacity units.
 * The capacity doesn't represent a real volume or weight, but a choice made for gameplay.
 * 
 * Note : the priority of a declaration of cost/capacity to another one corresponds to the inverse order in the tables.
 *   It means that the most generic classes should be listed before the less generic classes.
 *   For example : the "Truck_F" class is a child of the "Car_F" class (see http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html).
 *   If "Car_F" is declared before "Truck_F" with a capacity of 40, and "Truck_F" is declared after with a capacity of 140,
 *   Then all the child classes of "Truck_F" will have a capacity of 140.
 *   And all the derived classes of "Car_F", not in "Truck_F", will have a capacity of 40.
 * 
 * 
 * Cette section utilise une quantification num�rique de la capacit� et du co�t des objets.
 * Par exemple, dans un v�hicule d'une capacit� de 100, nous pouvons charger 5 objets co�tant 20 unit�s de capacit�.
 * La capacit� ne repr�sente ni un poids, ni un volume, mais un choix fait pour la jouabilit�.
 * 
 * Note : la priorit� d'une d�claration de co�t/capacit� sur une autre correspond � l'ordre inverse dans les tableaux.
 *   Cela implique que les classes les plus g�n�riques doivent �tre list�es avant les classes moins gn�riques.
 *   Par exemple : la classe "Truck_F" est une classe d�rvi�e de "Car_F" (voir http://madbull.arma.free.fr/A3_stable_1.20.124746_CfgVehicles_tree.html).
 *   Si "Car_F" est d�clar� avant "Truck_F" avec une capacit� de 40, et que "Truck_F" est d�clar� apr�s avec une capacit� de 140,
 *   Alors toutes les classes d�riv�es de "Truck_F" auront une capacit� de 140.
 *   Et toutes les classes dans "Car_F", non pr�sentes dans "Truck_F", auront une capacit� de 40.
 */

/**
 * List of class names of vehicles or cargo objects which can transport objects.
 * The second element of the nested arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules ou "objets contenant" pouvant transporter des objets.
 * Le deuxi�me �l�ment des sous-tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_can_transport_cargo = R3F_LOG_CFG_can_transport_cargo +
[
	["Truck_F", 75],
	["B_Truck_01_mover_F", 150],
	["B_Truck_01_transport_F", 150],
	["B_Truck_01_covered_F", 140],
	["B_Truck_01_box_F", 140],
	["B_Truck_01_fuel_F", 75],
	["B_Truck_01_medical_F", 75],
	["B_Truck_01_Repair_F", 75],
	["B_Truck_01_ammo_F", 75],
	["O_Truck_03_device_F", 75],
	["O_Truck_03_transport_F", 250],
	["O_Truck_03_covered_F", 225],
	["O_Truck_03_fuel_F", 75],
	["O_Truck_03_medical_F", 75],
	["O_Truck_03_repair_F", 75],
	["O_Truck_03_ammo_F", 75],
	["I_Truck_02_transport_F", 200],
	["I_Truck_02_covered_F", 190],
	["I_Truck_02_fuel_F", 75],
	["I_Truck_02_medical_F", 75],
	["I_Truck_02_box_F", 75],
	["I_Truck_02_ammo_F", 75],
	["Quadbike_01_base_F", 5],
	["UGV_01_base_F", 10],
	["Hatchback_01_base_F", 10],
	["SUV_01_base_F", 20],
	["Offroad_01_base_F", 30],
	["Van_01_base_F", 40],
	["MRAP_01_base_F", 20],
	["MRAP_02_base_F", 20],
	["MRAP_03_base_F", 20],
	["Wheeled_APC_F", 30],
	["Tank_F", 30],
	["Rubber_duck_base_F", 10],
	["Boat_Civil_01_base_F", 10],
	["Boat_Armed_01_base_F", 20],
	["B_Heli_Transport_03_F", 140],
	["B_Heli_Transport_03_unarmed_F", 190],
	["C_Heli_Light_01_civil_F", 20],
	["O_Heli_Transport_04_ammo_F", 20],
	["O_Heli_Transport_04_bench_F", 10],
	["O_Heli_Transport_04_box_F", 250],
	["O_Heli_Transport_04_covered_F", 40],
	["O_Heli_Transport_04_fuel_F", 20],
	["O_Heli_Transport_04_medevac_F", 150],
	["O_Heli_Transport_04_repair_F", 100],
	["Heli_Light_01_base_F", 20],
	["Heli_Light_02_base_F", 20],
	["I_Heli_light_03_base_F", 20],
	["Heli_Transport_01_base_F", 25],
	["Heli_Transport_02_base_F", 30],
	["Heli_Attack_01_base_F", 10],
	["Heli_Attack_02_base_F", 20]
];

/**
 * List of class names of objects which can be loaded in transport vehicle/cargo.
 * The second element of the nested arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des sous-tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
R3F_LOG_CFG_can_be_transported_cargo = R3F_LOG_CFG_can_be_transported_cargo +
[
	["StaticWeapon", 5],
	["Box_NATO_AmmoVeh_F", 10],
	["B_supplyCrate_F", 5],
	["ReammoBox_F", 3],
	["Kart_01_Base_F", 5],
	["Quadbike_01_base_F", 10],
	["Rubber_duck_base_F", 10],
	["UAV_01_base_F", 2],
	["Land_BagBunker_Large_F", 10],
	["Land_BagBunker_Small_F", 5],
	["Land_BagBunker_Tower_F", 7],
	["Land_BagFence_Corner_F", 2],
	["Land_BagFence_End_F", 2],
	["Land_BagFence_Long_F", 3],
	["Land_BagFence_Round_F", 2],
	["Land_BagFence_Short_F", 2],
	["Land_BarGate_F", 3],
	["Land_Canal_WallSmall_10m_F", 4],
	["Land_Canal_Wall_Stairs_F", 3],
	["Land_CargoBox_V1_F", 5],
	["Land_Cargo_Patrol_V1_F", 7],
	["Land_Cargo_Tower_V1_F", 100],
	["Land_Cargo_House_V1_F", 35],
	["Land_Cargo_HQ_V1_F", 100],
//	["Land_Dome_Small_F", 100],
	["Land_CncBarrier_F", 4],
	["Land_CncBarrierMedium_F", 4],
	["Land_CncBarrierMedium4_F", 4],
	["Land_CncShelter_F", 2],
	["Land_CncWall1_F", 3],
	["Land_CncWall4_F", 5],
	["Land_Crash_barrier_F", 5],
	["Land_HBarrierBig_F", 5],
	["Land_HBarrierTower_F", 8],
	["Land_HBarrierWall4_F", 4],
	["Land_HBarrierWall6_F", 6],
	["Land_HBarrier_1_F", 3],
	["Land_HBarrier_3_F", 4],
	["Land_HBarrier_5_F", 5],
	["Land_LampHarbour_F", 2],
	["Land_LampShabby_F", 2],
	["Land_MetalBarrel_F", 2],
	["Land_Mil_ConcreteWall_F", 5],
	["Land_Mil_WallBig_4m_F", 5],
	["Land_Obstacle_Ramp_F", 5],
	["Land_Pipes_large_F", 5],
	["Land_RampConcreteHigh_F", 6],
	["Land_RampConcrete_F", 5],
	["Land_Razorwire_F", 5],
	["Land_Sacks_goods_F", 2],
	["Land_Scaffolding_F", 5],
	["Land_Shoot_House_Wall_F", 3],
	["Land_Stone_8m_F", 5],
	["Land_ToiletBox_F", 2],
	["Land_BarrelWater_F", 2],
	["Land_Pavement_wide_F", 3],
	["Land_Pavement_wide_corner_F", 3],
	["Land_Pavement_narrow_F", 3],
	["Land_Pavement_narrow_corner_F", 3]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects which can be carried and moved by a player.
 * Liste des noms de classes des objets qui peuvent �tre port�s et d�plac�s par le joueur.
 */
R3F_LOG_CFG_can_be_moved_by_player = R3F_LOG_CFG_can_be_moved_by_player +
[
	"StaticWeapon",
	"ReammoBox_F",
	"Kart_01_Base_F",
	"Quadbike_01_base_F",
	"Rubber_duck_base_F",
	"SDV_01_base_F",
	"UAV_01_base_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagFence_Corner_F",
	"Land_BagFence_End_F",
	"Land_BagFence_Long_F",
	"Land_BagFence_Round_F",
	"Land_BagFence_Short_F",
	"Land_BarGate_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_CargoBox_V1_F",
	"Land_Cargo_Patrol_V1_F",
	"Land_Cargo_Tower_V1_F",
	"Land_Cargo_House_V1_F",
	"Land_Cargo_HQ_V1_F",
//	"Land_Dome_Small_F",
	"Land_CncBarrier_F",
	"Land_CncBarrierMedium_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncShelter_F",
	"Land_CncWall1_F",
	"Land_CncWall4_F",
	"Land_Crash_barrier_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierTower_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_LampHarbour_F",
	"Land_LampShabby_F",
	"Land_MetalBarrel_F",
	"Land_Mil_ConcreteWall_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Obstacle_Ramp_F",
	"Land_Pipes_large_F",
	"Land_RampConcreteHigh_F",
	"Land_RampConcrete_F",
	"Land_Razorwire_F",
	"Land_Sacks_goods_F",
	"Land_Scaffolding_F",
	"Land_Shoot_House_Wall_F",
	"Land_Stone_8m_F",
	"Land_ToiletBox_F",
	"Land_BarrelWater_F",
	"Land_Pavement_wide_F",
	"Land_Pavement_wide_corner_F",
	"Land_Pavement_narrow_F",
	"Land_Pavement_narrow_corner_F"
];

R3F_LOG_CFG_can_be_locked_by_player = R3F_LOG_CFG_can_be_locked_by_player +
[
	"StaticWeapon",
	"ReammoBox_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagFence_Corner_F",
	"Land_BagFence_End_F",
	"Land_BagFence_Long_F",
	"Land_BagFence_Round_F",
	"Land_BagFence_Short_F",
	"Land_BarGate_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_CargoBox_V1_F",
	"Land_Cargo_Patrol_V1_F",
	"Land_Cargo_Tower_V1_F",
	"Land_Cargo_House_V1_F",
	"Land_Cargo_HQ_V1_F",
	"Land_Dome_Small_F",
	"Land_CncBarrier_F",
	"Land_CncBarrierMedium_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncShelter_F",
	"Land_CncWall1_F",
	"Land_CncWall4_F",
	"Land_Crash_barrier_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierTower_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_LampHarbour_F",
	"Land_LampShabby_F",
	"Land_MetalBarrel_F",
	"Land_Mil_ConcreteWall_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Obstacle_Ramp_F",
	"Land_RampConcreteHigh_F",
	"Land_RampConcrete_F",
	"Land_Razorwire_F",
	"Land_Sacks_goods_F",
	"Land_Scaffolding_F",
	"Land_Shoot_House_Wall_F",
	"Land_Stone_8m_F",
	"Land_ToiletBox_F",
	"Land_BarrelWater_F"
];

