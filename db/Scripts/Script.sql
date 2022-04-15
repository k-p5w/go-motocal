select rec
from (
select 
TW.NEWNAME
,'|'||TW.IMG||'|'||TW.NEWNAME||'|&'||
--TW.WeponType
substr(CASE
  WHEN instr(TW.WeponType,"red") > 0 THEN replace(TW.WeponType, 'red', '#ff0000')
  WHEN instr(TW.WeponType,"orange") > 0 THEN replace(TW.WeponType, 'orange', '#ff9900')
  WHEN instr(TW.WeponType,"brown") > 0 THEN replace(TW.WeponType, 'brown', '#993300')
  WHEN instr(TW.WeponType,"blue") > 0 THEN replace(TW.WeponType, 'blue', '#3366ff')
  WHEN instr(TW.WeponType,"purple") > 0 THEN replace(TW.WeponType, 'purple', '#800080')
  WHEN instr(TW.WeponType,"green") > 0 THEN replace(TW.WeponType, 'green', '#339966')
  ELSE '@else@'
  END ,1,14) || replace(substr(TW.WeponType ,instr(TW.WeponType,":"),2), ':', '{')||'};'
||'|'||TW.WeponCtgr||'|'||TW.Ranks||'|'||TW.WS||'|'||TW.SKill1st||'|' ||TW.SKill2nd  
||'|' || TW.MinHP||'|'||TW.MinATK||'|'||TW.MaxHP||'|'||TW.MaxATK||'|'||TW.CtgrB||'|'||substr(TW.Series ,3,instr(TW.Series,">")-3) ||'||'
as rec
,TW.*
from(
select 
--T_WEPONS.NAME,
'1.ON' as CHGNAME,
T_WEPONS.NAME as ORGNAME,
substr(NAME ,3,instr(NAME,">")-3) as NEWNAME,
T_WEPONS.*
fROM T_WEPONS
where  1= 1
and NAME  like '%[%'
UNION 
select 
'2.OFF' as CHGNAME,
T_WEPONS.NAME as ORGNAME,
T_WEPONS.NAME as NEWNAME,
T_WEPONS.*
fROM T_WEPONS
where  1= 1
and NAME  not like '%[%'
) TW
where 1 = 1
and TW.NEWNAME in(
'ディザスタークロー'
,'ドナー・トレーネ'
,'トリックサーペント'
,'トロピカルウィンター'
,'ドンパッチソード'
,'ナイト・オブ・アイス'
,'ノーティーウィッチ'
,'ノーフェイス'
,'ハート・ソングバーズ'
,'ハートビートミトン'
,'バーベル'
,'バブルレター'
,'パラスソード・ミーレス'
,'ハルシエシス'
,'ハルモニア'
,'パンタグリュエル'
,'バンブーシャフト'
,'ヒート・オブ・ザ・サン'
,'ビガ・エドフ'
,'ビスマルク'
,'ファントムクロー'
,'プラズマクラック'
,'ブラックローズ'
,'ブランドニューメロディ'
,'ブルータル・ハープーン'
,'プレイ・オブ・テンペランス'
,'ブレイブソード'
,'ペイン・アンド・ストレイン'
,'ペイン・オブ・デス'
,'ヘリオガバルス・ミーレス'
,'ベルファスト'
,'ホープナックル'
,'ホルアクティ'
,'ボン・ジョワ'
,'ボンサイブレード'
,'マイムールヴィジョン・ミーレス'
,'マリトッツォ'
,'マリンエーテリアル'
,'ミミングバゼラード'
,'メドゥシアナ・フロート'
,'メルヴェイユ'
,'メロディ・オブ・ジャッジメント'
,'ユキハネ'
,'ラ・シルフィード'
,'ライズ・オブ・ジャスティス'
,'ライトニング・シュヴァルツ'
,'ラブリーエース'
,'ラムスンド・ミーレス'
,'ランセット'
,'リトルブーケフルール'
,'リフレクト・オブ・ザ・ムーン'
,'リンネ'
,'ルナ・ベアラー'
,'レヴェイエ'
,'ロケットランチャー'
,'ワールド・エンド'
,'安心と信頼の赤箱御守り'
,'炎威の翼鎌'
,'火尖鎗'
,'鬼切安綱'
,'究極不変のダイアグラム'
,'銀氷の槍グレイシャー'
,'空気砲'
,'君と僕の桃色水平線'
,'月刊キラメキ ＶｏＬ.29'
,'黒獅子の牙斧'
,'呪蝕の骸槍'
,'宿命鉄拳'
,'醤箸玉杯'
,'森神の祈杖'
,'第九申行棒'
,'第十酉行杖'
,'天干地支像・丑之飾'
,'天干地支爪・寅之飾'
,'洞爺湖木刀'
,'童子切安綱'
,'虹の琴'
,'日輪刀'
,'白司雕竜'
,'風信子の護剣'
,'泡沫夢幻'
,'麺や油星幟'
,'雷上動'
,'瑠璃茉莉髪帯'
,'烈弩宇威愚魂'
,'六韜軍配'
,'橄欖の弩'
,'アルベス・レプリカ'
,'ヴェローナボウ'
,'エムブラスク・レプリカ'
,'スナックポール'
,'スパイクシューター'
,'ディスターバンスシグナ'
,'ハッピーエンドベル'
,'ファンゴルン'
,'穿ち門松'
,'日輪橙音'
)
order by 1 asc
)
;

