-- FUNCTIONS PACKAGE //

function f_stop()

    _ , ped = GetEntityPlayerIsFreeAimingAt( PlayerId() )

    flee_chance = math.random( 1, 100 )

    if flee_chance <= 85 then

        Citizen.CreateThread( function() 
            
            ShowNotification( '[~b~GFR~w~] Person ~b~stopped~w~!' )

            SetBlockingOfNonTemporaryEvents( ped, true )
            SetEntityAsMissionEntity( ped )
            RemoveAllPedWeapons( ped )

            TaskHandsUp( ped, 60.0, 0, -1, true )

            ped_stopped = true

        end )

    else

        ped_stopped = false
        ShowNotification( '[~b~GFR~w~] Person ~r~fleeing~w~!' )
        SetEntityAsNoLongerNeeded( ped )
        TaskSmartFleePed( ped, player, 100.0, -1 )

    end

end

function f_id()

    fn_list = { 'Avery', 'Riley', 'Jordan', 'Parker', 'Peyton', 'Quinn', 'Blake', 'Hayden', 'Taylor', 'Alexis', 'Charlie', 'Emerson', 'Finley', 'River', 'Emery', 'Morgan', 'Elliot', 'Eden', 'Karter', 'Dakota', 'Reese', 'Remington', 'Payton', 'Kendall', 'Harley', 'Rylan', 'Marley', 'Dallas', 'Skyler', 'Sage', 'Ellis', 'Rory', 'Remi', 'Ali', 'Kamryn', 'Addison', 'Adrian', 'Bailey', 'Brett', 'Casey', 'Jayden' }
    fn = fn_list[ math.random( #fn_list ) ]

    ln_list = { 'Smith', 'Jones', 'Taylor', 'Williams', 'Brown', 'Davies', 'Evans', 'Wilson', 'Thomas', 'Roberts', 'Johnson', 'Lewis', 'Walker', 'Robinson', 'Wood', 'Thompson', 'White', 'Watson', 'Jackson', 'Wright' }
    ln = ln_list[ math.random( #ln_list ) ]

    dob_month = math.random( 1,12 )
    dob_day = math.random( 1,30 )
    dob_year = math.random( 1960,2002 )
    dob = ( dob_month .. '/' .. dob_day .. '/' .. dob_year )

    city_list = { 'Los Santos', 'Sandy Shores', 'Grapeseed', 'Harmony', 'Paleto Bay' }
    city = city_list[ math.random( #city_list ) ]

    observe_list = { 'Normal', 'Normal', 'Normal', 'Normal' , 'Normal', 'Normal', 'Normal', 'Normal', 'Normal' , 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal' , 'Normal', 'Normal', 'Normal', 'Normal', 'Nervous', 'Slurred Speech', 'Angry', 'Smell of alcohol', 'Smell of marijuana' }
    observe = observe_list[ math.random( #observe_list ) ]

    traffic_observe_list = { 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Pipe', 'Scale', 'Drug residue' }
    traffic_observe = traffic_observe_list[ math.random( #traffic_observe_list ) ]

    ShowNotification( '[~b~GFR~w~] DRIVER LICENSE\nName: ~b~' .. fn .. ' ' .. ln .. '~n~~w~DOB: ~b~' .. dob .. '~n~~w~City: ~b~' .. city )

    ShowNotification( '[~b~GFR~w~] OBSERVATION ~n~~c~' .. observe )

    if traffic_stop == true then

        ShowNotification( '[~b~GFR~w~] Vehicle Observation: ~c~~n~' .. traffic_observe )

    end

end

function f_cuff()

    ClearPedTasks( ped )
    SetBlockingOfNonTemporaryEvents( ped, true )
    TaskPlayAnim( ped, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0 )
    cuffed = true

end

function f_uncuff()

    ClearPedTasks( ped )
    ClearPedSecondaryTask( ped )
    SetBlockingOfNonTemporaryEvents( ped, true )
    cuffed = false

end

function f_grab()

    AttachEntityToEntity( ped, player, 11816, -0.3, 0.4, 0.0, 0.0, 0.0, false, false, false, false, 2, true )
    SetBlockingOfNonTemporaryEvents( ped, true )
    grabbed = true

end

function f_ungrab()

    DetachEntity( ped, true, false )
    SetBlockingOfNonTemporaryEvents( ped, true )
    grabbed = false

end

function f_sit()

    TaskPlayAnim( ped, 'random@arrests@busted', 'idle_a', 8.0, 1.0, -1, 9, 0, 0, 0, 0 )
    SetBlockingOfNonTemporaryEvents( ped, true )
    sitting = true

end

function f_up()

    TaskPlayAnim( ped, 'random@arrest', 'kneeling_arrest_get_up', 8.0, 1.0, -1, 128, 0, 0, 0, 0 )
    SetBlockingOfNonTemporaryEvents( ped, true )
    sitting = false

end

function f_ped_search()
        
    search_time = 7
    ShowNotification( '[~b~GFR~w~] Searching...' )

    Citizen.CreateThread( function() 
        
        while search_time ~= 0 do

            Wait( 1000 )

            search_time = search_time - 1

        end

        item_list = { 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Needle', 'Needle', 'Needle', 'Pipe', 'Pipe', 'Pipe', 'Marijuana', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Gun', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Knife', 'Knife', 'Knife', 'Pills', 'Dildo', 'Used condom', 'Scale', '50 $100 bills', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Cigarettes', 'Car Keys', 'Phone', '$20' }
        item1 = item_list[ math.random( #item_list ) ]
        item2 = item_list[ math.random( #item_list ) ]
        item3 = item_list[ math.random( #item_list ) ]
    
        ShowNotification( '[~b~GFR~w~] You found: ~n~~g~' .. item1 .. '~n~' .. item2 .. '~n~' .. item3 )

    end )

end

function f_vehicle_search()
        
    search_time = 7
    ShowNotification( '[~b~GFR~w~] Searching...' )

    Citizen.CreateThread( function() 
        
        while search_time ~= 0 do

            Wait( 1000 )

            search_time = search_time - 1

        end

        item_list = { 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Nothing', 'Needle', 'Needle', 'Needle', 'Pipe', 'Pipe', 'Pipe', 'Marijuana', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Gun', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Knife', 'Knife', 'Knife', 'Pills', 'Dildo', 'Used condom', 'Scale', '50 $100 bills', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Baggie of unknown substance', 'Cigarettes', 'Car Keys', 'Phone', '$20', 'Packages of Cocaine', 'Packages of Fentanyl', 'Packages of Heroine' }
        item1 = item_list[ math.random( #item_list ) ]
        item2 = item_list[ math.random( #item_list ) ]
        item3 = item_list[ math.random( #item_list ) ]
    
        ShowNotification( '[~b~GFR~w~] You found: ~n~~g~' .. item1 .. '~n~' .. item2 .. '~n~' .. item3 )

    end )

end

function f_fieldsobriety()

    if ped ~= 0 then
        
        fst_amount = math.random( 0, 5)
        fst_time = 10
        ShowNotification( '[~b~GFR~w~] Performing ~b~field sobriety test~w~...' )
    
        ped_starting_pos = GetEntityCoords( ped )
    
        TaskGoStraightToCoord( ped, GetEntityCoords( player ), 1.0, -1, GetEntityHeading( player ), 1 )
    
        Wait( 6000 )
    
        ClearPedTasks( ped )
    
        TaskGoStraightToCoord( ped, ped_starting_pos.x, ped_starting_pos.y, ped_starting_pos.z, 1.0, -1, GetEntityHeading( player ), 1 )
    
        Wait( 6000 )
    
        ClearPedTasks( ped )
    
        ShowNotification( '[~b~GFR~w~] FST result: ~b~' .. fst_amount .. '~w~/~b~5' )

    end

end

function f_breathalyzer()

    ShowNotification( 'Performing Breathalyzer Test...' )

    dui_list = { 1, 1, 2 }
    dui_chance = dui_list[ math.random( #dui_list ) ]

    if dui_chance == 1 then

        dui_level_rand = math.random( 10, 35 )
        dui_level = '0.' .. dui_level_rand .. '%'

        ShowNotification( 'BAC LEVEL: ~r~' .. dui_level )

    else

        ShowNotification( 'BAC LEVEL: ~g~0.00%' )

    end

end

function f_leave()

    SetEntityAsNoLongerNeeded( ped )

    ped = 0

    ShowNotification( '[~b~GFR~w~] Ped ~b~dismissed~w~!' )

end

function f_book()

    ClearPedTasks( ped )
    ClearPedSecondaryTask( ped )
    SetEntityAsNoLongerNeeded( ped )
    DeleteEntity( ped )

    ShowNotification( '[~b~GFR~w~] Ped ~b~booked~w~!' )

end

function f_out()

    SetBlockingOfNonTemporaryEvents( driver, true )

    TaskLeaveVehicle( driver, vehicle, 0 )

    driver = ped

    takeout_chance = math.random( 1, 100 )

    if takeout_chance > 90 then

        GetRandomWeapon()

        GiveWeaponToPed( driver, weaponhash, 1000, 1, 1 )

        TaskCombatPed( driver, player, 0, 16 )

    end

end

function f_cite()

    ShowNotification( '[~b~GFR~w~] Issued ~b~citation~w~!' )

end

function f_warn()

    ShowNotification( '[~b~GFR~w~] Issued ~b~warning~w~!' )

end

function f_runid()

    p_mvd_list = { 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Valid', 'Expired License', 'Suspended License' }
    p_mvd = p_mvd_list[ math.random( #p_mvd_list ) ]

    p_ncic_list = { 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'Warrant' }
    p_ncic = p_ncic_list[ math.random( #p_ncic_list ) ]

    if p_mvd == 'Valid' then

        p_mvd_rgb_color = '~b~'

    else

        p_mvd_rgb_color = '~r~'

    end

    if p_ncic == 'No record' then

        p_ncic_rgb_color = '~b~'

    else

        p_ncic_rgb_color = '~r~'

    end

    ShowNotification( '~b~[' .. rn_arg .. ']\n~w~License Status: ' .. p_mvd_rgb_color .. p_mvd .. '\n~w~NCIC Status: ' .. p_ncic_rgb_color .. p_ncic )

    if p_ncic == 'Warrant' then

        warrant_list = { 'Theft', 'Assault', 'Battery', 'Sexual Assault', 'Murder', 'Hit and Run', 'Manslaughter', 'Drug Paraphernalia', 'Drug sales', 'Homicide' }
        warrant = warrant_list[ math.random( #warrant_list ) ]

        ShowNotification( 'Warrant: ' .. '~r~' .. warrant )

    end

end

function f_runplate()

    v_mvd_list = { 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Expired Registration', 'Expired Insurance' }
    v_mvd = v_mvd_list[ math.random( #v_mvd_list ) ]

    v_ncic_list = { 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'No record', 'Stolen' }
    v_ncic = v_ncic_list[ math.random( #v_ncic_list ) ]

    if v_mvd == 'Normal' then

        v_mvd_rgb_color = '~b~'

    else

        v_mvd_rgb_color = '~r~'

    end

    if v_ncic == 'No record' then

        v_ncic_rgb_color = '~b~'

    else

        v_ncic_rgb_color = '~r~'

    end

    if used_command == true then

        if alpr_stolen == true then

            v_ncic = '~r~Stolen'

            alpr_stolen = false

        end

        ShowNotification( '~b~[' .. veh_plate .. ']\n~w~Plate Status: ' .. v_mvd_rgb_color .. v_mvd .. '\n~w~NCIC Status: ' .. v_ncic_rgb_color .. v_ncic )

        used_command = false

    end

end

function f_rp()

    rp_list = { 'True', 'False' }
    rp = rp_list[ math.random( #rp_list ) ]

    ShowNotification( '[~b~GFR~w~] RP Check: ' .. '~b~' .. rp )

end

function f_investigate()

    investigate_time = 10
    ShowNotification( '[~b~GFR~w~] Investigating ~b~body~w~...' )

    Citizen.CreateThread( function() 
        
        while investigate_time ~= 0 do

            Wait( 1000 )

            investigate_time = investigate_time - 1

        end

        reason_list = { 'Heart Attack', 'Stroke', 'Suicide by gun', 'Suicide by knife', 'Shot', 'Stabbed', 'Beat to death', 'Poisoned', 'Overdose', 'Stroke', 'Cardiac Arrest' }
        reason = reason_list[ math.random( #reason_list ) ]
    
        ShowNotification( '[~b~GFR~w~] Cause of Death: ~b~' .. reason )

    end )

end

function f_status()

    if onduty == true then

        ShowNotification( '[~b~GFR~w~] STATUS: ' .. '~b~AVAIL' )

    elseif onduty == false  then

        ShowNotification( '[~b~GFR~w~] STATUS: ' .. '~r~BUSY' )

    end

end

function f_call()

    ShowNotification( '[~b~GFR~w~] Active Call: ~b~' .. call )
    ShowNotification( 'Involvements: ~b~' .. involvements )
    ShowNotification( 'Comments: ~c~' .. call_details )

end

function f_ondt()

    ondt_pending_calls = math.random( 0, 3 )

    ShowNotification( '[~b~GFR~w~] Pending Calls: ' .. ondt_pending_calls )

end

function f_avail()

    onduty = true
    
    call_time = call_time_set

    callstatus = 'AVAIL'

    ShowNotification( '[~b~GFR~w~] STATUS: ~b~AVAIL' )
    
end

function f_os()

    RemoveBlip( call_blip )

    ShowNotification( '[~b~GFR~w~] STATUS: ~r~OS' )

end

function f_busy()

    onduty = false

    ShowNotification( '[~b~GFR~w~] STATUS: ~r~BUSY' )

end

function f_cmplt()

    RemoveBlip( call_blip )

    onduty = true

    call = ''
    call_details = ''
    involvements = ''

    disposition = 1
    history = ''
    preface = 'Respond to me in one short sentence like you are in los santos being questioned by a police officer(me)'
    text = ''

    print( '[GFR] AI Reset!' )

    ShowNotification( '[~b~GFR~w~] Call Completed' )

end

function f_drugtest()

    drug_time = 5
    ShowNotification( '[~b~GFR~w~] Testing ~b~drugs~w~...' )

    Citizen.CreateThread( function() 
        
        while drug_time ~= 0 do

            Wait( 1000 )

            drug_time = drug_time - 1

        end

        drug_list = { 'Marijuana', 'Cocaine', 'Heroine', 'Methamphetamine', 'Fentanyl', 'LSD', 'Acid', 'PCP' }
        drug_result = drug_list[ math.random( #drug_list ) ]

        ShowNotification( '[~b~GFR~w~] Tested ~b~Positive ~w~for: ~r~' .. drug_result )

    end ) 

end

function f_rec()
    
    rec_time = 5
    ShowNotification( '[~b~GFR~w~] Checking ~b~recreation permits~w~...' )

    Citizen.CreateThread( function() 
        
        while rec_time ~= 0 do

            Wait( 1000 )

            rec_time = rec_time - 1

        end

        hunting_list = { 'Valid', 'Valid', 'None' }
        hunting = hunting_list[ math.random( #hunting_list ) ]
    
        fishing_list = { 'Valid', 'Valid', 'None' }
        fishing = fishing_list[ math.random( #fishing_list ) ]

        camping_list = { 'Valid', 'Valid', 'None' }
        camping = camping_list[ math.random( #camping_list ) ]
    
        ShowNotification( '[~b~GFR~w~] Licenses \nHunting license: ~b~' .. hunting .. '\n~w~Fishing License: ~b~' .. fishing .. '\n~w~Camping License: ~b~' .. camping )

    end )

end

function f_confirm()

    warrant_time = 15
    ShowNotification( '[~b~GFR~w~] Confirming ~b~Warrant~w~...' )

    Citizen.CreateThread( function() 
        
        while warrant_time ~= 0 do

            Wait( 1000 )

            warrant_time = warrant_time - 1

        end

        warrant_confirm_list = { 1, 2 }
        warrant_confirm = warrant_confirm_list[ math.random( #warrant_confirm_list ) ]

        if warrant_confirm == 1 then

            ShowNotification( '[~b~GFR~w~] Warrant: \n~b~CONFIRMED' )

        else

            ShowNotification( '[~b~GFR~w~] Warrant: \n~r~NOT CONFIRMED' )

        end

    end )

end

function f_observe()

    observe_list = { 'None', 'None', 'None', 'None', 'None', 'Cracked windshield', 'Using cellphone', 'No seatbelt', 'View obstruction', 'Low vehicle', 'Low vehicle' }
    observe = observe_list[ math.random( #observe_list ) ]

    if observe == 'None' then

        ShowNotification( '[~b~GFR~w~] Observation: ~b~' .. observe )

    else

        ShowNotification( '[~b~GFR~w~] Observation: ~r~' .. observe )

    end

end

function f_wait()

    wait_time = math.random( 15, 25 )

    Citizen.CreateThread( function() 
    
        while wait_time ~= 0 do

            Citizen.Wait( 1000 )

            wait_time = wait_time - 1

        end

        ShowNotification( '[~b~GFR~w~] ' .. tr_arg .. ': ~b~Done~w~!' )

    end )

end

function f_knock()

    pos = GetEntityCoords( player )

    ShowNotification( '[~b~GFR~w~] Knocking~w~...' )

    GetRandomPed()

    knock = math.random( 1, 100 )

    if knock <= 75 then

        ped = CreatePed( 26, hash, pos.x + 1, pos.y + 1, pos.z + 0.5, 0.0, true, true )

    elseif knock >= 75 and knock <= 85 then

        ped = CreatePed( 26, hash, pos.x + 1, pos.y + 1, pos.z + 0.5, 0.0, true, true )

        GetRandomWeapon()

        GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )

        TaskCombatPed( ped, player, 0, 16 )

    elseif knock >= 85 and knock <= 100 then

        ShowNotification( '[~b~GFR~w~] KNOCK: ~b~No answer' )

    end

end

function f_uda()

    uda_count = math.random( 0, 7 )

    ShowNotification( '[~b~GFR~w~] UDA(s): ~b~' .. uda_count )

end

function f_putinvehicle()

    SetPedIntoVehicle( ped, patrol_vehicle, 2 )

    in_vehicle = true
    grabbed = false
    sitting = false


end

function f_takeoutvehicle()

    TaskLeaveVehicle( ped, patrol_vehicle, 16 )

    in_vehicle = false

end

function f_printcitation()

    citation_time = 15

    Citizen.CreateThread( function() 
        
        while citation_time ~= 0 do

            Citizen.Wait( 1000 )

            citation_time = citation_time - 1

        end

        ShowNotification( '[~b~GFR~w~] Citation issued:\n~c~' .. cite_arg )

    end )

end

function f_radio_ems()

    if call_ems == false then

        call_ems = true

        pos = GetEntityCoords( player )
        pos_h = GetEntityHeading( player )
        ems_pos_set = pos
        ems_pos_set_h = pos_h
        ems_time = math.random( 15, 25 )
    
        Citizen.CreateThread( function() 
        
            while ems_time ~= 0 do
    
                Wait( 1000 )

                ems_time = ems_time - 1
    
            end

            if call_ems == true then

                create_ems()

            end
    
        end )
    
        function create_ems()
    
            hash_ambulance = GetHashKey( 'aambulance' )
            hash_medic = GetHashKey( 's_m_m_paramedic_01' )
    
            while not HasModelLoaded( hash_ambulance ) do
    
                RequestModel( hash_ambulance )
                Wait( 1000 )
    
            end
    
            while not HasModelLoaded( hash_medic ) do
    
                RequestModel( hash_medic )
                Wait( 1000 )
    
            end
    
            ambulance = CreateVehicle( hash_ambulance, ems_pos_set.x, ems_pos_set.y, ems_pos_set.z, ems_pos_set_h, true, false )
            SetVehicleSiren( ambulance, true )
            SetVehicleHasMutedSirens( ambulance, true )
            SetVehicleEngineOn( ambulance, true, true, false )
    
            medic = CreatePed( 26, hash_medic, ems_pos_set.x, ems_pos_set.y, ems_pos_set.z, 0.0, true, true )
            SetPedIntoVehicle( medic, ambulance, -1 )
            TaskLeaveVehicle( medic, ambulance, 0 )

            ShowNotification( '[~b~GFR~w~] Ambulance ~b~OS~w~!' )

            TaskGoStraightToCoord( medic, GetEntityCoords( ped ), 1.0, -1, GetEntityHeading( medic ), 1 )
    
            ems_check_time = 25

            Citizen.CreateThread( function() 
            
                while ems_check_time ~= 0 do

                    Wait( 1000 )

                    ems_check_time = ems_check_time - 1

                end

                ems_check = math.random( 1, 2 )

                if ems_check == 1 then

                    DeleteEntity( ped )

                    ShowNotification( '[~b~GFR~w~] Transporting patient to hospital!' )

                else

                    ShowNotification( '[~b~GFR~w~] Patient does not need to go to hospital!' )

                end

            end )

        end
    
        ShowNotification( 'Ambulance ~r~en-route~w~!\nETA: ~b~' .. ems_time .. '~w~(s)' )

    elseif call_ems == true then

        call_ems = false

        SetEntityAsNoLongerNeeded( medic )
        SetEntityAsNoLongerNeeded( ambulance )

        ShowNotification( '[~b~GFR~w~] EMS dismissed!' )

    end

end

function f_radio_fire()

    if call_fire == false then

        call_fire = true

        pos = GetEntityCoords( player )
        pos_h = GetEntityHeading( player )
        fire_pos_set = pos
        fire_pos_set_h = pos_h
        fire_time = math.random( 15, 25 )
    
        Citizen.CreateThread( function() 
        
            while fire_time ~= 0 do
    
                Wait( 1000 )

                fire_time = fire_time - 1
    
            end

            if call_fire == true then

                create_fire()

            end
    
        end )
    
        function create_fire()
    
            hash_firetruck = GetHashKey( 'afiretruck' )
            hash_firefighter = GetHashKey( 's_m_y_fireman_01' )
    
            while not HasModelLoaded( hash_firetruck ) do
    
                RequestModel( hash_firetruck )
                Wait( 1000 )
    
            end
    
            while not HasModelLoaded( hash_firefighter ) do
    
                RequestModel( hash_firefighter )
                Wait( 1000 )
    
            end
    
            firetruck = CreateVehicle( hash_firetruck, fire_pos_set.x, fire_pos_set.y, fire_pos_set.z, fire_pos_set_h, true, false )
            SetVehicleSiren( firetruck, true )
            SetVehicleHasMutedSirens( firetruck, true )
            SetVehicleEngineOn( firetruck, true, true, false )
    
            firefighter = CreatePed( 26, hash_firefighter, fire_pos_set.x, fire_pos_set.y, fire_pos_set.z, 0.0, true, true )
            SetPedIntoVehicle( firefighter, firetruck, -1 )
            TaskLeaveVehicle( firefighter, firetruck, 0 )

            ShowNotification( '[~b~GFR~w~] Fire truck ~b~OS~w~!' )

        end
    
        ShowNotification( '[~b~GFR~w~] Fire truck ~r~en-route~w~!\nETA: ~b~' .. fire_time .. '~w~(s)' )

    elseif call_fire == true then

        call_fire = false

        SetEntityAsNoLongerNeeded( firetruck )
        SetEntityAsNoLongerNeeded( firefighter )

        ShowNotification( '[~b~GFR~w~] Fire truck dismissed!' )

    end

end

function f_radio_coroner()

    if ped ~= 0 and call_coroner == false then

        call_coroner = true

        pos = GetEntityCoords( player )
        pos_h = GetEntityHeading( player )
        coroner_pos_set = pos
        coroner_pos_set_h = pos_h
        coroner_time = math.random( 15, 25 )
    
        Citizen.CreateThread( function() 
        
            while coroner_time ~= 0 do
    
                Wait( 1000 )

                coroner_time = coroner_time - 1
    
            end

            if call_coroner == true then

                create_coroner()

            end
    
        end )
    
        function create_coroner()
    
            hash_coroner_van = GetHashKey( 'Speedo' )
            hash_coroner = GetHashKey( 's_m_m_scientist_01' )
    
            while not HasModelLoaded( hash_coroner_van ) do
    
                RequestModel( hash_coroner_van )
                Wait( 1000 )
    
            end
    
            while not HasModelLoaded( hash_coroner ) do
    
                RequestModel( hash_coroner )
                Wait( 1000 )
    
            end
    
            coroner_van = CreateVehicle( hash_coroner_van, coroner_pos_set.x, coroner_pos_set.y, coroner_pos_set.z, coroner_pos_set_h, true, false )
            SetVehicleSiren( coroner_van, true )
            SetVehicleHasMutedSirens( coroner_van, true )
            SetVehicleEngineOn( coroner_van, true, true, false )
    
            coroner = CreatePed( 26, hash_coroner, coroner_pos_set.x, coroner_pos_set.y, coroner_pos_set.z, 0.0, true, true )
            SetPedIntoVehicle( coroner, coroner_van, -1 )
            TaskLeaveVehicle( coroner, coroner_van, 0 )

            ShowNotification( '[~b~GFR~w~] Coroner ~b~OS~w~!' )

            TaskGoStraightToCoord( coroner, GetEntityCoords( ped ), 1.0, -1, GetEntityHeading( coroner ), 1 )
    
            coroner_take_time = 15

            Citizen.CreateThread( function() 
            
                while coroner_take_time ~= 0 do

                    Wait( 1000 )

                    coroner_take_time = coroner_take_time - 1

                end

                DeleteEntity( ped )

                ShowNotification( '[~b~GFR~w~] Coroner took custody of deceased!' )

            end )

        end
    
        ShowNotification( '[~b~GFR~w~] Coroner ~r~en-route~w~!\nETA: ~b~' .. coroner_time .. '~w~(s)' )

    elseif ped ~= 0 and call_coroner == true then

        call_coroner = false

        SetEntityAsNoLongerNeeded( coroner_van )
        SetEntityAsNoLongerNeeded( coroner )

        ShowNotification( '[~b~GFR~w~] Coroner dismissed!' )

    end

end

function f_radio_bp()

    if call_bp == false then

        call_bp = true

        pos = GetEntityCoords( player )
        pos_h = GetEntityHeading( player )
        bp_pos_set = pos
        bp_pos_set_h = pos_h
        bp_time = math.random( 15, 25 )
    
        Citizen.CreateThread( function() 
        
            while bp_time ~= 0 do
    
                Wait( 1000 )

                bp_time = bp_time - 1
    
            end

            if call_bp == true then

                create_bp()

            end
    
        end )
    
        function create_bp()
    
            hash_bp_van = GetHashKey( 'FBI2' )
            hash_bp = GetHashKey( 'csb_cop' )
    
            while not HasModelLoaded( hash_bp_van ) do
    
                RequestModel( hash_bp_van )
                Wait( 1000 )
    
            end
    
            while not HasModelLoaded( hash_bp ) do
    
                RequestModel( hash_bp )
                Wait( 1000 )
    
            end
    
            bp_van = CreateVehicle( hash_bp_van, bp_pos_set.x, bp_pos_set.y, bp_pos_set.z, bp_pos_set_h, true, false )
            SetVehicleCustomPrimaryColour( bp_van, 255, 255, 255 )
            SetVehicleSiren( bp_van, true )
            SetVehicleHasMutedSirens( bp_van, true )
            SetVehicleEngineOn( bp_van, true, true, false )
    
            bp = CreatePed( 26, hash_bp, bp_pos_set.x, bp_pos_set.y, bp_pos_set.z, 0.0, true, true )
            SetPedIntoVehicle( bp, bp_van, -1 )
            TaskLeaveVehicle( bp, bp_van, 0 )

            ShowNotification( '[~b~GFR~w~] BP ~b~OS~w~!' )

            TaskGoStraightToCoord( bp, GetEntityCoords( vehicle ), 1.0, -1, GetEntityHeading( bp ), 1 )
    
            bp_take_time = 30

            Citizen.CreateThread( function() 
            
                while bp_take_time ~= 0 do

                    Wait( 1000 )

                    bp_take_time = bp_take_time - 1

                end

                ShowNotification( '[~b~GFR~w~] BP took custody of UDA(s)!' )

            end )

        end
    
        ShowNotification( '[~b~GFR~w~] BP ~r~en-route~w~!\nETA: ~b~' .. bp_time .. '~w~(s)' )

    elseif call_bp == true then

        call_bp = false

        SetVehicleSiren( bp_van, false )

        SetEntityAsNoLongerNeeded( bp_van )
        SetEntityAsNoLongerNeeded( bp )

        ShowNotification( '[~b~GFR~w~] BP dismissed!' )

    end

end

function f_radio_pt()

    if call_pt == false then

        call_pt = true

        pos = GetEntityCoords( player )
        pos_h = GetEntityHeading( player )
        pt_pos_set = pos
        pt_pos_set_h = pos_h
        pt_time = math.random( 15, 25 )
    
        Citizen.CreateThread( function() 
        
            while pt_time ~= 0 do
    
                Wait( 1000 )

                pt_time = pt_time - 1
    
            end

            if call_pt == true then

                create_pt()

            end
    
        end )
    
        function create_pt()
    
            hash_pt_van = GetHashKey( 'PoliceT' )
            hash_pt = GetHashKey( 's_m_y_cop_01' )
    
            while not HasModelLoaded( hash_pt_van ) do
    
                RequestModel( hash_pt_van )
                Wait( 1000 )
    
            end
    
            while not HasModelLoaded( hash_pt ) do
    
                RequestModel( hash_pt )
                Wait( 1000 )
    
            end
    
            pt_van = CreateVehicle( hash_pt_van, pt_pos_set.x, pt_pos_set.y, pt_pos_set.z, pt_pos_set_h, true, false )
            SetVehicleCustomPrimaryColour( pt_van, 255, 255, 255 )
            SetVehicleSiren( pt_van, true )
            SetVehicleHasMutedSirens( pt_van, true )
            SetVehicleEngineOn( pt_van, true, true, false )
    
            pt = CreatePed( 26, hash_pt, pt_pos_set.x, pt_pos_set.y, pt_pos_set.z, 0.0, true, true )
            SetPedIntoVehicle( pt, pt_van, -1 )
            TaskLeaveVehicle( pt, pt_van, 0 )

            ShowNotification( '[~b~GFR~w~] PT ~b~OS~w~!' )

        end
    
        ShowNotification( '[~b~GFR~w~] PT ~r~en-route~w~!\nETA: ~b~' .. pt_time .. '~w~(s)' )

    elseif call_pt == true then

        call_pt = false

        SetVehicleSiren( pt_van, false )

        SetEntityAsNoLongerNeeded( pt_van )
        SetEntityAsNoLongerNeeded( pt )

        ShowNotification( '[~b~GFR~w~] PT dismissed!' )

    end

end

function f_radio_tow()

    if vehicle ~= 0 and call_tow == false then

        call_tow = true

        pos = GetEntityCoords( player )
        pos_h = GetEntityHeading( player )
        tow_pos_set = pos
        tow_pos_set_h = pos_h
        tow_time = math.random( 15, 25 )
    
        Citizen.CreateThread( function() 
        
            while tow_time ~= 0 do
    
                Wait( 1000 )

                tow_time = tow_time - 1
    
            end

            if call_tow == true then

                create_tow()

            end
    
        end )
    
        function create_tow()
    
            hash_tow_truck = GetHashKey( 'flatbed' )
            hash_tow_driver = GetHashKey( 's_m_y_xmech_01' )
    
            while not HasModelLoaded( hash_tow_truck ) do
    
                RequestModel( hash_tow_truck )
                Wait( 1000 )
    
            end
    
            while not HasModelLoaded( hash_tow_driver ) do
    
                RequestModel( hash_tow_driver )
                Wait( 1000 )
    
            end
    
            tow_truck = CreateVehicle( hash_tow_truck, tow_pos_set.x, tow_pos_set.y, tow_pos_set.z, tow_pos_set_h, true, false )
            SetVehicleSiren( tow_truck, true )
            SetVehicleHasMutedSirens( tow_truck, true )
            SetVehicleEngineOn( tow_truck, true, true, false )
    
            tow_driver = CreatePed( 26, hash_tow_driver, tow_pos_set.x, tow_pos_set.y, tow_pos_set.z, 0.0, true, true )
            SetPedIntoVehicle( tow_driver, tow_truck, -1 )
            TaskLeaveVehicle( tow_driver, tow_truck, 0 )

            ShowNotification( '[~b~GFR~w~] Tow ~b~OS~w~!' )

            TaskGoStraightToCoord( tow_driver, GetEntityCoords( vehicle ), 1.0, -1, GetEntityHeading( tow_driver ), 1 )
    
            tow_take_time = 15

            Citizen.CreateThread( function() 
            
                while tow_take_time ~= 0 do

                    Wait( 1000 )

                    tow_take_time = tow_take_time - 1

                end

                AttachEntityToEntity( vehicle, tow_truck, 20, -0.5, -5.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true )

                SetEntityAsNoLongerNeeded( vehicle )

                ShowNotification( '[~b~GFR~w~] Tow took custody of vehicle!' )

            end )

        end
    
        ShowNotification( '[~b~GFR~w~] Tow ~r~en-route~w~!\nETA: ~b~' .. tow_time .. '~w~(s)' )

    elseif vehicle ~= 0 and call_tow == true then

        call_tow = false

        SetEntityAsNoLongerNeeded( tow_truck )
        SetEntityAsNoLongerNeeded( tow_driver )

        ShowNotification( '[~b~GFR~w~] Tow dismissed!' )

    end

end

function f_addn()

    involvements = involvements .. ( rn_arg .. '; ' )

    ShowNotification( '[~b~GFR~w~] Attached ~b~name~w~!' )

end

function f_addp()

    involvements = involvements .. ( rp_arg .. '; ' ) 

    ShowNotification( '[~b~GFR~w~] Attached ~b~plate~w~!' )

end

function f_ts()

    onduty = false

    call = 'TRAFFIC STOP'
    call_details = 'TS'

    if vehicle ~= 0 then

        veh_plate = GetVehicleNumberPlateText( vehicle )

    end

    RandomDisposition()

    preface = preface .. 'You are being pulled over.'

    ShowNotification( '[~b~GFR~w~] Generated ~b~TS~w~!\nPlate: ~c~' .. veh_plate )

end

function f_alpr()

    Citizen.CreateThread( function() 
    
        while true do

            Citizen.Wait( 0 )

            if alpr == true then

                player = GetPlayerPed( -1 )

                pos = GetEntityCoords( player )

                player_vehicle = GetVehiclePedIsIn( player, false )

                vehicle = GetClosestVehicle( pos.x, pos.y, pos.z, 10.0, 0, 70 )

                if vehicle ~= 0 and vehicle ~= alpr_last then

                    vehicle_model = GetEntityModel( vehicle )

                    vehicle_display = GetDisplayNameFromVehicleModel( vehicle_model )
    
                    veh_plate = GetVehicleNumberPlateText( vehicle )
    
                    f_runplate()
    
                    if v_ncic == 'Stolen' then

                        alpr_stolen = true

                        ShowNotification( '[~b~ALRP~w~]\nNCIC: ~r~STOLEN' .. '\n~w~Model: ~c~' .. vehicle_display .. '\n~w~Plate: ~c~' .. veh_plate )
    
                        alpr = false

                    end

                    alpr_last = vehicle

                else

                    f_alpr()

                    break

                end

            end

        end

    end )

end

function f_uda_out()

    GetRandomUDAPed()

    uda = CreatePedInsideVehicle( vehicle, 26, hash, 2, true, true )

    TaskLeaveVehicle( uda, vehicle, 0 )

    preface = preface .. '. You are an undocumented illegal alien crossing the border. You only speak a little bit of english.'

    RandomDisposition()

end

f_alpr()