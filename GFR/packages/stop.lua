-- STOP PACKAGE //

Citizen.CreateThread( function() 

    while true do

        Citizen.Wait( 0 )

        if IsControlJustPressed( 0, 51 ) then

            if leo == true then

                _ , ped = GetEntityPlayerIsFreeAimingAt( PlayerId() )

                is_ped_in_vehicle = IsPedInAnyVehicle( ped, true )

                if ped ~= 0 and is_ped_in_vehicle == false then

                    f_stop()

                end

            end

        end

    end

end )