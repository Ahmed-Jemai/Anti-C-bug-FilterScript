public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{

        if(newkeys & KEY_FIRE && oldkeys & KEY_CROUCH || newkeys  & KEY_CROUCH && oldkeys & KEY_FIRE)
        {
        	CallLocalFunction("MakeCBug", "i", playerid);

        }
		return 1;
}

forward MakeCBug(playerid);
public MakeCBug(playerid)
{

	new Float:spx, Float:spy, Float:spz;
	GetPlayerPos(playerid, spx, spy, spz); 
    SetPlayerPos(playerid, spx, spy, spz+2); // this will make the player fly. You can change it to the action you wnat.
    GameTextForPlayer(playerid, "Do not use C-Bug", 2000, 6);
    PlayerPlaySound(playerid, 1130, 0.0, 0.0, 0.0); // this will play Slapping sound.
    return 1;
}

// Made by Ahmed AKA Lil$Moon.