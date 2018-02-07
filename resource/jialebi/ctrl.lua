function config(map)
	MapCanSavePos(map, 0)			--Сохранять точку нахождения при релоге
	MapCanPK(map, 1)				--ПвП режим на карте
	MapCanGuild(map,0)				--Соблюдать принадлежность к гильдии
	MapCopyNum(map, 1)				--Клонирование карты (ТОЛЬКО 1. БОЛЕЕ 1 ВЫПОЛНЯЕТСЯ ДЛЯ АРЕНЫ)
	--MapCopyStartType(map, 1)		--Тип появления на карте
	SingleMapCopyPlyNum(map, 300)	--Макимум человек на карте
	MapCanTeam(map , 1)				--Возможность делать и вступать в пати
	MapType( map , 4 ) 				--Тип карты:
	RepatriateDie(map,1)			--Возможность воскрешения
	MapCanStall(map , 0)			--Возможность ставить ларьки
end

function init_entry(map)
end

function after_enter_jialebi( role , map_copy )
--AfterEnter(role)
end

function before_leave_jialebi( role )
end

function map_run_jialebi(map)
end

function map_copy_run_jialebi(map)
end

function map_copy_run_special_jialebi(map)
end