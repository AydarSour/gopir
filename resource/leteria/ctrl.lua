print( "Загрузка Ctrl.lua" )

function config(map)
  MapCanSavePos(map, 1)
   MapCopyNum(map, 1)
   SingleMapCopyPlyNum(map, 300)
   MapCanTeam(map , 1)
   MapType ( map , 1 )
end

function map_run_leteria(map)
end

function map_copy_run_leteria(map)
end

function after_enter_leteria( role , map_copy )
--AfterEnter(role)
end


function before_leave_leteria( role )
end

function get_map_entry_pos_leteria()
end

function init_entry(map)
end

function map_copy_first_run_leteria(map_copy)
end

function map_copy_run_special_leteria(map_copy)
end


function map_copy_close_leteria(map_copy)
end

function can_open_entry_leteria(map) 
end 

