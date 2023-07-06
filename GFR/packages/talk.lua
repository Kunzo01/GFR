-- TALK PACKAGE //

disposition = 1
history = ''
preface = 'Respond to me in one short sentence like you are in los santos being questioned by a police officer(me)'
text = ''

RegisterCommand( 'a', function( source, args, rawCommand )  

    history = history .. '. ' .. args[1]

    if disposition == 1 then

        preface = preface .. '. You are very cooperative'

    else

        preface = preface .. '. You are very uncooperative and angery'

    end

    text = args[1]

    TriggerServerEvent( 's_talk', disposition, history, preface, text )

end )

RegisterCommand( 're', function( source, args, rawCommand )  

    disposition = 1
    history = ''
    preface = 'Respond to me in one short sentence like you are a citizen of los santos being questioned by a police officer(me)'
    text = ''

    print( '[GFR] AI Reset!' )

end )

RegisterNetEvent( 'c_talk' )
AddEventHandler( 'c_talk', function( msg ) 

    print( "[GFR] Person: " .. msg )

    history = history .. '. ' .. msg

end )