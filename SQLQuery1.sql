
--** 取得
--**

--コンボボックス　大分類	①
select BUNRUI
from   M_HAIKAN
go

--コンボボックス　中分類	②
select SYURUI
from   M_HAIKAN
go

--コンボボックス　小分類	③
select MEISYOU
from   M_HAIKAN



--① 絞り込み
select 
		* --Grid項目
from   M_HAIKAN
where  BUNRUI = '' --C#項目　 Blank判定必須

--②絞り込み
select 
		* --Grid項目
from   M_HAIKAN
where  SYURUI = '' --C#項目
AND    BUNRUI = ''

--③絞り込み
select 
		* --Grid項目
from   M_HAIKAN
where  MEISYOU = '' --C#項目
AND    SYURUI = '' --C#項目
AND    BUNRUI = ''


--**  更新  Accessのクエリを見ること
--    

UPDATE M_HAIKAN
--SET               テーブル項目=画面項目  
	   KATABAN
where  MEISYOU = '' --C#項目
AND    SYURUI = '' --C#項目
AND    BUNRUI = ''


--**　削除  Access のクエリを見ること
DELETE M_HAIKAN
where  MEISYOU = '' --C#項目
AND    SYURUI = '' --C#項目
AND    BUNRUI = ''

