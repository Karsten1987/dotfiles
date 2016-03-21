globalkeys = awful.util.table.join(globalkeys,

    -- special keys for volume
     awful.key({ }, "XF86AudioRaiseVolume",
                function ()
                    awful.util.spawn("amixer -q sset Master 2dB+")
                end),
     awful.key({ }, "#115",
                function ()
                    awful.util.spawn("amixer -q sset Master 2dB+")
                end),
     awful.key({ }, "XF86AudioLowerVolume",
                 function ()
                    awful.util.spawn("amixer -q sset Master 2dB-")
                end),
     awful.key({ }, "XF86TouchpadToggle",
                function ()
                    awful.util.spawn_with_shell("synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')")
                end),

    -- Rename tag
    awful.key({ modkey, "Shift",  }, "F2",    function ()
                        awful.prompt.run({ prompt = "Rename tab: ", text = awful.tag.selected().name, },
                        mypromptbox[mouse.screen].widget,
                        function (s)
                            awful.tag.selected().name = s
                        end)
                end),

    -- Lock screeen
    awful.key({ modkey, "Control"}, "l",
              function()
                 awful.util.spawn("gnome-screensaver-command --lock")
              end),

    -- Screenshots
    awful.key({ modkey, }, "Print",
                function ()
                        awful.util.spawn_with_shell("scrot -u")
              end),
    awful.key({ modkey, "Shift", }, "Print",
                function ()
                        awful.util.spawn_with_shell("sleep 0.5 && scrot -s")
              end)
)

return globalkeys
