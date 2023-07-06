-- GRAND THEFT AUTO FIRST RESPONSE //

function gfr_variables()

    print( 'GFR MAIN LOADED - 5.1' )
    leo = false
    onduty = false
    player = GetPlayerPed( -1 )
    ped_stopped = false
    cuffed = false
    grabbed = false
    sitting = false
    in_vehicle = false
    call_ems = false
    call_fire = false
    call_coroner = false
    call_bp = false
    call_tow = false
    call_pt = false
    alpr = false
    used_command = false
    alpr_stolen = false
    alpr_last = ''
    spotlight_up = false
    cruise_on = false
    take_downs_on = false
    roll_window = false
    call_time_set = 0
    call_time = 300
    call = ''
    call_details = ''
    involvements = ''
    traffic_stop = false
    mimic = false
    area = ''
    locname = ''
    cloc = nil

end

gfr_variables()
