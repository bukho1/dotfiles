hl.config({
    general = {
        gaps_in     = 5,
        gaps_out    = 10,
        border_size = 2,
        layout      = "dwindle",
        col = {
            active_border   = { colors = {"rgb(ffb3b3)", "rgb(e6bdbc)"}, angle = 45 },
            inactive_border = "rgb(a08c8c)",
        },
    },
    decoration = {
        rounding       = 10,
        rounding_power = 2,
        
        blur = {
            enabled = true,
            size    = 3,
            passes  = 1
        },
        shadow = {
            enabled = false
        }
    },
    dwindle = {
        preserve_split = true
    },
    master = {
        new_status = "master"
    }
})
