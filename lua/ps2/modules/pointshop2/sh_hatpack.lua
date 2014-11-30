hook.Add( "PS2_ModulesLoaded", "DLC_Hats", function( )
	local MODULE = Pointshop2.GetModule( "Pointshop 2 DLC" )
	table.insert( MODULE.SettingButtons, {
		label = "Install TF2 Hatpack",
		icon = "pointshop2/download7.png",
		onClick = function( )
			Pointshop2View:getInstance( ):installDlcPack( "TF2Hats" )
			Derma_Message( "We're installing the TF2 hats for you. Please give us about a minute, your shop will update automatically once the items are installed", "Information" )
		end 
	} )
end )