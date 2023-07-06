-- TRAFFIC PACKAGE //

Citizen.CreateThread( function() 

    while true do

        Citizen.Wait( 0 )

        if IsControlJustPressed( 0, 21 ) then
            
            player = GetPlayerPed( -1 )
            pos = GetEntityCoords( player )
            player_vehicle = GetVehiclePedIsIn( player, false )

            if GetVehicleClass( player_vehicle == 18 ) and IsVehicleSirenOn( player_vehicle, true ) and leo == true then

                if traffic_stop == false then

                    vehicle = GetClosestVehicle( pos.x, pos.y, pos.z, 10.0, 0, 70 )

                    if vehicle ~= 0 then

                        traffic_start()

                    end

                else

                    traffic_release()

                end

            end

        end

    end

end )

function traffic_start()
   
    traffic_stop = true
    driver = GetPedInVehicleSeat( vehicle, -1 )
    SetEntityAsMissionEntity( vehicle )
    SetEntityAsMissionEntity( driver )
    RollDownWindows( vehicle )

    flee_chance_list = math.random( 1, 100 )

    if flee_chance_list >= 85 then

        traffic_flee()

    else

        ShowNotification( '[~b~GFR~w~] Traffic: ~b~Started' )

    end

end

function traffic_release()

    traffic_stop = false
    mimic = false
    SetEntityAsNoLongerNeeded( vehicle )
    SetEntityAsNoLongerNeeded( driver )
    SetVehicleEngineOn( vehicle, true, false, true )
    ShowNotification( '[~b~GFR~w~] Traffic: ~r~Ended' )

end

function traffic_mimic()

    if DoesEntityExist( vehicle ) then
  
        mimic = true

        ShowNotification( '[~b~GFR~w~] Mimic: ~b~ON' )
  
        while mimic == true do
  
            Citizen.Wait( 0 )

            speedvector = GetEntitySpeedVector( player_vehicle, true )

            if speedvector.y > 0 then
  
                SetVehicleForwardSpeed( vehicle, GetEntitySpeed( player_vehicle ) + 3 )
  
            elseif speedvector.y < 0 then
  
                SetVehicleForwardSpeed( vehicle, 0 )
  
            end
  
            SetVehicleSteeringAngle( vehicle, GetVehicleSteeringAngle( player_vehicle ) )
  
        end
  
    end

end

function traffic_unmimic()

    mimic = false
    Citizen.Wait( 100 )
    ShowNotification( '[~b~GFR~w~] Mimic: ~r~OFF' )

end

function traffic_flee()

    traffic_stop = false
    mimic = false
    SetEntityAsNoLongerNeeded( vehicle )
    SetEntityAsNoLongerNeeded( driver )
    SetVehicleFuelLevel( 100 )
    SetVehicleCanBeUsedByFleeingPeds( vehicle, true )
    Citizen.Wait( 1000 )
    TaskVehicleTempAction( driver, vehicle, 32, 30000 )
    TaskReactAndFleePed( driver, player )
    ModifyVehicleTopSpeed( vehicle, 120 )
    SetVehicleNitroEnabled( vehicle, true )
    ShowNotification( '[~b~GFR~w~] ~r~Vehicle is fleeing~w~!' )

end