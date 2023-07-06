-- UTILITIES PACKAGE //

function loadAnim()

    function loadAnimDict( dict )

        while ( not HasAnimDictLoaded( dict ) ) do
    
            RequestAnimDict( dict )
    
            Wait( 0 )
    
        end
    
    end

    RequestAnimDict( 'mp_arresting' )
    loadAnimDict( 'random@arrests' )
    loadAnimDict( 'random@arrests@busted' )

end

function GetRandomPed()

    pedlist = { 'a_f_m_bevhills_01', 'a_f_m_bodybuild_01', 'a_f_m_business_02', 'a_f_m_downtown_01', 'a_f_m_eastsa_01', 'a_f_m_fatbla_01', 'a_f_m_fatcult_01', 'a_f_m_ktown_01', 'a_f_m_skidrow_01', 'a_f_o_indian_01', 'a_f_y_bevhills_01', 'a_f_y_eastsa_01', 'a_f_y_fitness_01', 'a_f_y_hipster_01', 'a_f_y_skater_01', 'a_f_y_vinewood_01', 'a_m_m_acult_01', 'a_m_m_business_01', 'a_m_m_farmer_01', 'a_m_m_hasjew_01', 'a_m_m_hillbilly_01', 'a_m_m_og_boss_01', 'a_m_m_salton_01', 'a_m_m_soucent_01', 'a_m_y_latino_01', 'a_m_y_methhead_01', 'csb_porndudes', 'csb_burgerdrug', 'a_m_y_beach_02', 'a_m_y_business_03', 'a_m_y_gay_01', 'a_m_o_tramp_01', 'a_m_o_genstreet_01', 'a_m_m_salton_04', 'a_m_m_malibu_01', 'a_m_m_mexcntry_01', 'a_m_m_mexlabor_01', 'a_m_m_genfat_02', 'a_f_y_yoga_01' }
    pedmodel = pedlist[ math.random( #pedlist ) ]
    hash = GetHashKey( pedmodel )
    while not HasModelLoaded( hash ) do

        RequestModel( hash )
        Wait( 1000 )

    end

    return hash

end

function GetRandomUDAPed()

    pedlist = { 'a_m_m_mexcntry_01', 'a_m_m_mexlabor_01', 'a_m_y_mexthug_01', 'csb_ramp_mex', 'g_m_m_mexboss_01', 'g_m_m_mexboss_02', 'g_m_y_mexgang_01', 'g_m_y_mexgoon_01', 'g_m_y_mexgoon_02', 'g_m_y_mexgoon_03' }
    pedmodel = pedlist[ math.random( #pedlist ) ]
    hash = GetHashKey( pedmodel )
    while not HasModelLoaded( hash ) do

        RequestModel( hash )
        Wait( 1000 )

    end

    return hash

end

function GetRandomVehicle()

    vehiclelist = { 'Blista', 'Blista2', 'Brioso', 'Dilettante', 'Issi2', 'Prairie', 'Rhapsody', 'CogCabrio', 'Felon', 'Oracle', 'Zion', 'Akuma', 'Bati', 'Double', 'Faggio', 'Sanchez2', 'Cliffhanger', 'Blade', 'Chino', 'Buccaneer', 'Dominator', 'Dukes', 'Gauntlet', 'Moonbeam', 'BfInjection', 'BJXL', 'Baller', 'Granger', 'Patriot', 'Asea', 'Asterope', 'Emperor', 'Stanier', 'Washington', 'Adder', 'Zentorno', 'Bullet', 'Sadler', 'Tractor2', 'UtilliTruck3', 'Bison', 'Journey', 'Boxville', 'Surfer' }
    veh = vehiclelist[ math.random( #vehiclelist ) ]

    vhash = GetHashKey( veh )
    RequestModel( vhash )

    while not HasModelLoaded( vhash ) do

        RequestModel( vhash )
        Wait( 1000 )

    end

end

function GetRandomWeapon()

    weaponlist = { 'WEAPON_COMBATPISTOL', 'WEAPON_CARBINERIFLE' }
    weapon = weaponlist[ math.random( #weaponlist ) ]
    weaponhash = GetHashKey( weapon )

end

function GetRandomDebris()

    objlist = { 'prop_rock_chair_01', 'prop_rock_4_cl_2', 'v_ilev_fib_debris', 'prop_fbi3_coffee_table', 'prop_bumper_06', 'prop_stockade_wheel', 'prop_rub_bike_02' }
    objmodel = objlist[ math.random( #objlist ) ]
    hash = GetHashKey( objmodel )
    while not HasModelLoaded( hash ) do

        RequestModel( hash )
        Wait( 1000 )

    end

    return hash

end

function RandomDisposition()

    dispo_random = math.random ( 1, 10 )

    if dispo_random < 8 then

        disposition = 1

    elseif dispo_random >= 8 then

        disposition = 2

    end

end

function Draw3DText( x, y, z, textInput, fontId, scaleX, scaleY )

    local px, py, pz = table.unpack( GetGameplayCamCoords() )
    local dist = GetDistanceBetweenCoords( px, py, pz, x, y, z, 1)    
    local scale = ( 1 / dist ) * 20
    local fov = ( 1 / GetGameplayCamFov() ) * 100
    local scale = scale * fov   
    SetTextScale( scaleX * scale, scaleY * scale )
    SetTextFont( fontId )
    SetTextProportional( 1 )
    SetTextColour( 250, 250, 250, 255 )
    SetTextDropshadow( 1, 1, 1, 1, 255 )
    SetTextEdge( 2, 0, 0, 0, 150 )
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry( 'STRING' )
    SetTextCentre( 1 )
    AddTextComponentString( textInput )
    SetDrawOrigin( x, y, z+0.5, 0 )
    DrawText( 0.0, 0.0 )
    ClearDrawOrigin()

end

function ShowNotification(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end
