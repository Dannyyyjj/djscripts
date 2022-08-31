-- Notification

function showNotification(message, color, flash, saveToBrief)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    ThefeedNextPostBackgroundColor(color)
    EndTextCommandThefeedPostTicker(flash, saveToBrief)
end 

RegisterCommand('testNotification', function(_, _, rawCommand) 
    showNotification(
        rawCommand,
        130,
        true,
        true
    )
end)









-- Advanced Notifications
-- Alerts
-- Markers
-- Subtitles
-- Busy Spinners
-- Text Input