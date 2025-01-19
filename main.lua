--- Constants ---
-- Window values
local WINDOW_WIDTH, WINDOW_HEIGHT

-- Colors palette
local BACKGROUND_COLOR, CELL_COLOR
--- /Constants ---

local function drawBoardGame()
    local aux1   = 120
    local aux2   = 195
    local margin = 85
    love.graphics.setColor(CELL_COLOR)
    for i = 0, 9, 1 do
        for j = 0, 9, 1 do
            love.graphics.polygon("fill",
                aux1 + (margin * j), aux1 + (margin * i),
                aux2 + (margin * j), aux1 + (margin * i),
                aux2 + (margin * j), aux2 + (margin * i),
                aux1 + (margin * j), aux2 + (margin * i)
            )
        end
    end
end

-- Do one-time setup of the game
function love.load()
    -- Set constants values
    WINDOW_WIDTH     = love.window.getWidth
    WINDOW_HEIGHT    = love.window.getHeight
    BACKGROUND_COLOR = {love.math.colorFromBytes(8, 8, 8)}
    CELL_COLOR       = {love.math.colorFromBytes(42, 42, 42)}

    -- Set window size
    love.window.setMode(0, 0)

    -- Set background color
    love.graphics.setBackgroundColor(BACKGROUND_COLOR)
end

-- Manage the game's state frame to frame
function love.update()
    
end

-- Render the game onto the screen
function love.draw()
    drawBoardGame()
end