; This script was made by Mrlilal. The original script can be found at the following URL:
; https://github.com/Mrlilal/autohotkey
; Last updated on September 11th, 2021.

; Bot accounts are based off matchaartist's mod log, which can be found at:
; https://docs.google.com/document/d/1_F3qKiwkECmHYJvHv4hevkOYWundzNewpC_PcSGBj1I/edit

; NOTES:
; To PAUSE the script, you may use the hotkey CTRL + ALT + P. This freezes the current thread.
; To SUSPEND the script, you may use the hotkey CTRL + ALT + S. This disables hotkeys and hotstrings.
; To RELOAD the script, you may use the hotkey CTRL + ALT + R. This reloads the entire script. This can be used to stop a thread.
; To EXIT the script, you may use the hotkey ESC. Exits the app. This can be used to stop a thread. If you'd like to disable this, change the last line of this script.
; All controls use CTRL + ALT + SHIFT + [key]

#MaxThreadsPerHotkey, 1 ; Doesn't allow you to run again while it's running.

;----------------------------------------------
; VARIABLES
;----------------------------------------------
HossBots := ["hoss00312_______", "host00312", "hoss00312_____", "hoss00312_______", "hoss00312______________", "hoss00812", "hoss0312", "hoss00320", "h0ss00312", "h0ss00313", "hossoo312", "h0ss003122", "hoss00312_", "HOSSOO312", "H0SS00312", "hoss00312_hate_raid", "hoss00312_is_real", "h0ss00312", "hoss00312_", "hoss00312__", "hoss00312___", "hoss00312____", "hoss00312_____", "hoss00312______", "hoss00312_______", "hoss00312________", "hoss00312_________", "hoss00312__________", "hoss00312_runner", "hoss00312_spy", "hoss00312_is_not_a_bot", "hoss00312_is_the_best", "hoss00312_back", "hoss00312_kinky", "hoss00312_handy", "hoss00312_is_after_you", "hoss00312_elite_race", "hoss00312_owns_twitch", "hoss00312", "hoss00391", "hosseintsh123123", "hossinferno", "hoss00312_is_a_hero", "hoss00312_phag", "hoss00314_", "hoss003123", "hoss00313", "hoss00316", "hoss00313_", "hoss003121", "hoss000312", "hoss00301", "hoss00391", "hoss00342_", "hoss00324_", "big_hoss003", "hoss003256_", "not_hoss00322", "hoss00312_has_won", "hoss0312_uwu", "hoss00312_covid", "hoss00312_lives_again", "hoss00312_wins", "hoss00312_hoss00312", "hoss00312_lllliiilllliill", "hoss00312_lllliillllilllii", "hoss00312_lllliiillllii", "hoss00312_lliiilllliilll", "hoss00312_llliillllilllli", "hoss00312_pogchamp", "hoss00312_llliiillliiilll", "hoss00312_haha", "hoss00312_is_alive", "hoss00312_army", "hoss00312_is_here", "hoss00312_hello", "hoss00312_dinger", "hoss00312_giver", "hoss00312_is_watching", "hoss00312_dad", "hoss____00312 ", "hoss00312_00312_00312 ", "hoss00312_0_0 ", "hoss00312_real_person", "hoss_______00312", "hoss00312_378592692692962", "hoss00312_big_gains", "hoss______00312", "hoss00312_is_watching", "hoss00312_eyes", "hoss00312_me", "hoss00312_armys", "hoss00312_kqueer"]
ManoliaBots := ["ManoliaTTV", "Manolia_403", "Manolia_life", "Manolia_lunar", "Manolia_kaat", "Manolia_meow", "Manolia", "vmanolia", "vvmanolia", "vvvmanolia", "vvvvmanolia"]
PainhateBots := ["painhatesad", "painhatesad1", "painhatesadXDXDXD3", "painhatesad2", "painhatesadanger", "painhatesad666", "painhatesad3", "painhatesadbot", "painhatesaddepression2222", "painhatesad123", "painhatesadxd"]
LunarBots := ["lunar_was_here", "lunar_ipv4", "lunaripv4", "lunar_fake", "lunar_streamangel", "lunar_streammanager", "lunar_te_vigila", "lunar_tic_", "lunar_tomatedearbol", "lunar_trumph", "lunar_undeprived", "lunar_zhaynteamosoyalexis", "RememberLunaSec", "Night_php_lunasec", "night_php", "shell_upload_php"]
GroupTargetBots := ["algasposandersong967", "algasposcollinsy254", "algasposgreenn255", "algasposhillv1752", "algasposkingxa5", "algasposmartinezw1569", "algasposthomasyc1", "alidreechallh485", "alidreechillt4849", "alidreecjacksonkj9", "alidreeclewisny9", "alidreecmartinezk731", "alidreecmartinezt318", "alidreecmartinv096", "alidreecwalkersv726", "alloideladamsnn2", "alloidelallennt6", "alloideledwardsk2920", "alloidelgonzalezg5133", "alloidelmooref3353", "alloidelthomascx2", "alloidelwhitep004", "aninkenicampbellf561", "aninkenidavisn9681", "aninkenihillb0522", "aninkenijohnsony7679", "aninkenimartiny397", "aninkeniparkercj2", "aninkeniparkerh0829", "aninkeniscottqj5", "aninkeniwilsonR765", "mdbettyb001", "6fbettyb0001", "5tbettyb0015", "3dbettyb009", "mdbettyb001", "6fbettyb001", "3dbettyb009", "5tbettyb0015", "2qbettyb0016", "7nbettyb0015", "7bbettyb0013", "0ikbettyb001", "2afbettyb0018", "imeistee1233", "3oeistee1233", "6xeistee1233", "6jeistee1233", "4meistee12306", "9heistee12336", "9ueistee12339", "0pgeistee1233", "7omeistee12304", "1zorango947", "4oorango947", "5rorango947", "6zhorango947", "1usorango947", "6aorango9478", "8ylorango947", "4korango941", "jkorango9471", "qatrooper71", "4detrooper71", "8xtrooper71", "6btrooper71", "trooper7171", "8strooper711", "myg0t_dot_win_vekb", "myg0t_dot_win_emnd", "myg0t_dot_win_scyu", "www_myg0t_dot_win_yetr", "www_myg0t_win_1t84"]
HateRaidBots := ["fragilitys", "ForeGATHERS", "creatineisback", "1nittogether", "JudgeJudySlayer", "AlexiaXo", "billiewilder", "farminggurl", "hotgirlfromcal", "544h45h4h5", "core_core_core", "ipanzer22297", "umtqma874945", "fbgreataxe197", "udhdhufhje", "eqluv", "SeiIaaa", "Smallsteramersdcserver", "SmallStreamersDCServer", "Smallsteramersdcserver", "wzqdx", "tdkamil12389", "yubother", "supergg03", "qarchie0537", "wchris1335624", "4abtraceur643", "3xikarina112840", "5txmariofan250", "9jfangboy081", "5mdmartha732", "1xolouka20039", "9mvova20000087", "3maborys1218", "Alfredhitchco", "demimad", "anglefir", "lowtik", "metaforick", "orthoduck", "bongbar", "stevenspielber", "chaimrevivo", "gowithhim", "droopdoggg", "jointeffortt", "icewizerds", "ftopayr", "casinothanks", "anotherttvviewer", "Abbottcostello", "yourmomonmyxnxxtab", "im_1dumb", "dumb_1kid", "mmohamed9", "violets_tv", "extramoar", "manage_me", "404_preview", "twitch_test_raid2", "twitch_test_raid", "Temp_account131", "twitchtwitchtwitchx3", "golang_ontop", "pawnlam", "remove_hostratelimit", "clickonmeplease7", "clickonmeplease6", "clickonmeplease5", "clickonmeplease4", "clickonmeplease3", "clickonmeplease2", "clickonmeplease", "click0nmeplease", "ddatapb9", "ddatapc9", "delteerdatap9", "Ddatapb34", "Ddatapc34", "Delteerdatap34", "carbon14xyz", "carbob14xyz", "carbot14xyz", "TheTwitchAuthority_E0244", "winsteno", "molsonfl", "no_id_uh", "Fvmh97c", "socialfriends11", "TheTwitchAuthority", "0x81_XML", "2600_6c5e_5b7f_fdcd_venom", "2603_6000_ba07_8c751_cc60", "night_shell", "1111111111111115", "0x25E", "TheTwitchAuthority2", "0x45", "xqcmate", "panda_man2123", "yes_please_ok", "thelurxxer", "emotexbot", "twitchdetails", "casinothanks", "1174", "discord_for_streamers", "exxxbot", "disc0rdforsma11streamers", "social_growth_discord", "d1sc0rdforsmallstreamers", "pboj", "jd1d", "sad_grl", "gametrendanalytics", "rivkamichaeli1", "stormpostor", "Academyimpossible", "bingcortana", "havethis2", "Zenmatevpn", "Maujior", "phpshit", "ox45e", "0x45e_banned", "0x45e_tta", "0x45e_twitchsucks", "870179692248961058", "dexiphp", "aitorki_24", "ttaproxy", "omegajeppe", "d4rk_5ky", "d4rk_5kyhow", "public_enemy821", "servres", "stygian_styx", "yamickle"]
OtherBots := ["Thecommadergroot", "manolia_403", "vvvvvmanolia", "vvvvvvmanolia", "vvvvvvvmanolia", "vvvvvvvvmanolia", "vvvvvvvvvmanolia", "vvvvvvvvvvmanolia", "vvvvvvvvvvvmanolia", "vvmanolia", "vvvmanolia", "vvvvmanolia", "manolia_uwu", "manolia_kitkat", "manolia_lunar", "manolia_meow", "chunkcaster", "pain_hatesad123", "hoss00312_rrigger", "deprived_life", "pulsebot5347", "keur14", "elmasterkriko", "fair_use_claimed", "shizu_is_a_man", "short_society777", "sydni_warren_owned", "gagchud_gaming_88", "lawsuit_incoming_lol", "massive_forehead23103", "chipmunk_ism", "sneed_groyper_1312", "chippysneedy", "trumpclan565", "sp0rkeh", "narutoruto0", "2fast4yall204", "tysonw_antiblm1", "sierrascottistubby", "strwbrioss", "chat_fantastic", "friend_request_me", "atomic_ceno", "foxstar1996", "maddyson_moy_bog"]
MoreBots := []
;----------------------------------------------

^!+0::
Loop(BanList := HossBots)
Loop(BanList := ManoliaBots)
Loop(BanList := PainhateBots)
Loop(BanList := LunarBots)
Loop(BanList := GroupTargetBots)
Loop(BanList := HateRaidBots)
Loop(BanList := OtherBots)
Loop(BanList := MoreBots)
Return

^!+1::
Loop(BanList := HossBots)
Return

^!+2::
Loop(BanList := ManoliaBots)
Return

^!+3::
Loop(BanList := PainhateBots)
Return

^!+4::
Loop(BanList := LunarBots)
Return

^!+5::
Loop(BanList := GroupTargetBots)
Return

^!+6::
Loop(BanList := HateRaidBots)
Return

^!+7::
Loop(BanList := OtherBots)
Return

^!+8::
Loop(BanList := MoreBots)
Return

Loop(BanList) {
    Loop, % BanList.Length() {
        Bot := BanList[A_Index]
        Send /ban %Bot%{Enter}
        Sleep 1000
    }
}

^!p::Pause
^!s::Suspend
^!r::Reload
Esc::ExitApp