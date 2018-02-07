function config(map)
  MapCanSavePos(map, 1)
    MapCanPK(map, 1)
   MapCopyNum(map, 1)
   SingleMapCopyPlyNum(map, 300)
   MapCanTeam(map , 1)
   MapType ( map , 4 )
end

function map_run_lonetower(map)

end

function map_copy_run_lonetower(map)
end

function map_copy_run_special_lonetower(map)
end

function after_enter_lonetower( role , map_copy )
--AfterEnter(role)
end

function before_leave_lonetower( role )
end