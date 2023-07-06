-- COMMANDS PACKAGE //

RegisterCommand( 'setleo', function( source, args, rawCommand ) 

    leo = true

    loadAnim()

    SetMaxWantedLevel( PlayerId(), 0 )

    ShowNotification( '[~b~GFR~w~] You are now a ~b~LEO' )

end )

RegisterCommand( 'forceduty', function( source, args, rawCommand ) 

    fd_area_arg = args[1]
    fd_call_time_arg = args[2]

    leo = true
    patrol_vehicle = GetVehiclePedIsIn( player, false )
    area = fd_area_arg
    call_time_set = tonumber( fd_call_time_arg )

    ShowNotification( '[~b~GFR~w~] You are now ~b~on-duty~w~!' )

    loadAnim()

    SetMaxWantedLevel( PlayerId(), 0 )

end )

RegisterCommand( 'leov', function( source, args, rawCommand ) 

    patrol_vehicle = GetVehiclePedIsIn( player, false )

    ShowNotification( '[~b~GFR~w~] Patrol vehicle set!' )

end )

RegisterCommand( 'area', function( source, args, rawCommand ) 

    area_arg = args[1]

    area = area_arg

    ShowNotification( '[~b~GFR~w~] Area set to: ~b~' .. area )

end )

RegisterCommand( 'calltime', function( source, args, rawCommand ) 
    
    ct_arg = args[1]

    call_time_set = ct_arg

    ShowNotification( '[~b~GFR~w~] Call time set to: ~b~' .. call_time_set )

end )

RegisterCommand( 'y', function( source, args, rawCommand )

    accept_call()

end )

RegisterCommand( 'newcall', function( source, args, rawCommand ) 

    start_callsystem()

end )

RegisterCommand( 'gear', function( source, args, rawCommand ) 

    if leo == true then

        player = GetPlayerPed( -1 )

        SetPedArmour( player, 100 )

        GiveWeaponToPed( player, 'weapon_pistol', 50, false, false )
        GiveWeaponToPed( player, 'weapon_flashlight', 1, false, false )
        GiveWeaponToPed( player, 'weapon_carbinerifle_mk2', 50, false, false )
        GiveWeaponToPed( player, 'weapon_stungun', 50, false, false )

    end

end )

RegisterCommand( 'm', function( source, args, rawCommand ) 

    if mimic == false then

        traffic_mimic()

    else

        traffic_unmimic()

    end

end )

RegisterCommand( 'citation', function( source, args, rawCommand ) 

    cite_arg = args[1]

    ShowNotification( '[~b~GFR~w~] Creating ~b~citation~w~...' )

    f_printcitation()

end )

RegisterCommand( 'dq', function( source, args, rawCommand ) 
        
    rn_arg = args[1]

    f_runid()

end )

RegisterCommand( 'rq', function( source, args, rawCommand ) 
    
    rp_arg = args[1]

    used_command = true

    veh_plate = rp_arg

    f_runplate()

end )

RegisterCommand( 'last', function( source, args, rawCommand ) 
        
    ShowNotification( '[~b~GFR~w~] DRIVER LICENSE \n~b~' .. fn .. ' ' .. ln .. '\n~w~DOB: ~b~' .. dob .. '\n~w~City: ~b~' .. city )

    ShowNotification( '[~b~GFR~w~] OBSERVATION \n~c~' .. observe )

end )

RegisterCommand( 'tr', function( source, args, rawCommand ) 
        
    tr_arg = args[ 1]

    ShowNotification( '[~b~GFR~w~] Waiting for: ~b~' .. tr_arg .. '~w~!' )

    f_wait()

end )

RegisterCommand( 'o', function( source, args, rawCommand ) 
    
    f_observe()

end )

RegisterCommand( 'nt', function( source, args, rawCommand ) 
        
    Density = 0.01
    
    Citizen.CreateThread( function() 
        
        while true do

            Citizen.Wait( 0 )

            SetVehicleDensityMultiplierThisFrame( Density )
            SetPedDensityMultiplierThisFrame( Density )
            SetRandomVehicleDensityMultiplierThisFrame( Density )
            SetParkedVehicleDensityMultiplierThisFrame( Density )
            SetScenarioPedDensityMultiplierThisFrame( Density, Density )

        end

    end )

    ShowNotification( '[~b~GFR~w~] Traffic: ~g~0.01' )

end )

RegisterCommand( 'sv', function( source, args, rawCommand ) 

    pos = GetEntityCoords( player )
    vehicle = GetClosestVehicle( pos.x, pos.y, pos.z, 10.0, 0, 70 )

    if vehicle ~= 0 then

        ShowNotification( '[~b~GFR~w~] Tow vehicle set!' )

    end

end )

RegisterCommand( 'sp', function( source, args, rawCommand ) 

    patrol_vehicle = GetVehiclePedIsIn( player, false )

    if spotlight_up == false then

        SetVehicleExtra( patrol_vehicle, 6, false )
        SetVehicleExtra( patrol_vehicle, 7, true )

        spotlight_up = true

    else

        SetVehicleExtra( patrol_vehicle, 6, true )
        SetVehicleExtra( patrol_vehicle, 7, false )

        spotlight_up = false

    end

end )

RegisterCommand( 'cr', function( source, args, rawCommand ) 

    patrol_vehicle = GetVehiclePedIsIn( player, false )

    if cruise_on == false then

        SetVehicleExtra( patrol_vehicle, 8, false )

        cruise_on = true

    else

        SetVehicleExtra( patrol_vehicle, 8, true )

        cruise_on = false

    end

end )

RegisterCommand( 'td', function( source, args, rawCommand ) 

    patrol_vehicle = GetVehiclePedIsIn( player, false )

    if take_downs_on == false then

        SetVehicleExtra( patrol_vehicle, 12, false )

        take_downs_on = true

    else

        SetVehicleExtra( patrol_vehicle, 12, true )

        take_downs_on = false

    end

end )

RegisterCommand( 'fl', function( source, args, rawCommand ) 

    patrol_vehicle = GetVehiclePedIsIn( player, false )

    if grille_lights == false then

        SetVehicleExtra( patrol_vehicle, 9, false )

        grille_lights = true

    else

        SetVehicleExtra( patrol_vehicle, 9, true )

        grille_lights = false

    end

end )

RegisterCommand( 'w', function( source, args, rawCommand ) 

    patrol_vehicle = GetVehiclePedIsIn( player, false )

    if roll_window == false then

        RollDownWindow( patrol_vehicle, 0 )

        roll_window = true

    else

        RollUpWindow( patrol_vehicle, 0 )

        roll_window = false

    end

end )

RegisterCommand( 'id', function( source, args, rawCommand ) 

    f_id()

end )

RegisterCommand( 'c', function( source, args, rawCommand ) 

    if cuffed == false then

        f_cuff()

    else

        f_uncuff()

    end

end )

RegisterCommand( 'g', function( source, args, rawCommand ) 

    if grabbed == false then

        f_grab()

    else

        f_ungrab()

    end

end )

RegisterCommand( 's', function( source, args, rawCommand ) 

    if sitting == false then

        f_sit()

    else

        f_up()

    end

end )

RegisterCommand( 'se', function( source, args, rawCommand ) 

    search_arg = args[1]

    if search_arg == 'ped' then

        f_ped_search()

    elseif search_arg == 'veh' then

        f_vehicle_search()

    end

end )

RegisterCommand( 'fst', function( source, args, rawCommand ) 

    f_fieldsobriety()

end )

RegisterCommand( 'dui', function( source, args, rawCommand ) 

    f_breathalyzer()

end )

RegisterCommand( 'leave', function( source, args, rawCommand ) 

    f_leave()

end )

RegisterCommand( 'book', function( source, args, rawCommand ) 

    f_book()

end )

RegisterCommand( 'out', function( source, args, rawCommand ) 

    f_out()

end )

RegisterCommand( 'cite', function( source, args, rawCommand ) 

    f_cite()

end )

RegisterCommand( 'wa', function( source, args, rawCommand ) 

    f_warn()

end )

RegisterCommand( 'ch', function( source, args, rawCommand ) 

    f_rp()

end )

RegisterCommand( 'inv', function( source, args, rawCommand ) 

    f_investigate()

end )

RegisterCommand( 'st', function( source, args, rawCommand ) 

    f_status()

end )

RegisterCommand( 'ca', function( source, args, rawCommand ) 

    f_call()

end )

RegisterCommand( 'ondt', function( source, args, rawCommand ) 

    f_ondt()

end )

RegisterCommand( 'avail', function( source, args, rawCommand ) 

    f_avail()

end )

RegisterCommand( 'os', function( source, args, rawCommand ) 

    f_os()

end )

RegisterCommand( 'busy', function( source, args, rawCommand ) 

    f_busy()

end )

RegisterCommand( 'cmplt', function( source, args, rawCommand ) 

    f_cmplt()

end )

RegisterCommand( 'drug', function( source, args, rawCommand ) 

    f_drugtest()

end )

RegisterCommand( 'rec', function( source, args, rawCommand ) 

    f_rec()

end )

RegisterCommand( 'confirm', function( source, args, rawCommand ) 

    f_confirm()

end )

RegisterCommand( 'knock', function( source, args, rawCommand ) 

    f_knock()

end )

RegisterCommand( 'uda', function( source, args, rawCommand ) 

    if args[1] == 'get' then

        f_uda()

    elseif args[1] == 'out' then

        f_uda_out()

    end

end )

RegisterCommand( 'putin', function( source, args, rawCommand ) 

    f_putinvehicle()

end )

RegisterCommand( 'takeout', function( source, args, rawCommand ) 

    f_takeoutvehicle()

end )

RegisterCommand( 'printc', function( source, args, rawCommand ) 

    f_printcitation()

end )

RegisterCommand( 'req', function( source, args, rawCommand ) 

    req_arg = args[1]

    if req_arg == 'ems' then

        f_radio_ems()

    elseif req_arg == 'fire' then

        f_radio_fire()

    elseif req_arg == 'co' then

        f_radio_coroner()

    elseif req_arg == 'tow' then

        f_radio_tow()

    elseif req_arg == 'bp' then

        f_radio_bp()

    elseif req_arg == 'pt' then

        f_radio_pt()

    end

end )

RegisterCommand( 'addn', function( source, args, rawCommand ) 

    f_addn()

end )

RegisterCommand( 'addp', function( source, args, rawCommand ) 

    f_addp()

end )

RegisterCommand( 'ts', function( source, args, rawCommand ) 

    f_ts()

end )

RegisterCommand( 'ar', function( source, args, rawCommand ) 

    if alpr == false and leo == true then

        alpr = true

        ShowNotification( '[~b~GFR~w~] ALPR: ~b~ON' )

    else

        alpr = false

        ShowNotification( '[~b~GFR~w~] ALPR: ~r~OFF' )

    end

end )

RegisterCommand( 'want', function( source, args, rawCommand ) 

    ClearPlayerWantedLevel( PlayerId() )

end )
