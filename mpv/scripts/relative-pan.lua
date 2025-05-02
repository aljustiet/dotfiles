-- relative-pan.lua
local mp = require 'mp'
local utils = require 'mp.utils'

-- Configuration: Adjust the step value to change pan speed.
-- This represents the fraction of the window dimension to move per step.
local base_step = 0.04 -- Move 4% of the window width/height per key press
                      -- Change this value directly (e.g., 0.05 for 5%)

-- Function to perform the relative pan
local function relative_pan(direction)
    local current_zoom = mp.get_property_native("video-zoom") or 0
    local pan_x = mp.get_property_native("video-pan-x") or 0
    local pan_y = mp.get_property_native("video-pan-y") or 0

    -- Calculate the scaling factor based on video-zoom
    -- video-zoom is logarithmic base 2: scale = 2^zoom
    local scale_factor = 2 ^ current_zoom

    -- Calculate the step size adjusted for zoom.
    -- We divide the base screen step by the scale factor.
    -- Use max(1, scale_factor) to avoid division by zero or huge steps if somehow scale_factor < 1
    local adjusted_step = base_step / math.max(1, scale_factor)

    local dx = 0
    local dy = 0

    if direction == "left" then
        -- To move VIEW left, shift IMAGE right (positive pan-x)
        dx = adjusted_step
    elseif direction == "right" then
        -- To move VIEW right, shift IMAGE left (negative pan-x)
        dx = -adjusted_step
    elseif direction == "up" then
        -- To move VIEW up, shift IMAGE down. Need negative pan-y (V3 logic).
        -- Let's try positive pan-y based on user feedback.
         dy = adjusted_step
    elseif direction == "down" then
        -- To move VIEW down, shift IMAGE up. Need positive pan-y (V3 logic).
        -- Let's try negative pan-y based on user feedback.
        dy = -adjusted_step
    else
        return -- Unknown direction
    end

    -- Apply the pan
    mp.set_property_native("video-pan-x", pan_x + dx)
    mp.set_property_native("video-pan-y", pan_y + dy)

    -- Optional: Show current pan values
    local new_px = mp.get_property_native("video-pan-x")
    local new_py = mp.get_property_native("video-pan-y")
    mp.osd_message(string.format("Pan X: %.3f | Pan Y: %.3f", new_px, new_py), 0.5)
end

-- Bind keys within the script (replaces input.conf bindings for these keys)
mp.add_key_binding("LEFT", "relative-pan-left", function() relative_pan("left") end, { repeatable = true })
mp.add_key_binding("RIGHT", "relative-pan-right", function() relative_pan("right") end, { repeatable = true })
mp.add_key_binding("UP", "relative-pan-up", function() relative_pan("up") end, { repeatable = true })
mp.add_key_binding("DOWN", "relative-pan-down", function() relative_pan("down") end, { repeatable = true })

-- Optional: Numpad keys
mp.add_key_binding("KP4", "relative-pan-left-kp", function() relative_pan("left") end, { repeatable = true })
mp.add_key_binding("KP6", "relative-pan-right-kp", function() relative_pan("right") end, { repeatable = true })
mp.add_key_binding("KP8", "relative-pan-up-kp", function() relative_pan("up") end, { repeatable = true })
mp.add_key_binding("KP2", "relative-pan-down-kp", function() relative_pan("down") end, { repeatable = true })

print("Relative Pan script loaded (v4 - swapped vertical again).") -- Confirmation in console/log
