-- SERVER //

OpenAI = {

    apiKey = '',
    apiEndpoint = 'https://api.openai.com/v1/chat/completions'

}

function OpenAI_GenerateText( msg )

    headers = {

        ['Content-Type'] = 'application/json',
        ['Authorization'] = 'Bearer ' .. OpenAI.apiKey

    }

    data = {

        model = 'gpt-3.5-turbo',
        messages = {{

            role = 'user',
            content = msg
            

        }},

    }

    requestData = json.encode( data )

    PerformHttpRequest( OpenAI.apiEndpoint, function( statusCode, response, headers ) 

        if statusCode == 200 then

            response_data = json.decode( response )
            choices = response_data.choices

            completion = choices[1].message.content

            TriggerClientEvent( 'c_talk', -1, completion )

        else

            print( 'Failed.' )
            print( tostring(statusCode) )

        end

    end, 'POST', requestData, headers )

end

RegisterNetEvent( 's_talk' )
AddEventHandler( 's_talk', function( disposition, history, preface, text ) 

    if disposition == 1 then

        OpenAI_GenerateText( history .. preface .. text )

    else

        OpenAI_GenerateText( history .. preface .. text )

    end

end )

--[[url = 'https://api.openai.com/v1/chat/completions'

headers = {

    ['Authorization'] = 'Bearer ' .. apiKey

}]]
