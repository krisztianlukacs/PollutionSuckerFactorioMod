# Pollution Sucker Factorio Mod

## Business needs

Ez egy hatalmas gyár, ami beszívja a szennyezett levegőt, kiveszi belőle a port és nyersanyagokká alakítja, majd visszafújja a tiszta levegőt. 

## Általános szabályok
- jelenleg a grafikával nem foglalkozunk, csak a területnek megfelleő piros kockák legyenek a grafikák, hogy lássam a helyfoglalást. Később a grafikát lecserélem. 

## Egységek

- Porszívó (Pollution Sucker)
- Levegő fújó (Fresh Air Outlet )
- Tisztító gyár (Air Clener Factory)

## Pollution Sucker 

- Ez egy 1x1 kocka nagyságú magas torony, aminek a tetején és az oldalán bemeneti nyillások vannak. 
- csövön szállítja a szennyezet levegőt (polluted air) a Tisztító gyárba. A szennyezett levegő úgy viselkedik a játék szempontjából, mintha folyadák lenne, egy újfajta folyadék, ami csövön szállítható.


## Fresh Air Outlet
- Egy egy 4x4 kocka nagyságú ventillátor, ami kifújja a friss levegőt. 
- bemenetként Clean Air -t. Ez is olyan a játék szempontjából mintha folyadák lenne és csövön szállítható. 
- Technikailag a Fresh Air Outlet nem működik, ha nem kap bemenetként Clean Air -t az "Air Clener Factory" -tól . 
- A játék szempontjából ez az egység a levegő pullution tisztító, 200 kocka nagyságban csökkenti a szennyezést, 100 "Behemoth biter" tisztításával azonos mértékben. 
- A minőség javulásával minden szinten növekedik a tisztítás mértéke 30% -al.

## Air Clener Factory

Nagyon sok alapanyag, amíg megépítjük és folyamatosan rengeteg vizet és atmoszférát követel a működéshez. 
Bemenet a Szennyezet levegő, kimenet a tiszta levegő. 
Ez egy óriási egység 12x4 kockát foglal (Az alap gyár 4x4 -et foglat ha jól emlékszem)

Építési költség:
- 1 darab atomerőmű
- 1200 Acéllemez 
- 1200 réz lap 
- 1200 réz tekercs 
- 1200 vaslemez 

Az üzemeléshez óriási mennyiségű víz kell. Nem tudok most pontos számot, de nagyon sok kelljen. A víz 10% elveszíti, de a többi víz kijön a gyárból.
A Az üzemeléshez óriási mennyiségű atmoszféra kell. Nem tudok most pontos számot, de nagyon sok kelljen. Az atmoszféra 10% elveszíti, de a többi atmoszféra kijön a gyárból.

Ezen felül bemenet a szennyezett levegő és kimenet a tiszta levegő. 

A gyár 500kW energiát eszik és véletlenszerűen hoz létre nyersanyagot:
- szén érc, vas érc, réz érc, uránérc, kő.

Másodpercenként 10 alapanyag jön létre összesen, de véletlenszerűen más és más. A minőség javulással duplázódik a termelt anyag mennyisége. 20,40,80,160 / másodperc.

A gyárat csak 3-as típusú gyárban lehet gyártani.

A kutatási költsége a csomagnak:
- 500 zöld kutatási csomag
- 1000 piros kutatási csomag 
- 250 sárga kutatási csomag
- 250 türkiz kutatási csomag 
- 200 Kohászati kutatási csomag (narancssárga)

A szívó és fújó egységek 10kw energiát fogyasztanak. Egy csővezetékhez tetszőleges számú szívó és fúlyó egység csatlakoztatható, de a levegő tisztító képesség a gyárak számától függ és nem a szívú vagy fújó egységek számától.
