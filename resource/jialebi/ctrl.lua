function config(map)
	MapCanSavePos(map, 0)			--��������� ����� ���������� ��� ������
	MapCanPK(map, 1)				--��� ����� �� �����
	MapCanGuild(map,0)				--��������� �������������� � �������
	MapCopyNum(map, 1)				--������������ ����� (������ 1. ����� 1 ����������� ��� �����)
	--MapCopyStartType(map, 1)		--��� ��������� �� �����
	SingleMapCopyPlyNum(map, 300)	--������� ������� �� �����
	MapCanTeam(map , 1)				--����������� ������ � �������� � ����
	MapType( map , 4 ) 				--��� �����:
	RepatriateDie(map,1)			--����������� �����������
	MapCanStall(map , 0)			--����������� ������� ������
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