--This mod provides Malay command mirror for English commands
--Originally intended for Jom Main Minetest!! server (sv.mnh48.com)

--Return true if command can't mirror, else return false
local command_mirror = function(mirrors, originals)
	if not minetest.chatcommands[originals] then
		minetest.log("error", "[MOD] malay_command_mirror: original command " .. originals .. " not exist")
		return true
	end
	
	if minetest.chatcommands[mirrors] then
		minetest.log("error", "[MOD] malay_command_mirror: mirror command " .. mirrors .. " already exist")
		return true
	end
	
	minetest.register_chatcommand(mirrors, minetest.chatcommands[originals])
	
	return false
end

-- Basic mirrors for admin work
command_mirror("summon", "spawnentity")
command_mirror("tp", "teleport")

-- Malay mirrors of commands for areas mod
command_mirror("bantuan", "help")
command_mirror("l", "protect")
command_mirror("lindung", "protect")
command_mirror("p", "protect")
command_mirror("p1", "area_pos1")
command_mirror("p2", "area_pos2")
command_mirror("kk", "area_pos")
command_mirror("kedudukan_kawasan", "area_pos")
command_mirror("set_tuan", "set_owner")
command_mirror("st", "set_owner")
command_mirror("tambah_tuan", "add_owner")
command_mirror("tt", "add_owner")
command_mirror("ut", "change_owner")
command_mirror("ubah_tuan", "change_owner")
command_mirror("pk", "select_area")
command_mirror("pilih_kawasan", "select_area")
command_mirror("nk", "rename_area")
command_mirror("nama_kawasan", "rename_area")
command_mirror("bk", "remove_area")
command_mirror("buang_kawasan", "remove_area")
command_mirror("mk", "area_info")
command_mirror("maklumat_kawasan", "area_info")
