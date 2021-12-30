ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


RegisterCommand('animmenu', function ()
    openCategoryKenu()
end)

function startAnim(lib, anim)
	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 1, 0, false, false, false)
	end)
end
function startScenario(anim)
	TaskStartScenarioInPlace(PlayerPedId(), anim, 0, false)
end
function startAttitude(lib, anim)
	ESX.Streaming.RequestAnimSet(lib, function()
		SetPedMovementClipset(PlayerPedId(), anim, true)
	end)
end









function openCategoryKenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'animation', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Grueßen', value = 1},
			{label = 'Anlehnen',   value = 2},
            {label = 'Sitzen', value = 3},
            {label = 'Erotik', value = 4},
            {label = 'Liegen', value = 5},
            {label = 'Gewalt', value = 6},
            {label = 'Taenze', value = 8},
            {label = 'Meditieren', value = 7},
            {label = 'Job', value = 9},
            {label = 'Aktionen', value = 10},
            {label = 'Sport', value = 69},

	}}, function(data, menu)
        menu.close()
        if data.current.value == 7 then
            openMeditateMenu()
        end
        if data.current.value == 2 then
            openLeanMenu()
        end
        if data.current.value == 4 then
            openErotikMenu()
        end
        if data.current.value == 69 then
            openSportMenu()
        end
        if data.current.value == 10 then
            openActionMenu()
        end
        if data.current.value == 5 then
            openLayMenu()
        end
        if data.current.value == 1 then
            openSaluteMenu()
        end
        if data.current.value == 6 then
            openGewaltMenu()
        end
        if data.current.value == 3 then
            openSitMenu()
        end
        if data.current.value == 8 then
            openDanceMenu()
        end
        if data.current.value == 9 then
            openJobMenu()
        end
	end, function(data, menu)
		menu.close()
	end)
end






function openLeanMenu() 
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'lean', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
            {label = 'Lehnen', value = 1, scenario = 'WORLD_HUMAN_LEANING'},
			{label = 'Lehnen 2', value = 2, lib = 'amb@world_human_leaning@female@wall@back@hand_up@idle_a', anim = 'idle_a'},
            {label = 'Lehnen 3', value = 2, lib = 'amb@world_human_leaning@female@wall@back@holding_elbow@idle_a', anim = 'idle_a'},
            {label = 'Lehnen 4', value = 2, lib = 'amb@world_human_leaning@male@wall@back@foot_up@idle_a', anim = 'idle_a'},
            {label = 'Lehnen 5', value = 2, lib = 'amb@world_human_leaning@male@wall@back@hands_together@idle_b', anim = 'idle_b'},
            {label = 'Lehnen Flirtend', value = 2, lib = 'random@street_race', anim = '_car_a_flirt_girl'},
            {label = 'Lehnen Bar', value = 1, scenario = 'PROP_HUMAN_BUM_SHOPPING_CART'},
            {label = 'Lehnen Bar 2', value = 2, lib = 'amb@prop_human_bum_shopping_cart@male@idle_a', anim = 'idle_c'},
            {label = 'Lehnen Bar 3', value = 2, lib = 'anim@amb@nightclub@lazlow@ig1_vip@', anim = 'clubvip_base_laz'},
            {label = 'Lehnen Bar 4', value = 2, lib = 'anim@heists@prison_heist', anim = 'ped_b_loop_a'},
            {label = 'Lehnen Oben', value = 2, lib='anim@mp_ferris_wheel', anim = 'idle_a_player_one'},
            {label = 'Lehnen Oben 2', value = 2, lib='anim@mp_ferris_wheel', anim = 'idle_a_player_two'},
            {label = 'Lehnen Seitlich', value = 2, lib='timetable@mime@01_gc', anim = 'idle_a'},
            {label = 'Lehnen Seitlich 2', value = 2, lib='misscarstealfinale"', anim = 'packer_idle_1_trevor'},
            {label = 'Lehnen Seitlich 3', value = 2, lib='misscarstealfinalecar_5_ig_1', anim = 'waitloop_lamar'},
            {label = 'Lehnen Seitlich 4', value = 2, lib='misscarstealfinalecar_5_ig_1', anim = 'waitloop_lamar'},
            {label = 'Lehnen Seitlich 5', value = 2, lib='rcmjosh2', anim = 'josh_2_intp1_base'},
            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
           startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end

function openActionMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'action', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
            {label = 'Finger Zeigen', value = 2, lib = 'gestures@f@standing@casual', anim = 'gesture_point'},
            {label = 'SMS Schreiben', value = 1, scenario = 'WORLD_HUMAN_STAND_MOBILE'},
            {label = 'Block', value = 1, scenario = 'CODE_HUMAN_MEDIC_TIME_OF_DEATH'},
            {label = 'Rauchen', value = 1, scenario = 'WORLD_HUMAN_SMOKING'},
            {label = 'Joint Rauchen', value = 1, scenario = 'WORLD_HUMAN_DRUG_DEALER'},
            {label = 'Kniend Ergeben', value = 2, lib = 'random@arrests@busted', anim = 'idle_a'},
            {label = 'Klatschen', value = 2, lib = 'amb@world_human_cheering@male_a', anim = 'base'},
            {label = 'Klatschen Genervt', value = 2, lib = 'anim@arena@celeb@flat@solo@no_props@', anim = 'angry_clap_a_player_a'},
            {label = 'Nachdenken', value = 2, lib = 'misscarsteal4@aliens', anim = 'rehearsal_base_idle_director'},
            {label = 'Nachdenken 2', value = 2, lib = 'mp_cp_welcome_tutthink', anim = 'b_think'},
            {label = 'Nachdenken 3', value = 2, lib = 'timetable@tracy@ig_8@base', anim = 'base'},
            {label = 'Nachdenken 4', value = 2, lib = 'missheist_jewelleadinout', anim = 'jh_int_outro_loop_a'},
            {label = 'Daumen Hoch', value = 2, lib = 'anim@mp_player_intupperthumbs_up', anim = 'idle_a'},
            {label = 'Daumen Hoch 2', value = 2, lib = 'anim@mp_player_intselfiethumbs_up', anim = 'idle_a'},
            {label = 'Daumen Hoch 3', value = 2, lib = 'anim@mp_player_intincarthumbs_uplow@ds@', anim = 'enter'},
            {label = 'Tastatur Tippen', value = 2, lib = 'anim@heists@prison_heiststation@cop_reactions', anim = 'cop_b_idle'},
            {label = 'Yeah', value = 2, lib = 'anim@mp_player_intupperair_shagging', anim = 'idle_a'},
            {label = 'Auf dem Boden kraulen', value = 2, lib = 'move_injured_ground', anim = 'front_loop'},
            {label = 'Clipboard', value = 1, scenario = 'WORLD_HUMAN_CLIPBOARD'},
            {label = 'ATM benutzen', value = 1, scenario = 'PROP_HUMAN_ATM'},

            

	}}, function(data, menu)
        menu.close()

        if data.current.value == 1 then
           startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end

            
function openDanceMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'dance', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Tanzen', value = 2, lib = 'anim@amb@nightclub@dancers@solomun_entourage@', anim = 'mi_dance_facedj_17_v1_female^1'},
            {label = 'Tanzen 2', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', anim = 'high_center'},
            {label = 'Tanzen 3', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', anim = 'high_center_up'},
            {label = 'Tanzen 4', value = 2, lib = 'anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity', anim = 'hi_dance_facedj_09_v2_female^1'},
            {label = 'Tanzen 5', value = 2, lib = 'anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity', anim = 'hi_dance_facedj_09_v2_female^3'},
            {label = 'Tanzen 6', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', anim = 'high_center_up'},
            {label = 'Tanzen 7', value = 2, lib = 'anim@amb@nightclub@dancers@podium_dancers@', anim = 'hi_dance_facedj_17_v2_male^5'},
            {label = 'Tanzen 8', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@male@var_b@', anim = 'high_center_down'},
            {label = 'Tanzen 9', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@male@var_a@', anim = 'high_center'},
            {label = 'Tanzen 10', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@male@var_b@', anim = 'high_center_up'},
            {label = 'Tanzen 11', value = 2, lib = 'misschinese2_crystalmazemcs1_cs', anim = 'dance_loop_tao'},
            {label = 'Tanzen 12', value = 2, lib = 'misschinese2_crystalmazemcs1_ig', anim = 'dance_loop_tao'},
            {label = 'Tanzen 13', value = 2, lib = 'missfbi3_sniping', anim = 'dance_m_default'},
            {label = 'Tanzen 14', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', anim = 'med_center_up'},
            {label = 'Tanzen 15', value = 2, lib = 'anim@amb@casino@mini@dance@dance_solo@female@var_a@', anim = 'med_center'},
            {label = 'Tanzen Schnell', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', anim = 'high_center'},
            {label = 'Tanzen Schnell 2', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', anim = 'high_center_up'},
            {label = 'Tanzen Schuechtern', value = 2, lib = 'anim@ambF@nightclub@mini@dance@dance_solo@male@var_a@', anim = 'low_center'},
            {label = 'Tanzen Schuechtern 2', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', anim = 'low_center_down'},
            {label = 'Tanzen Peinlich', value = 2, lib = 'rcmnigel1bnmt_1b', anim = 'dance_loop_tyler'},
            {label = 'Tanzen Peinlich 2', value = 2, lib = 'special_ped@mountain_dancer@monologue_3@monologue_3a', anim = 'mnt_dnc_buttwag'},
            {label = 'Tanzen Peinlich 3', value = 2, lib = 'move_clown@p_m_zero_idles@', anim = 'fidget_short_dance'},
            {label = 'Tanzen Peinlich 4', value = 2, lib = "move_clown@p_m_two_idles@", anim = 'fidget_short_dance'},
            {label = 'Tanzen Peinlich 5', value = 2, lib = "anim@amb@nightclub@lazlow@hi_podium@", anim = 'danceidle_hi_11_buttwiggle_b_laz'},
            {label = 'Tanzen Peinlich 6', value = 2, lib = "timetable@tracy@ig_5@idle_a", anim = 'idle_a'},
            {label = 'Tanzen Peinlich 7', value = 2, lib = "timetable@tracy@ig_8@idle_b", anim = 'idle_d'},
            {label = 'Tanzen Peinlich 8', value = 2, lib = "anim@mp_player_intcelebrationfemale@the_woogie", anim = 'the_woogie'},
            {label = 'Tanzen Peinlich 9', value = 2, lib = "anim@amb@casino@mini@dance@dance_solo@female@var_b@", anim = 'high_center'},
            {label = 'Tanzen Langsam', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', anim = 'low_center'},
            {label = 'Tanzen Langsam 2', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', anim = 'low_center_down'},
            {label = 'Tanzen Langsam 3', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', anim = 'low_center'},
            {label = 'Tanzen Langsam 4', value = 2, lib = 'anim@amb@nightclub@mini@dance@dance_solo@male@var_b@', anim = 'low_center'},
            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end

function openMeditateMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'meditate', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Meditieren', value = 2, lib = 'rcmcollect_paperleadinout@', anim = 'meditiate_idle'},
            {label = 'Meditieren 2', value = 2, lib = 'rcmepsilonism3', anim = 'ep_3_rcm_marnie_meditating'},
            {label = 'Meditieren 3', value = 2, lib = 'rcmepsilonism3', anim = 'base_loop'},
            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end

function openSportMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sport', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Situps', value = 2, lib = 'amb@world_human_sit_ups@male@idle_a', anim = 'idle_a'},
            {label = 'Liegestüzen', value = 2, lib = 'amb@world_human_push_ups@male@idle_a', anim = 'idle_d'},
            {label = 'Ausser Atem', value = 2, lib = 're@construction', anim = 'out_of_breath'},
            {label = 'Yoga Bewebungen', value = 1, scenario = 'WORLD_HUMAN_YOGA'},

            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end


	end, function(data, menu)
		menu.close()        openCategoryKenu()
	end)
end

function openErotikMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'erotik', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Eier kratzen', value = 2, lib = 'mp_player_int_uppergrab_crotch', anim = 'mp_player_int_grab_crotch'},
            {label = 'Stripen', value = 2, lib = 'mini@strip_club@lap_dance@ld_girl_a_song_a_p1', anim = 'ld_girl_a_song_a_p1_f'},
            {label = 'Stripen 2', value = 2, lib = 'mini@strip_club@private_dance@part2', anim = 'priv_dance_p2'},
            {label = 'Jemanden Erregen', value = 1, scenario = 'WORLD_HUMAN_PROSTITUTE_HIGH_CLASS'},
            {label = 'Stripen Boden', value = 2, lib = 'mini@strip_club@private_dance@part3', anim = 'priv_dance_p3'},
            {label = 'Seine Hüfte zeigen', value = 2, lib = 'mini@strip_club@backroom@', anim = 'stripper_b_backroom_idle_b'},
            {label = 'Twerken', value = 2, lib = 'switch@trevor@mocks_lapdance', anim = '001443_01_trvs_28_idle_stripper'},
            {label = 'Mann Sex Auto', value = 2, lib = 'mini@prostitutes@sexlow_veh', anim = 'low_car_sex_loop_player'},
            {label = 'Frau Sex Auto', value = 2, lib = 'mini@prostitutes@sexlow_veh', anim = 'low_car_sex_loop_female'},
            {label = 'Abspritzen', value = 2, lib = 'anim@mp_player_intcelebrationmale@wank', anim = 'wank'},
            {label = 'Doggy Mann', value = 2, lib = 'rcmpaparazzo_2', anim = 'shag_loop_a'},
            {label = 'Doggy Frau', value = 2, lib = 'rcmpaparazzo_2', anim = 'shag_loop_poppy'},
            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end

function openSaluteMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'salute', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Gangsign', value = 2, lib = 'mp_player_int_uppergang_sign_a', anim = 'mp_player_int_gang_sign_a'},
            {label = 'Gangsign 2', value = 2, lib = 'mp_player_int_uppergang_sign_b', anim = 'mp_player_int_gang_sign_b'},
            {label = 'Salutieren Rechts', value = 2, lib = 'anim@mp_player_intincarsalutestd@ds@', anim = 'idle_a'},
            {label = 'Salutieren Links', value = 2, lib = 'anim@mp_player_intincarsalutestd@ps@', anim = 'idle_a'},
            {label = 'Handschlag', value = 2, lib = 'mp_ped_interaction', anim = 'handshake_guy_a'},
            {label = 'Handschlag 2', value = 2, lib = 'mp_ped_interaction', anim = 'handshake_guy_b'},
            {label = 'Umarmen', value = 2, lib = 'mp_ped_interaction', anim = 'kisses_guy_a'},
            {label = 'Umarmen 2', value = 2, lib = 'mp_ped_interaction', anim = 'kisses_guy_b'},
            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

        openCategoryKenu()
	end, function(data, menu)
		menu.close()
	end)
end

function openGewaltMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'gewalt', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Schlagen', value = 2, lib = 'melee@unarmed@streamed_variations', anim = 'plyr_takedown_front_slap'},
            {label = 'Schlagen 2', value = 2, lib = 'melee@unarmed@streamed_variations', anim = 'plyr_takedown_front_backslap'},
            {label = 'Schlagen Fest', value = 2, lib = 'melee@unarmed@streamed_variations', anim = 'plyr_takedown_rear_lefthook'},
            {label = 'Kopfnuss', value = 2, lib = 'melee@unarmed@streamed_variations', anim = 'plyr_takedown_front_headbutt'},

            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end

function openJobMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'job', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Cop', value = 1, scenario = 'WORLD_HUMAN_COP_IDLES'},
            {label = 'Cop 2', value = 2, lib = 'anim@amb@nightclub@peds@', anim = 'rcmme_amanda1_stand_loop_cop'},
            {label = 'Cop 3', value = 2, lib = 'amb@code_human_police_investigate@idle_a', anim = 'idle_b'},
            {label = 'CPR', value = 2, lib = 'mini@cpr@char_a@cpr_str', anim = 'cpr_pumpchest'},
            {label = 'Gaertner Laublaeser', value = 1, scenario = 'WORLD_HUMAN_GARDENER_LEAF_BLOWER'},
            {label = 'Arbeiter Flex', value = 1, scenario = 'WORLD_HUMAN_MUSCLE_FLEX'},
            {label = 'Arbeiter Schweissen', value = 1, scenario = 'WORLD_HUMAN_WELDING'},
            {label = 'Koch BBQ', value = 1, scenario = 'PROP_HUMAN_BBQ'},


            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end

function openLayMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'lay', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Liegen Seitlich Links', value = 2, lib = 'amb@world_human_bum_slumped@male@laying_on_left_side@base', anim = 'base'},
            {label = 'Liegen Seitlich Links Aufstehen', value = 2, lib = 'amb@world_human_bum_slumped@male@laying_on_left_side@flee', anim = 'forward'},
            {label = 'Liegen Seitlich Links 2', value = 2, lib = 'amb@world_human_bum_slumped@male@laying_on_left_side@idle_a', anim = 'idle_b'},
            {label = 'Liegen Seitlich Rechts', value = 2, lib = 'amb@world_human_bum_slumped@male@laying_on_right_side@base', anim = 'base'},
            {label = 'Liegen Seitlich Rechts Aufstehen', value = 2, lib = 'amb@world_human_bum_slumped@male@laying_on_right_side@flee', anim = 'forward'},
            {label = 'Liegen Seitlich Rechts 2', value = 2, lib = 'amb@world_human_bum_slumped@male@laying_on_right_side@idle_a', anim = 'idle_a'},
            {label = 'Liegen Seitlich Rechts 3', value = 2, lib = 'amb@world_human_bum_slumped@male@laying_on_right_side@idle_b', anim = 'idle_d'},
            {label = 'Liegen Bewustloss', value = 2, lib = 'combat@damage@rb_writhe', anim = 'rb_writhe_loop'},
            {label = 'Liegen Leichensack', value = 2, lib = 'anim@gangops@morgue@table@', anim = 'body_search'},
            {label = 'Liegen Verstorben', value = 2, lib = 'dead', anim = 'dead_e'},

            

	}}, function(data, menu)
        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()


	end)
end

function openSitMenu()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'sit', {
		title    = 'Animationen',
		align    = 'top-left',
		elements = {
			{label = 'Sitzen Boden', value = 2, lib = 'anim@amb@business@bgen@bgen_no_work@', anim = 'sit_phone_phoneputdown_idle_nowork'},
            {label = 'Sitzen Boden 2', value = 2, lib = 'rcm_barry3', anim = 'barry_3_sit_loop'},
            {label = 'Sitzen Boden 3', value = 2, lib = 'amb@world_human_picnic@male@idle_a', anim = 'idle_a'},
            {label = 'Sitzen Boden 4', value = 2, lib = 'amb@world_human_picnic@female@idle_a', anim = 'idle_a'},
            {label = 'Sitzen Boden 5', value = 2, lib = 'anim@heists@fleeca_bank@ig_7_jetski_owner', anim = 'owner_idle'},
            {label = 'Sitzen Boden 6', value = 2, lib = 'timetable@jimmy@mics3_ig_15@"', anim = 'idle_a_jimmy'},
            {label = 'Sitzen Boden 7', value = 2, lib = 'anim@amb@nightclub@lazlow@lo_alone@', anim = 'lowalone_base_laz'},
            {label = 'Sitzen Boden 8', value = 2, lib = 'timetable@jimmy@mics3_ig_15@', anim = 'mics3_15_base_jimmy'},
            {label = 'Sitzen Boden 9', value = 2, lib = 'amb@world_human_stupor@male@idle_a', anim = 'idle_a'},
            {label = 'Sitzen Lehnen', value = 2, lib = 'timetable@tracy@ig_14@', anim = 'ig_14_base_tracy'},
            {label = 'Sitzen Traurig', value = 2, lib = 'sit_phone_phoneputdown_sleeping-noworkfemale', anim = 'ig_14_base_tracy'},
            {label = 'Sitzen Beaenstigt', value = 2, lib = 'anim@heists@ornate_bank@hostages@hit', anim = 'hit_loop_ped_b'},
            {label = 'Sitzen Beaenstigt 2', value = 2, lib = 'anim@heists@ornate_bank@hostages@ped_c@', anim = 'flinch_loop'},
            {label = 'Sitzen Beaenstigt 3', value = 2, lib = 'anim@heists@ornate_bank@hostages@ped_e@', anim = 'flinch_loop'},
            {label = 'Sitzen Betrunken', value = 2, lib = 'timetable@amanda@drunk@base', anim = 'base'},
            {label = 'Sitzen Stuhl', value = 1, scenario = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER'},
            {label = 'Sitzen Stuhl 2', value = 2, lib = 'timetable@ron@ig_5_p3', anim = 'ig_5_p3_base'},
            {label = 'Sitzen Stuhl 3', value = 2, lib = 'timetable@reunited@ig_10', anim = 'base_amanda'},
            {label = 'Sitzen Stuhl 4', value = 2, lib = 'timetable@ron@ig_3_couch', anim = 'base'},
            {label = 'Sitzen Stuhl 5', value = 2, lib = 'timetable@jimmy@mics3_ig_15@",', anim = 'mics3_15_base_tracy'},
            {label = 'Sitzen Stuhl 6', value = 2, lib = 'timetable@maid@couch@', anim = 'base'},
            {label = 'Sitzen Stuhl Seitlich', value = 2, lib = 'timetable@ron@ron_ig_2_alt1', anim = 'ig_2_alt1_base'},


            

	}}, function(data, menu)

        menu.close()
        if data.current.value == 1 then
            startScenario(data.current.scenario)
        end
        if data.current.value == 2 then
            startAnim(data.current.lib, data.current.anim)
            
        end

	end, function(data, menu)
		menu.close()        openCategoryKenu()

	end)
end
