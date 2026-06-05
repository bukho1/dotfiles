hl.config({
    input = {
        kb_layout    = "us",
        follow_mouse = 1,
        sensitivity  = 0,
        touchpad = {
            natural_scroll = true,
        }
    }
})

hl.device({
    name          = "synps/2-synaptics-touchpad",
    accel_profile = "flat",
})
