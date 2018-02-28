

print( "Загрузка Ctrl.lua" )


function config(map)
    MapCanSavePos(map, 0)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end
function map_copy_run_lonetower()

end

function map_run_lonetower(map)

end

function after_enter_lonetower( role , map_copy )

end

function before_leave_lonetower( role )

end
