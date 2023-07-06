-- CALLOUTS PACKAGE //

function start_callsystem()

    function choose_location()

        if area == 'PB' then

            loc_type_list = { 'inside', 'inside', 'inside', 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end

        if area == 'SS' then

            loc_type_list = { 'inside', 'inside', 'inside', 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end

        if area == 'GR' then

            loc_type_list = { 'inside', 'inside', 'inside', 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end

        if area == 'HA' then

            loc_type_list = { 'inside', 'inside', 'inside', 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end

        if area == 'ALL' then

            loc_type_list = { 'inside', 'inside', 'inside', 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end

        if area == 'HP' then

            loc_type_list = { 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end

        if area == 'LS' then

            loc_type_list = { 'inside', 'inside', 'inside', 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end

        if area == 'BP' then

            loc_type_list = { 'outside' }
            loc_type = loc_type_list[ math.random( #loc_type_list ) ]

        end
    
        if loc_type == 'inside' then
            
            cloclist = {}
            cloclist[1] = vector3( 1730.4, 6413.97, 35.04 ) -- PALETO BAY
            cloclist[2] = vector3( 419.33, 6520.59, 27.74 )
            cloclist[3] = vector3( 165.6, 6639.52, 31.71 )
            cloclist[4] = vector3( 37.74, 6658.25, 31.7 )
            cloclist[5] = vector3( -12.18, 6561.6, 31.97 )
            cloclist[6] = vector3( 34.01, 6601.43, 32.44 )
            cloclist[7] = vector3( -8.04, 6650.83, 31.12 )
            cloclist[8] = vector3( -28.68, 6598.96, 31.47 )
            cloclist[9] = vector3( -45.33, 6584.01, 32.18 )
            cloclist[10] = vector3( -107.8, 6532.05, 29.81 )
            cloclist[11] = vector3( -158.23, 6410.45, 31.92 )
            cloclist[12] = vector3( -108.12, 6466.41, 31.63 )
            cloclist[13] = vector3( -213.66, 6445.15, 31.31 )
            cloclist[14] = vector3( -230.9, 6379.83, 31.56 )
            cloclist[15] = vector3( -378.56, 6255.67, 31.54 )
            cloclist[16] = vector3( -440.52, 6198.51, 29.55 )
            cloclist[17] = vector3( -384.99, 6191.43, 31.49 )
            cloclist[18] = vector3( -331.37, 6149.14, 31.6 )
            cloclist[19] = vector3( -404.71, 6148.72, 31.53 )
            cloclist[20] = vector3( -411.46, 6064.6, 31.5 )
            cloclist[21] = vector3( -346.99, 6220.3, 31.49 )
            cloclist[22] = vector3( -293.39, 6198.49, 31.49 )
            cloclist[23] = vector3( -305.97, 6261.15, 31.48 )
            cloclist[24] = vector3( -277.8, 6227.79, 31.7 )
            cloclist[25] = vector3( -242.77, 6326.89, 32.43 )
            cloclist[26] = vector3( -213.98, 6358.75, 31.49 )
            cloclist[27] = vector3( -95.12, 6342.12, 31.49 )
            cloclist[28] = vector3( -96.56, 6410.25, 31.46 )
            cloclist[29] = vector3( -58.94, 6524.73, 31.49 )
            cloclist[30] = vector3( 0.94, 6512.81, 31.88 )
            cloclist[31] = vector3( -328.26, 6081.8, 31.45 )
            cloclist[32] = vector3( -699.65, 5803.74, 17.33 )
            cloclist[33] = vector3( -839.08, 5405.36, 34.61 )
            cloclist[34] = vector3( -755.81, 5582.34, 36.71 )
            cloclist[35] = vector3( -454.52, 6337.93, 12.77 )

            cloclist[36] = vector3( 2694.36, 4328.49, 45.85 ) -- SANDY SHORES
            cloclist[37] = vector3( 2570.97, 4274.59, 41.79 )
            cloclist[38] = vector3( 2456.56, 4058.27, 38.06 )
            cloclist[39] = vector3( 2002.77, 3780.26, 32.18 )
            cloclist[40] = vector3( 1963.84, 3743.52, 32.34 )
            cloclist[41] = vector3( 1931.93, 3729.9, 32.84 )
            cloclist[42] = vector3( 1893.5, 3713.66, 32.77 )
            cloclist[43] = vector3( 1779.6, 3642.36, 34.48 )
            cloclist[44] = vector3( 1599.88, 3600.98, 35.25 )
            cloclist[45] = vector3( 1391.82, 3603.32, 34.98 )
            cloclist[46] = vector3( 1956.87, 3840.11, 32.03 )
            cloclist[47] = vector3( 1864.26, 3749.28, 33.03 )
            cloclist[48] = vector3( 1929.61, 3802.27, 32.04 )
            cloclist[49] = vector3( 1895.53, 3872.68, 32.52 )
            cloclist[50] = vector3( 1923.66, 3915.88, 32.56 )
            cloclist[51] = vector3( 1733.64, 3900.23, 34.79 )
            cloclist[52] = vector3( 1694.02, 3756.86, 34.71 )
            cloclist[53] = vector3( 1738.24, 3711.22, 34.14 )
            cloclist[54] = vector3( 1647.92, 3728.74, 34.37 )
            cloclist[55] = vector3( 1527.62, 3772.95, 34.51 )
            cloclist[56] = vector3( 1529.74, 3723.19, 34.62 )
            cloclist[57] = vector3( 1437.13, 3640.81, 34.93 )
            cloclist[58] = vector3( 912.1, 3642.28, 32.67 )
            cloclist[59] = vector3( 348.3, 3409.95, 36.54 )
            cloclist[60] = vector3( 1756.56, 3296.63, 41.15 )
            cloclist[61] = vector3( 1985.92, 3050.64, 47.22 )
            cloclist[62] = vector3( 2203.84, 3319.74, 46.03 )
            cloclist[63] = vector3( 2749.02, 3467.97, 55.7 )
            cloclist[64] = vector3( 2678.34, 3284.76, 55.24 )
            cloclist[65] = vector3( 2620.97, 3273.79, 55.25 )

            cloclist[66] = vector3( 2108.05, 4768.63, 41.22 ) -- GRAPESEED
            cloclist[67] = vector3( 1965.37, 4636.63, 40.82 )
            cloclist[68] = vector3( 1792.37, 4592.44, 37.68 )
            cloclist[69] = vector3( 1720.69, 4638.89, 43.31 )
            cloclist[60] = vector3( 1677.92, 4654.8, 43.37 )
            cloclist[70] = vector3( 1685.72, 4689.37, 43.03 )
            cloclist[71] = vector3( 1665.36, 4772.3, 41.97 )
            cloclist[72] = vector3( 1691.83, 4785.8, 41.92 )
            cloclist[73] = vector3( 1692.37, 4820.49, 42.06 )
            cloclist[74] = vector3( 1660.09, 4837.51, 42.05 )
            cloclist[75] = vector3( 1658.74, 4839.1, 42.04 )
            cloclist[76] = vector3( 1699.09, 4926.01, 42.06 )
            cloclist[77] = vector3( 1962.23, 5167.15, 47.51 )
            cloclist[78] = vector3( 2915.05, 4369.58, 50.44 )

            cloclist[79] = vector3( 1198.95, 2708.05, 38.22 ) -- HARMONY
            cloclist[80] = vector3( 1122.23, 2648.1, 38 )
            cloclist[81] = vector3( 1038.9, 2665.41, 39.55 )
            cloclist[82] = vector3( 983.8, 2716.01, 39.5 )
            cloclist[83] = vector3( 980.56, 2671.2, 40.02 )
            cloclist[84] = vector3( 588.95, 2741.24, 42.06 )
            cloclist[85] = vector3( 544.61, 2667.78, 42.16 )
            cloclist[86] = vector3( 558.59, 2599.81, 42.83 )
            cloclist[87] = vector3( 499.32, 2614.26, 42.96 )
            cloclist[88] = vector3( 361.31, 2573.22, 43.52 )
            cloclist[89] = vector3( 336.64, 2619.36, 44.49 )
            cloclist[90] = vector3( 259.94, 2600.39, 44.83 )
            cloclist[91] = vector3( 280.52, 2844.34, 43.64 )
            cloclist[92] = vector3( 184.1, 2793.08, 45.64 )
            cloclist[93] = vector3( 51.89, 2786.07, 57.87 )
            cloclist[94] = vector3( -326.69, 2820.34, 58.46 )
            cloclist[95] = vector3( 359.3, 2974.62, 40.96 )
            cloclist[96] = vector3( 426.89, 2997.77, 40.49 )
            cloclist[97] = vector3( 506.61, 3099.47, 41.3 )
            cloclist[98] = vector3( 867.31, 2875.26, 56.93 )
            cloclist[99] = vector3( 2556.06, 2613.76, 37.96 )

            cloclist[100] = vector3( -2189.14, -390.85, 13.46 ) -- LOS SANTOS
            cloclist[101] = vector3( -2076.29, -326.36, 13.16 )
            cloclist[102] = vector3( -1881.97, -578.18, 11.81 )
            cloclist[103] = vector3( -1701.44, -1092.13, 13.16 )
            cloclist[104] = vector3( -1195.93, -774.03, 17.32 ) 
            cloclist[105] = vector3( -1180.95, -882.81, 13.82 )
            cloclist[106] = vector3( -1478.04, -673.27, 29.04 )
            cloclist[107] = vector3( -1337.99, -403.78, 36.33 )
            cloclist[108] = vector3( -1531.83, -449.38, 35.59 )
            cloclist[109] = vector3( -1469.11, -326.77, 44.78 ) 
            cloclist[110] = vector3( -1650.01, -175.39, 56.96 )
            cloclist[111] = vector3( -1460.73, -31.1, 54.64 )
            cloclist[112] = vector3( -1569.8, 27.4, 59.55 )
            cloclist[113] = vector3( -1575.77, 179.02, 58.22 )
            cloclist[114] = vector3( -1929.8, 168.83, 84.65 )
            cloclist[115] = vector3( -1124.5, 484.11, 82.16 )
            cloclist[116] = vector3( -773.77, 309.19, 85.7 )
            cloclist[117] = vector3( -485.1, 275.34, 83.29 )
            cloclist[118] = vector3( -380.61, 222.59, 84.1 )
            cloclist[119] = vector3( -368.16, 266.26, 84.84 )
            cloclist[120] = vector3( -163.56, 278.63, 93.63 )
            cloclist[121] = vector3( -360.92, 26.69, 47.67 )
            cloclist[122] = vector3( 80.82, 272.13, 110.21 )
            cloclist[123] = vector3( 154.24, 236.09, 106.75 )
            cloclist[124] = vector3( 641.63, 269.84, 103.15 )
            cloclist[125] = vector3( 85.59, -215.04, 54.49 )
            cloclist[126] = vector3( -596.4, -877.6, 25.63 )
            cloclist[127] = vector3( 184.4, -989.28, 30.09 )
            cloclist[128] = vector3( 293.65, -785.76, 29.31 )
            cloclist[129] = vector3( 316.33, -210.53, 54.09 )
            cloclist[130] = vector3( 1161.98, -323.55, 69.21 )
            cloclist[131] = vector3( 1176.84, -440.43, 66.86 )
            cloclist[132] = vector3( 964.39, -502.96, 61.72 )
            cloclist[133] = vector3( 854.57, -529.5, 57.32 )
            cloclist[134] = vector3( 970.59, -579.35, 59.08 )
            cloclist[135] = vector3( 1126.82, -656.79, 56.78 )
            cloclist[136] = vector3( 1366.29, -602.73, 74.34 )
            cloclist[137] = vector3( 1220.43, -699.35, 60.96 )
            cloclist[138] = vector3( 1077.57, -772.25, 57.9 )
            cloclist[139] = vector3( 1410.55, -1501.43, 59.64 )
            cloclist[140] = vector3( 1338.99, -1527.63, 53.98 )
            cloclist[141] = vector3( 1256.05, -1615.93, 53.27 )
            cloclist[142] = vector3( 1297.91, -1737.49, 53.88 )
            cloclist[143] = vector3( 804.13, -1074.69, 28.61 )
            cloclist[144] = vector3( 790.05, -742.59, 27.36 )
            cloclist[145] = vector3( 609.02, -1442.13, 9.76 )
            cloclist[146] = vector3( 474.47, -1452.8, 29.29 )
            cloclist[147] = vector3( 563.74, -1761.72, 29.17 )
            cloclist[148] = vector3( 284.98, -1269.67, 29.27 )
            cloclist[149] = vector3( 149.07, -1446.33, 29.14 )
            cloclist[150] = vector3( 77.46, -1390.8, 29.38 )
            cloclist[151] = vector3( 224.42, -1515.44, 29.31 )
            cloclist[152] = vector3( 62.39, -1569.51, 29.46 )
            cloclist[153] = vector3( 285.4, -2075.86, 17.38 )
            cloclist[154] = vector3( 344.54, -1816.51, 28.36 )
            cloclist[155] = vector3( 387.93, -1883.56, 25.61 )
            cloclist[156] = vector3( 260.66, -2022.71, 18.8 )
            cloclist[157] = vector3( 129.49, -1893.96, 23.37 )
            cloclist[158] = vector3( 87.82, -1950.52, 20.82 )
            cloclist[159] = vector3( -22.28, -1856.32, 25.01 )
            cloclist[160] = vector3( -49.52, -1756.36, 29.42 )
            cloclist[161] = vector3( -1250.02, -1459.31, 4.27 )
            cloclist[162] = vector3( -1030.39, -1106.92, 2.16 )
            cloclist[163] = vector3( -1045.13, -1024.47, 2.15 )
            cloclist[164] = vector3( -1315.37, -924.04, 11.2 )
            cloclist[165] = vector3( -1307.84, -837.24, 16.98 )
            cloclist[166] = vector3( -1073.06, -1151.25, 2.16 )
            cloclist[167] = vector3( -1222.19, -1206.94, 7.69 )
            cloclist[168] = vector3( -1048.63, -1400.49, 5.43 )
            cloclist[169] = vector3( -988.89, -1441.23, 5.05 )
            
            if area == 'PB' then

                cloc = math.random( 1, 35 )

            end

            if area == 'SS' then

                cloc = math.random( 36, 65 )

            end

            if area == 'HA' then

                cloc = math.random( 79, 99 )

            end

            if area == 'GR' then

                cloc = math.random( 66, 78 )

            end

            if area == 'ALL' then

                cloc = math.random( 36, 99 )

            end

            if area == 'LS' then

                cloc = math.random( 100, 169 )

            end

        elseif loc_type == 'outside' then

            cloclist = {}
            cloclist[1] = vector3( 560.15, 6552.88, 27.83 ) -- PALETO BAY
            cloclist[2] = vector3( 333.19, 6565.11, 28.8 )
            cloclist[3] = vector3( 150.92, 6530.07, 31.69 )
            cloclist[4] = vector3( -45.1, 6336.28, 31.3 )
            cloclist[5] = vector3( -179.13, 6197.32, 31.19 )
            cloclist[6] = vector3( -371.23, 6007.1, 31.32 )
            cloclist[7] = vector3( -519.82, 5788.37, 35.26 )
            cloclist[8] = vector3( -305.3, 6227.21, 31.45 )
            cloclist[9] = vector3( -112.22, 6421.52, 31.42 )
            cloclist[10] = vector3( 68.85, 6608.51, 31.48 )

            cloclist[11] = vector3( 2633.8, 4320.71, 44.27 ) -- SANDY SHORES
            cloclist[12] = vector3( 2448.78, 4254.59, 36.95 )
            cloclist[13] = vector3( 2337.68, 3885.84, 35.17 )
            cloclist[14] = vector3( 1904.84, 3631.85, 33.98 )
            cloclist[15] = vector3( 1697.24, 3510.39, 36.47 )
            cloclist[16] = vector3( 2008.11, 3813.96, 32.28 )
            cloclist[17] = vector3( 1886.52, 3838.02, 32.42 )
            cloclist[18] = vector3( 1748.6, 3750.06, 33.92 )
            cloclist[19] = vector3( 1574.93, 3719.97, 34.51 )
            cloclist[20] = vector3( 1335.56, 3565.16, 34.98 )
            cloclist[21] = vector3( 1426.69, 3502.23, 35.93 )
            cloclist[22] = vector3( 925.69, 3537.27, 34.05 )
            cloclist[23] = vector3( 276.99, 3400.42, 37.79 )

            cloclist[24] = vector3( 2447.79, 4598.68, 36.93 ) -- GRAPESEED
            cloclist[25] = vector3( 2570.76, 4725.01, 33.69 )
            cloclist[26] = vector3( 2172.47, 4911.64, 40.8 )
            cloclist[27] = vector3( 1671.85, 4834.68, 42.05 )
            cloclist[28] = vector3( 1971.92, 5135.51, 43.13 )
            cloclist[29] = vector3( 2405.68, 5148.81, 47.25 )

            cloclist[30] = vector3( 1561.37, 2791.24, 38.27 ) -- HARMONY
            cloclist[31] = vector3( 1261.71, 2684.01, 37.59 )
            cloclist[32] = vector3( 929.28, 2697.45, 40.64 )
            cloclist[33] = vector3( 596.03, 2695.8, 41.58 )
            cloclist[34] = vector3( 284.24, 2637.32, 44.66 )
            cloclist[35] = vector3( 225.02, 2993.2, 42.54 )

            cloclist[36] = vector3( 2422.18, 5754, 45.59 ) -- HIGHWAY
            cloclist[37] = vector3( 2549.66, 5318.13, 44.62 )
            cloclist[38] = vector3( 2705.01, 4840.56, 44.64 )
            cloclist[39] = vector3( 2821.74, 4262.11, 50.25 )
            cloclist[40] = vector3( 2914, 3860.72, 52.44 )
            cloclist[41] = vector3( 2943.93, 3933.94, 51.99 )
            cloclist[42] = vector3( 2410.77, 2929.07, 40.33 )
            cloclist[43] = vector3( 2615.01, 3072.78, 46.82 )
            cloclist[44] = vector3( 2827.48, 3442.73, 55.44 )

            cloclist[45] = vector3( -1698.29, -380.23, 47.74 ) -- LOS SANTOS
            cloclist[46] = vector3( -1373.59, -391.37, 36.69 )
            cloclist[47] = vector3( -1439.06, -749.36, 23.52)
            cloclist[48] = vector3( -858.25, -1174.23, 5.47 )
            cloclist[49] = vector3( -744.84, -836.82, 22.67 )
            cloclist[50] = vector3( -629.75, -1296.17, 10.66 )
            cloclist[51] = vector3( -286.04, -861.79, 31.76 )
            cloclist[52] = vector3( 55.12, -1133.14, 29.34 )
            cloclist[53] = vector3( 506.49, 87.97, 96.39 )
            cloclist[54] = vector3( -217.96, 261.55, 92.08 )
            cloclist[55] = vector3( -1088.0, 267.2, 63.93 )
            cloclist[56] = vector3( 1171.03, -518.2, 65.05 )
            cloclist[57] = vector3( 827.94, -1745.13, 29.46 )
            cloclist[58] = vector3( 323.65, -1512.25, 29.34 )
            cloclist[59] = vector3( 178.17, -1763.46, 29.17 )

            if area == 'PB' then

                cloc = math.random( 1, 10 )

            end

            if area == 'SS' then

                cloc = math.random( 11, 23 )

            end

            if area == 'HA' then

                cloc = math.random( 30, 35 )

            end

            if area == 'GR' then

                cloc = math.random( 24, 29 )

            end

            if area == 'ALL' then

                cloc = math.random( 11, 35 )

            end

            if area == 'LS' then

                cloc = math.random( 45, 59 )

            end

            if area == 'HP' then

                cloc = math.random( 36, 44 )

            end

        end
    
    end

    function choose_call()

        if loc_type == 'inside' then

            call_list = { 'Call for assist', 'Call for assist', 'Call for assist', 'Call for assist', 'Call for assist', 'Call for assist', 'Welfare check', 'Welfare check', 'Welfare check', 'Welfare check', 'Dead body', 'Dead body', 'Dead body', 'Domestic violence', 'Shots fired', 'Robbery', 'Trespass', 'Trespass', 'Trespass', 'Fight', 'Intoxicated person', 'Person with knife', '911 Hangup', '911 Hangup', '911 Hangup', '911 Hangup', '911 Hangup', '911 Hangup', 'Alarm', 'Alarm', 'Alarm', 'Alarm', 'Alarm' }
            call = call_list[ math.random( #call_list ) ]

        elseif loc_type == 'outside' then

            call_list = { 'Vehicle Collision', 'Vehicle Collision', 'Attempt to locate', 'Traffic hazard', 'Traffic hazard' }
            call = call_list[ math.random( #call_list ) ]

        end

        if area == "BP" then

            call_list = { 'UDA' }
            call = call_list[ math.random( #call_list ) ]

        end

    end

    function callouts()

        if call == 'Welfare check' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_welfarecheck()

                call_details_list = { 

                    'CHECK WELFARE / HAVE NOT HEARD FROM SUBJ IN A FEW DAYS'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a welfare check called in about you.'

                RandomDisposition()

            end

        end

        if call == 'Dead body' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_deadbody()

                GetRandomPed()
                local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                SetEntityHealth( ped, 0 )

                call_details_list = { 

                    'PR FOUND A DEAD BODY',
                    'PR ADVISING THEY FOUND THEIR FAMILY MEMBER DEAD / SUBJECT IS BLUE AND COLD'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a dead body.'

                RandomDisposition()

            end

        end

        if call == 'Call for assist' then
        
            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_callforassist()

                theftitemlist = { 'CAR KEYS', 'MONEY', 'MEDICATION', 'SOCIAL SECURITY', 'DEBIT CARD', 'CREDIT CARD', 'COMPUTER', 'PHONE' }
                theftitem = theftitemlist[ math.random( #theftitemlist ) ]
                crimdamagelist = { 'WINDOW', 'DOOR', 'WALL' }
                crimdamage = crimdamagelist[ math.random( #crimdamagelist ) ]

                call_details_list = { 

                    'PR REPORTING A THEFT / PR STATED THAT THEIR ' .. theftitem .. ' WAS STOLEN',
                    'PR REPORTING A THEFT / PR STATED THAT THEIR ' .. theftitem .. ' WAS STOLEN',
                    'PR REPORTING A THEFT / PR STATED THAT THEIR ' .. theftitem .. ' WAS STOLEN',
                    'PR REPORTING THEY WERE ASSAULTED / SUBJECT LEFT SCENE',
                    'PR REPORTING CRIMINAL DAMAGE / PR STATED THAT THEIR ' .. crimdamage .. ' WAS DAMAGED BY UNK SUBJECT',
                    'PR REPORTING CRIMINAL DAMAGE / PR STATED THAT THEIR ' .. crimdamage .. ' WAS DAMAGED BY UNK SUBJECT',
                    'PR ADVISING LOUD MUSIC COMING FROM A NEARBY HOUSE',
                    'PR ADVISING LOUD MUSIC COMING FROM A NEARBY HOUSE',
                    'PR REPORTING A PROWLER / ONE SUBJECT OUTSIDE OF PRS HOUSE',
                    'PR REPORTING A DISTURBANCE / PR STATED THERE IS A SUBJECT OUTSIDE OF THEIR HOME YELLING',
                    'PR REPORTING A SUICIDAL SUBJECT',
                    'PR REPORTING A RESTRAINING ORDER VIOLATION',
                    'PR REPORTING THEIR NEIGHBOR IS HARASSING THEM',
                    'PR REPORTING BARKING DOGS',
                    'PR REPORTING BARKING DOGS' ,
                    'PR REPORTING BARKING DOGS' 

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a ' .. call_details .. ' incident.'

                RandomDisposition()

            end

        end

        if call == 'Domestic violence' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_domestic()

                callchancelist = { 1, 2 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomPed()
                    local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )

                else

                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )
                    GetRandomPed()
                    local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )
                    TaskCombatPed( ped1, ped2, 0, 16 )

                end

                call_details_list = { 

                    'PR ADVISING THEIR SIGNIFICANT OTHER HIT THEM / CRYING AND YELLING / UNK WEAPONS / UNK INTOX',
                    'PR REPORTING THEIR SIGNIFICANT OTHER IS YELLING AND THREATENING AT THEM / UNK WEAPONS / UNK INTOX'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a domestic violence incident.'

                RandomDisposition()

            end

        end

        if call == 'Shots fired' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_shotsfired()

                callchancelist = { 1, 2 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomWeapon()
                    GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )

                else

                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomWeapon()
                    GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )
                    TaskCombatPed( ped, player, 0, 16 )

                end
            
                call_details_list = { 

                    'SHOTS FIRED IN AREA / 1 GUNSHOT',
                    'SUBJECT WITH GUN / FIRING ROUNDS'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a shots fired incident.'
                
                RandomDisposition()

            end

        end

        if call == 'Robbery' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()
            
            function call_robbery()

                callchancelist = { 1, 2 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomWeapon()
                    GiveWeaponToPed( ped1, weaponhash, 1000, 1, 1 )

                else

                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomPed()
                    local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomWeapon()
                    GiveWeaponToPed( ped1, weaponhash, 1000, 1, 1 )
                    TaskCombatPed( ped1, player, 0, 16 )

                end

                call_details_list = { 

                    'PR ADVISING THAT THEY SEE SOMEONE BEING ROBBED AT GUNPOINT'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a robbery incident.'

                RandomDisposition()

            end

        end

        if call == 'Trespass' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_trespass()

                callchancelist = { 1, 1, 2 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomPed()
                    local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )

                else

                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )
                    GetRandomPed()
                    local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )

                    TaskCombatPed( ped, player, 0, 16 )

                end

                call_details_list = { 

                    'PR REPORTING A SUBJECT IS BEING DISORDERLY / PR WANTS THEM TRESPASSED FROM PROPERTY'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a trespassing incident.'

                RandomDisposition()

            end

        end

        if call == 'Fight' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_fight()

                GetRandomPed()
                local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                GetRandomPed()
                local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )
                TaskCombatPed( ped1, ped2, 0, 16 )

                call_details_list = { 

                    'PR REPORTING THEY ARE WITNESSING A FIGHT IN PROGRESS',

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a fight incident.'

                RandomDisposition()
                
            end

        end

        if call == 'Intoxicated person' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_intoxicatedperson()

                GetRandomPed()
                local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )

                call_details_list = { 

                    'PR REPORTING A DRUNK SUBJECT YELLING'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a public intoxication incident. You are very drunk.'

                RandomDisposition()

            end

        end

        if call == 'Person with knife' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_personwithknife()

                callchancelist = { 1, 2 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    weapon = 'WEAPON_KNIFE'
                    weaponhash = GetHashKey( 'WEAPON_KNIFE' )
                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )

                else

                    weapon = 'WEAPON_KNIFE'
                    weaponhash = GetHashKey( 'WEAPON_KNIFE' )
                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )
                    TaskCombatPed( ped, player )

                end

                call_details_list = { 

                    'PR REPORTING A SUBJECT WITH A KNIFE / UNK DESCRIPTION / UNK INTOX',
                    'PR REPORTING THEY HAVE KNIFE AND WANT TO FIGHT POLICE'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. 'You are being questioned in reference to a person with a knife incident.'

                RandomDisposition()

            end

        end

        if call == '911 Hangup' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_911hangup()

                callchancelist = { 1, 2, 3 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )

                elseif callchance == 2 then

                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    SetEntityHealth( ped, 0 )

                elseif callchance == 3 then

                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomWeapon()
                    GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )
                    TaskCombatPed( ped, player, 0, 16 )

                end

                call_details_list = { 

                    '911 HANG UP / PINGING AT LOCATION / NO ANSWER ON CB / NO VM'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a 911 hang up incident.'

                RandomDisposition()

            end

        end

        if call == 'Vehicle Collision' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~/y ~w~to accept!' )
            create_blip()

            function call_mva()

                callchancelist = { 1, 2, 3 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x + 3, cloclist[cloc].y + 3, cloclist[cloc].z + 3, GetEntityHeading( ply ) + 100, true, false )
                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x + 5, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomPed()
                    local ped2 = CreatePed( 26, hash, cloclist[cloc].x + 5, cloclist[cloc].y + 1, cloclist[cloc].z, 0.0, true, true )

                elseif callchance == 2 then

                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x + 3, cloclist[cloc].y + 3, cloclist[cloc].z + 3, GetEntityHeading( ply ) + 100, true, false )
                    GetRandomPed()
                    local ped1 = CreatePed( 26, hash, cloclist[cloc].x + 5, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                    GetRandomPed()
                    local ped2 = CreatePed( 26, hash, cloclist[cloc].x + 5, cloclist[cloc].y + 1, cloclist[cloc].z, 0.0, true, true )
                    SetEntityHealth( ped1, 0 )

                elseif callchance == 3 then

                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                    SetEntityRotation( veh, 0, 0, 180, 1, true )
                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloc.x + 5, cloc.y, cloc.z, 0.0, true, true )

                end

                call_details_list = { 

                    'PR REPORTING A VEHICLE COLLISION',
                    'PR REPORTING THEY JUST GOT INTO AN COLLISION'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a vehicle collision incident.'

                RandomDisposition()

            end

        end

        if call == 'Motorist assist' then
            
            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~/y ~w~to accept!' )
            create_blip()

            function call_motoristassist()

                callchancelist = { 1, 2, 3 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x + 3, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )

                elseif callchance == 2 then

                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloc.x + 3, cloc.y, cloc.z, 0.0, true, true )
                    SetEntityHealth( ped, 0 )

                else

                    GetRandomVehicle()
                    local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloc.x + 3, cloc.y, cloc.z, 0.0, true, true )
                    GetRandomWeapon()
                    GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )
                    TaskCombatPed( ped, player )

                end

                call_details_list = { 

                    'CODE 34 BLOCKING'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a motorist assist incident.'

                RandomDisposition()

            end

        end

        if call == 'Attempt to locate' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~/y ~w~to accept!' )
            create_blip()

            function call_attempttolocate()

                atlreasonlist = {

                    'UNABLE TO MAIN LANE',
                    'DRIVER IS TEXTING AND SWIRVING',
                    'SPEEDING EXCESS 80',
                    'INVOLVED IN ROAD RAGE',
                    'INVOLVED IN ASSAULT',
                    'INVOLVED IN HOMICIDE',
                    'INVOLVED IN HIT AND RUN',
                    'INVOLVED IN BURGLARY',
                    'INVOLVED IN KIDNAPPING',
                    'INVOLVED IN SHOTS FIRED AT OFFICER',
                    'INVOLVED IN GRAND THEFT AUTO'

                }

                atlreason = atlreasonlist[ math.random( #atlreasonlist ) ]

                atlvehtypelist = { 'SEDAN', 'COUPE', 'MOTORCYCLE', 'PICKUP', 'COMMERCIAL VEHICLE', 'VAN' }
                atlvehtype = atlvehtypelist[ math.random( #atlvehtypelist ) ]

                atlvehcolorlist = { 'BLACK', 'WHITE', 'SILVER', 'TAN' }
                atlvehcolor = atlvehcolorlist[ math.random( #atlvehcolorlist ) ]

                call_details = ( 'ATL / VEHICLE ' .. atlreason .. ' / ' .. atlvehtype .. ' ' .. atlvehcolor .. ' IN COLOR' )

                preface = preface .. '. You are being questioned in reference to a ' .. atlreason ' incident.'

                RandomDisposition()

            end

        end

        if call == 'Animal attack' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_animalattack()

                ShowNotification( 'CALL LOCATION: ~g~' .. locname )

                GetRandomPed()
                local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                pedmodel = 'a_c_mtlion'
                hash = GetHashKey( pedmodel )
                while not HasModelLoaded( hash ) do
            
                    RequestModel( hash )
                    Wait( 1000 )
            
                end
                local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                TaskCombatPed( ped1, player )
                TaskCombatPed( ped2, ped1, 0, 16 )

                call_details_list = { 

                    'PR REPORTING THEY ARE BEING ATTACKED BY A MOUNTAIN LION'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to an animal attack incident.'

                RandomDisposition()

            end

        end

        if call == 'Missing person' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )

            function call_missingperson()

                callchancelist = { 1, 2 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomPed()
                    local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )

                end

                call_details_list = { 

                    'PR REPORTED MISSING PERSON / LAST SEEN IN PALETO FOREST'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a missing person incident.'

                RandomDisposition()

            end

        end

        if call == 'UDA' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )

            function call_uda()

                pos = GetEntityCoords( player )

                uda_position_x = pos.x + math.random( -1000, 1000 )
                uda_position_y = pos.y - math.random( 300, 500 )
                uda_position_z = pos.z + math.random( 100, 150 )

                _ , ground_z = GetGroundZFor_3dCoord( uda_position_x, uda_position_y, uda_position_z, true )

                callchancelist = { 1, 1, 2, 3, 3 }
                callchance =  callchancelist[ math.random( #callchancelist ) ]

                if callchance == 1 then

                    GetRandomUDAPed()
                    local ped = CreatePed( 26, hash, uda_position_x, uda_position_y, ground_z, 0.0, true, true )
                    GetRandomUDAPed()
                    local ped2 = CreatePed( 26, hash, uda_position_x, uda_position_y, ground_z, 0.0, true, true )
                    GetRandomUDAPed()
                    local ped3 = CreatePed( 26, hash, uda_position_x, uda_position_y, ground_z, 0.0, true, true )
                    TaskWanderStandard( ped, 10.0, 10 )
                    TaskWanderStandard( ped2, 10.0, 10 )
                    TaskWanderStandard( ped3, 10.0, 10 )

                elseif callchance == 2 then

                    GetRandomUDAPed()
                    local ped = CreatePed( 26, hash, uda_position_x, uda_position_y, ground_z, 0.0, true, true )
                    SetEntityHealth( ped, 0 )

                elseif callchance == 3 then

                    GetRandomUDAPed()
                    local ped = CreatePed( 26, hash, uda_position_x, uda_position_y, ground_z, 0.0, true, true )
                    GetRandomUDAPed()
                    local ped2 = CreatePed( 26, hash, uda_position_x, uda_position_y, ground_z, 0.0, true, true )
                    GetRandomWeapon()
                    GiveWeaponToPed( ped, weaponhash, 1000, 1, 1 )
                    TaskCombatPed( ped, player, 0, 16 )
                    GiveWeaponToPed( ped2, weaponhash, 1000, 1, 1 )
                    TaskCombatPed( ped2, player, 0, 16 )
                    TaskWanderStandard( ped, 10.0, 10 )
                    TaskWanderStandard( ped2, 10.0, 10 )

                end

                call_details_list = { 

                    'CAMERAS DETECTED POSSIBLE UDA(S) IN AREA'

                
                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a undocumented illegal alien incident. You are an undocumented illegal alien crossing the border. You only speak a little bit of english.'

                RandomDisposition()

                call_blip = AddBlipForRadius( uda_position_x, uda_position_y, ground_z, 100.0 )
                SetBlipColour( call_blip, 2 )
                SetBlipAlpha( call_blip, 128 )

            end

        end

        if call == 'Alarm' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_alarm()

                call_details_list = { 

                    'BURG ALARM / ZONE 1 / KEYHOLDER NOTIFIED'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a burglary alarm incident.'

                RandomDisposition()

            end

        end

        if call == 'Illegal hunting' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_illegalhunting()

                GetRandomPed()
                local ped1 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )
                GetRandomWeapon()
                GiveWeaponToPed( ped1, weaponhash, 1000, 1, 1 )
                animallist = { 'a_c_mtlion', 'A_C_Chimp', 'A_C_Deer', 'A_C_Boar' }
                pedmodel = animallist[ math.random( #animallist ) ]
                hash = GetHashKey( pedmodel )
                while not HasModelLoaded( hash ) do
            
                    RequestModel( hash )
                    Wait( 1000 )
            
                end
                local ped2 = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y + 1, cloclist[cloc].z + 1, 0.0, true, true )
                TaskCombatPed( ped1, ped2, 0, 16 )

                call_details_list = { 

                    'PR REPORTING ILLEGAL HUNTING',

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to an illegal hunting incident.'

                RandomDisposition()

            end

        end

        if call == 'Illegal camping' then
            
            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~/y ~w~to accept!' )
            create_blip()

            function call_illegalcamping()

                GetRandomVehicle()
                local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                GetRandomPed()
                local ped = CreatePedInsideVehicle( veh, 26, hash, -1, true, false )

                call_details_list = { 

                    'PR REPORTING ILLEGAL CAMPING'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to an illegal camping incident.'

                RandomDisposition()

            end

        end

        if call == 'Aircraft crash' then
            
            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~/y ~w~to accept!' )
            create_blip()

            function call_aircraftcrash()

                vehiclelist = { 'Duster', 'Cuban800' }
                veh = vehiclelist[ math.random( #vehiclelist ) ]
                vhash = GetHashKey( veh )
                RequestModel( vhash )
                while not HasModelLoaded( vhash ) do
            
                    RequestModel( vhash )
                    Wait( 1000 )
            
                end
                local veh = CreateVehicle( vhash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, GetEntityHeading( ply ), true, false )
                SetVehicleEngineHealth( veh, -4000 )
                ExplodeVehicle( veh, true, false )
                GetRandomPed()
                local ped = CreatePed( 26, hash, cloc.x + 3, cloc.y, cloc.z, 0.0, true, true )
                SetEntityHealth( ped, 0 )

                call_details_list = { 

                    'PR REPORTING AIRCRAFT CRASH'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to an aircraft crash incident.'

                RandomDisposition()

            end

        end

        if call == 'Injured hiker' then

            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~y ~w~to accept!' )
            create_blip()

            function call_injuredhiker()

                GetRandomPed()
                local ped = CreatePed( 26, hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, 0.0, true, true )
                SetEntityHealth( ped, 0 )

                call_details_list = { 

                    'PR ADV THEY ARE INJURED'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to an injured hiker incident.'

                RandomDisposition()

            end

        end

        if call == 'Traffic hazard' then
            
            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~/y ~w~to accept!' )
            create_blip()

            function call_traffichazard()

                GetRandomDebris()
                CreateObject( hash, cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z, true, false, false )

                PlaceObjectOnGroundProperly( hash )

                call_details_list = { 

                    'DEBRIS IN ROADWAY'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

            end

        end

        if call == 'Fire' then
            
            ShowNotification( '[~b~GFR~w~] CALL: ~b~' .. call )
            ShowNotification( 'Type ~y~/y ~w~to accept!' )
            create_blip()

            function call_fire()

                call_details_list = { 

                    'FLAMES AND SMOKE REPORTED'

                }

                call_details = call_details_list[ math.random( #call_details_list ) ]

                preface = preface .. '. You are being questioned in reference to a fire incident.'

                RandomDisposition()

            end

        end


    end

    function create_blip()

        call_blip = AddBlipForCoord( cloclist[cloc].x, cloclist[cloc].y, cloclist[cloc].z )
        SetBlipSprite( call_blip, 146 )
        SetBlipDisplay( call_blip, 4)
        SetBlipScale( call_blip, 1.0 )
        SetBlipColour( call_blip, 5 )
        SetBlipAsShortRange( call_blip, true )
        BeginTextCommandSetBlipName( 'STRING' )
        AddTextComponentString( 'Call Location' )
        EndTextCommandSetBlipName( call_blip )
        
    end

    function accept_call()

        if call == 'Welfare check' then

            call_welfarecheck()

        end

        if call == 'Dead body' then

            call_deadbody()

        end

        if call == 'Call for assist' then

            call_callforassist()

        end

        if call == 'Domestic violence' then

            call_domestic()

        end

        if call == 'Shots fired' then

            call_shotsfired()

        end

        if call == 'Robbery' then

            call_robbery()

        end

        if call == 'Trespass' then

            call_trespass()

        end

        if call == 'Fight' then

            call_fight()

        end

        if call == 'Intoxicated person' then

            call_intoxicatedperson()

        end

        if call == 'Person with knife' then

            call_personwithknife()

        end

        if call == '911 Hangup' then

            call_911hangup()

        end

        if call == 'Vehicle Collision' then

            call_mva()

        end

        if call == 'Motorist assist' then

            call_motoristassist()

        end

        if call == 'Attempt to locate' then

            call_attempttolocate()

        end

        if call == 'Animal attack' then

            call_animalattack()

        end

        if call == 'Missing person' then

            call_missingperson()

        end

        if call == 'UDA' then

            call_uda()

        end

        if call == 'Alarm' then

            call_alarm()

        end
        
        if call == 'Illegal hunting' then

            call_illegalhunting()

        end

        if call == 'Illegal camping' then

            call_illegalcamping()

        end

        if call == 'Aircraft crash' then

            call_aircraftcrash()

        end
        
        if call == 'Injured hiker' then

            call_injuredhiker()

        end

        if call == 'Traffic hazard' then

            call_traffichazard()

        end

        if call == 'Fire' then

            call_fire()

        end

        onduty = false

        call_time = call_time_set

        print( call_details )

        ShowNotification( '[~b~GFR~w~] Call accepted!' )

    end

    if onduty == true then

        choose_location()
        choose_call()
        callouts()

    end

end

Citizen.CreateThread( function() 

    while true do

        Citizen.Wait( 0 )

        while call_time ~= 0 do

            Wait( 1000 )

            call_time = call_time - 1

        end

        start_callsystem()

        call_time = call_time_set

    end

end )

