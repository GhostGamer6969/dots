Name = "keybindings"
NamePretty = "Keybindings"
HideFromProviderlist = true
Cache = false

function GetEntries()
    local entries = {}

    local home = os.getenv("HOME") or ""
    local hypr_config = home .. "/.config/hypr/hyprland.lua"

    -- Find laptop-keybindings.lua from hyprland.lua
    local config_file_handle = io.popen(
        "grep -E 'require.*laptop%-keybindings' '" .. hypr_config .. "' 2>/dev/null"
    )

    local config_file = ""

    if config_file_handle then
        local require_line = config_file_handle:read("*l") or ""
        config_file_handle:close()

        -- Extract the require path
        config_file = require_line:match(
            'require%s*%(%s*["\'](.-)["\']%s*%)'
        ) or ""

        -- Convert module path to filesystem path
        if config_file ~= "" then
            config_file = config_file:gsub("^%./", "")
            config_file = config_file:gsub("%.", "/")

            if config_file:sub(1, 1) == "/" then
                config_file = config_file .. ".lua"
            else
                config_file =
                    home .. "/.config/hypr/" .. config_file .. ".lua"
            end
        end
    end

    -- Fallback
    if config_file == "" then
        config_file =
            home .. "/.local/share/dotfiles/default/hypr/conf/laptop-keybindings.lua"
    end

    local test_file = io.open(config_file, "r")

    if not test_file then
        table.insert(entries, {
            Text = "Error: Keybindings file not found",
            Subtext = config_file,
            Value = "",
        })

        return entries
    end

    test_file:close()

    local file = io.open(config_file, "r")

    if not file then
        return entries
    end

    local mainMod = "SUPER"
    local terminal = "ghostty"

for line in file:lines() do

    ----------------------------------------------------------------
    -- Variables
    ----------------------------------------------------------------

    local mod_value = line:match(
        '^%s*local%s+mainMod%s*=%s*["\'](.-)["\']'
    )

    if mod_value then
        mainMod = mod_value
    end

    local terminal_value = line:match(
        '^%s*local%s+terminal%s*=%s*["\'](.-)["\']'
    )

    if terminal_value then
        terminal = terminal_value
    end


    ----------------------------------------------------------------
    -- Ignore commented-out lines
    ----------------------------------------------------------------

    if not line:match("^%s*%-%-") then

        ----------------------------------------------------------------
        -- The description must come after the closing hl.bind(...)
        -- This prevents "--class", "--clipboard-only", etc. inside
        -- command strings from being interpreted as descriptions.
        ----------------------------------------------------------------

        local desc = line:match(
            "%)%s*%-%-%s*(.-)%s*$"
        )

        if desc and desc ~= "" then

            ----------------------------------------------------------------
            -- Get the first argument of hl.bind()
            ----------------------------------------------------------------

            local bind_args = line:match(
                '^%s*hl%.bind%(%s*(.-)%s*,'
            )

            if bind_args then

                local key_combo

                ----------------------------------------------------------------
                -- Literal key
                ----------------------------------------------------------------

                key_combo = bind_args:match(
                    '^%s*["\'](.-)["\']%s*$'
                )

                ----------------------------------------------------------------
                -- mainMod .. " + KEY"
                ----------------------------------------------------------------

                if not key_combo then
                    local suffix = bind_args:match(
                        '^%s*mainMod%s*%.%.%s*["\'](.-)["\']%s*$'
                    )

                    if suffix then
                        key_combo = mainMod .. suffix
                    end
                end

                ----------------------------------------------------------------
                -- Expand variables
                ----------------------------------------------------------------

                if key_combo then
                    key_combo = key_combo:gsub(
                        "%$mainMod",
                        mainMod
                    )

                    key_combo = key_combo:gsub(
                        "%$terminal",
                        terminal
                    )
                end

                ----------------------------------------------------------------
                -- Create entry
                ----------------------------------------------------------------

                if key_combo and key_combo ~= "" then

                    local padding = 35 - #key_combo

                    if padding < 1 then
                        padding = 1
                    end

                    local padded_combo =
                        key_combo .. string.rep(" ", padding)

                    local display_text =
                        padded_combo .. "→ " .. desc

                    table.insert(entries, {
                        Text = display_text,
                        Value = key_combo .. " → " .. desc,
                        Actions = {
                            copy =
                                "echo '" ..
                                key_combo ..
                                "' | wl-copy && notify-send 'Copied' '" ..
                                key_combo ..
                                "'",
                        },
                    })
                end
            end
        end
    end
end

    file:close()


    ----------------------------------------------------------------
    -- No entries
    ----------------------------------------------------------------

    if #entries == 0 then
        table.insert(entries, {
            Text = "No keybindings found",
            Subtext = "Check your Hyprland config",
            Value = "",
        })
    end

    return entries
end
