-- mod info
mod = {
}

prevLineData = nil

-- onInit event
registerForEvent('onInit', function()
    Override('SubtitlesGameController', 'OnHideLine', function(self, lineData, wrappedMethod)
        if prevLineData then
            wrappedMethod(prevLineData)
        end
        prevLineData = lineData
    end)
end)

-- return mod info
-- for communication between mods
return mod
