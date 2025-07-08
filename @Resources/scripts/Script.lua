local words = {}
local current = "No words found."

function Initialize()
    math.randomseed(os.time())
    local wordFile = SKIN:GetVariable('WordFile')
    words = {}

    -- Debug: Check file path
    SKIN:Bang('!Log', 'Trying to open: ' .. wordFile, 'Notice')

    local file = io.open(wordFile, "r")
    if file then
        for line in file:lines() do
            if line:match("%S") then
                table.insert(words, line)
            end
        end
        file:close()
        SKIN:Bang('!Log', 'Loaded ' .. tostring(#words) .. ' words.')
    else
        SKIN:Bang('!Log', 'Failed to open file: ' .. wordFile)
    end

    current = pickRandomWord()
end

function pickRandomWord()
    if #words > 0 then
        local idx = math.random(1, #words)
        local line = words[idx]
        local word, meaning = string.match(line, "([^,]+),%s*(.+)")
        local result
        if word and meaning then
            result = word .. ": " .. meaning
        else
            result = line
        end
        -- Write to last_word.txt: line number: word/meaning
        local lastWordFile = SKIN:GetVariable('LastWordFile')
        if not lastWordFile or lastWordFile == '' then
            lastWordFile = SKIN:GetVariable('@') .. 'last_word.txt'
        end
        local f = io.open(lastWordFile, "w")
        if f then
            f:write(idx .. ": " .. result .. "\n")
            f:close()
        end
        return result
    else
        return "No words found here."
    end
end

function Update()
    -- Pick a new word every update (every hour)
    current = pickRandomWord()
    return current
end

function GetString()
    return current
end