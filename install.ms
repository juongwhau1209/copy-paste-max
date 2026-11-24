-- Center installer for COPY PASTE (3ds Max).
-- Center extracts the zip and runs this file. It copies the macro into the
-- user macros folder (so it loads on every start) and loads it right now.
(
	local here = getFilenamePath (getSourceFileName())
	local macDir = pathConfig.getDir #userMacros
	makeDir macDir all:true
	local src = here + "COPY_PASTE.mcr"
	local dst = macDir + "\\COPY_PASTE.mcr"
	deleteFile dst
	copyFile src dst
	fileIn dst
	format "COPY PASTE installed. Customize > Customize User Interface > Keyboard > Category \"CG_Tools\" to assign hotkeys.\n"
)
