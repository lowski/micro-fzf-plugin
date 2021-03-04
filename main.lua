VERSION = "2.0.0"

local micro = import("micro")
local shell = import("micro/shell")
local config = import("micro/config")
local buffer = import("micro/buffer")
local strings = import("strings")

function fzf(bp)
    local command = [[fzf --info inline --preview 'cat {}']]
    local output, err = shell.RunInteractiveShell(command, false, true)
    if err ~= nil then
        micro.InfoBar():Error(err)
    else
        fzfOutput(output, {bp})
    end
end

function fzfOutput(output, args)
    local bp = args[1]
    output = strings.TrimSpace(output)
    if output ~= "" then
        local buf, err = buffer.NewBufferFromFile(output)
        if err == nil then
            bp:OpenBuffer(buf)
        end
    end
end

function init()
    config.MakeCommand("fzf", fzf, config.NoComplete)
end
