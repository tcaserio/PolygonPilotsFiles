// obj_upgrade_screen Create Event
//global.credits = 0; // Initialize credits
upgradeOptions = [
    "Upgrade Bullet Damage",
    "Upgrade Laser Damage",
    "Upgrade Bomb Damage",
    "Increase Shield Duration",
	"Proceed to the Next Level"
];

// Initialize upgradeCost array with corresponding costs
upgradeCost = [600, 600, 700, 500, 0]; // Set the actual cost for each upgrade

space = 30; // Space between menu items
mpos = 0; //Menu position

global.currentLevel++;