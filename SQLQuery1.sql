
--** �擾
--**

--�R���{�{�b�N�X�@�啪��	�@
select BUNRUI
from   M_HAIKAN
go

--�R���{�{�b�N�X�@������	�A
select SYURUI
from   M_HAIKAN
go

--�R���{�{�b�N�X�@������	�B
select MEISYOU
from   M_HAIKAN



--�@ �i�荞��
select 
		* --Grid����
from   M_HAIKAN
where  BUNRUI = '' --C#���ځ@ Blank����K�{

--�A�i�荞��
select 
		* --Grid����
from   M_HAIKAN
where  SYURUI = '' --C#����
AND    BUNRUI = ''

--�B�i�荞��
select 
		* --Grid����
from   M_HAIKAN
where  MEISYOU = '' --C#����
AND    SYURUI = '' --C#����
AND    BUNRUI = ''


--**  �X�V  Access�̃N�G�������邱��
--    

UPDATE M_HAIKAN
--SET               �e�[�u������=��ʍ���  
	   KATABAN
where  MEISYOU = '' --C#����
AND    SYURUI = '' --C#����
AND    BUNRUI = ''


--**�@�폜  Access �̃N�G�������邱��
DELETE M_HAIKAN
where  MEISYOU = '' --C#����
AND    SYURUI = '' --C#����
AND    BUNRUI = ''

