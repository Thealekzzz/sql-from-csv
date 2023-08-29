
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `testTable` (
`NAAB Code` varchar(10) DEFAULT NULL,
`InterRegNumber` varchar(18) DEFAULT NULL,
`Name` varchar(20) DEFAULT NULL,
`Full Name` varchar(50) DEFAULT NULL,
`Breed` varchar(9) DEFAULT NULL,
`TPI` varchar(4) DEFAULT NULL,
`NM$` varchar(5) DEFAULT NULL,
`CM$` varchar(5) DEFAULT NULL,
`FM$` varchar(5) DEFAULT NULL,
`GM$` varchar(5) DEFAULT NULL,
`Milk` varchar(5) DEFAULT NULL,
`Protein` varchar(4) DEFAULT NULL,
`Prot%` varchar(5) DEFAULT NULL,
`Fat` varchar(4) DEFAULT NULL,
`Fat %` varchar(5) DEFAULT NULL,
`CFP` varchar(5) DEFAULT NULL,
`FE` varchar(4) DEFAULT NULL,
`Feed Saved` varchar(4) DEFAULT NULL,
`Prel` varchar(3) DEFAULT NULL,
`D / H` varchar(11) DEFAULT NULL,
`PL` varchar(5) DEFAULT NULL,
`C-LIV` varchar(5) DEFAULT NULL,
`H-LIV` varchar(4) DEFAULT NULL,
`DPR` varchar(4) DEFAULT NULL,
`SCS` varchar(4) DEFAULT NULL,
`SCE` varchar(4) DEFAULT NULL,
`SCE Rel` varchar(3) DEFAULT NULL,
`SCE Obs` varchar(5) DEFAULT NULL,
`DCE` varchar(3) DEFAULT NULL,
`SSB` varchar(4) DEFAULT NULL,
`DSB` varchar(4) DEFAULT NULL,
`CCR` varchar(4) DEFAULT NULL,
`HCR` varchar(4) DEFAULT NULL,
`EFC` varchar(5) DEFAULT NULL,
`GL` varchar(4) DEFAULT NULL,
`MAST` varchar(4) DEFAULT NULL,
`KET` varchar(4) DEFAULT NULL,
`RP` varchar(4) DEFAULT NULL,
`MET` varchar(4) DEFAULT NULL,
`DA` varchar(4) DEFAULT NULL,
`MF` varchar(4) DEFAULT NULL,
`MS` varchar(3) DEFAULT NULL,
`DWP$` varchar(4) DEFAULT NULL,
`WT$` varchar(4) DEFAULT NULL,
`CW$` int DEFAULT NULL,
`PTAT` varchar(5) DEFAULT NULL,
`UDC` varchar(6) DEFAULT NULL,
`FLC` varchar(5) DEFAULT NULL,
`BWC` varchar(5) DEFAULT NULL,
`DC` varchar(5) DEFAULT NULL,
`TRel` varchar(5) DEFAULT NULL,
`D / H2` varchar(11) DEFAULT NULL,
`Stature` varchar(5) DEFAULT NULL,
`Strength` varchar(5) DEFAULT NULL,
`Body Depth` varchar(5) DEFAULT NULL,
`Dairy form` varchar(5) DEFAULT NULL,
`Rump Angle` varchar(5) DEFAULT NULL,
`Thurl Width` varchar(5) DEFAULT NULL,
`RLSV` varchar(5) DEFAULT NULL,
`RLRV` varchar(5) DEFAULT NULL,
`Foot Angle` varchar(5) DEFAULT NULL,
`FLS` varchar(5) DEFAULT NULL,
`F. Udder Att.` varchar(5) DEFAULT NULL,
`R Udder Height` varchar(5) DEFAULT NULL,
`Rear Udder Width` varchar(5) DEFAULT NULL,
`Udder Cleft` varchar(5) DEFAULT NULL,
`Udder Depth` varchar(5) DEFAULT NULL,
`FTP` varchar(5) DEFAULT NULL,
`RTP` varchar(5) DEFAULT NULL,
`RTP SV` varchar(5) DEFAULT NULL,
`Teat Length` varchar(5) DEFAULT NULL,
`Pedigree` varchar(90) DEFAULT NULL,
`aAa` varchar(14) DEFAULT NULL,
`DMS` varchar(16) DEFAULT NULL,
`Kappa-Casein` varchar(5) DEFAULT NULL,
`Beta-Casein` varchar(4) DEFAULT NULL,
`BBR` varchar(4) DEFAULT NULL,
`B-LACT` varchar(3) DEFAULT NULL,
`Genetic Codes` varchar(34) DEFAULT NULL,
`Haplotypes` varchar(37) DEFAULT NULL,
`RHA` varchar(37) DEFAULT NULL,
`EFI` varchar(4) DEFAULT NULL,
`Birth Date` varchar(10) DEFAULT NULL,
`Proof` varchar(10) DEFAULT NULL,
`ADV` varchar(10) DEFAULT NULL,
`GS` varchar(10) DEFAULT NULL,
`FS` varchar(2) DEFAULT NULL,
`511` varchar(3) DEFAULT NULL,
`EDGE` varchar(3) DEFAULT NULL,
`CP` varchar(2) DEFAULT NULL,
`CP511` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `testTable` (`NAAB Code`,`InterRegNumber`,`Name`,`Full Name`,`Breed`,`TPI`,`NM$`,`CM$`,`FM$`,`GM$`,`Milk`,`Protein`,`Prot%`,`Fat`,`Fat %`,`CFP`,`FE`,`Feed Saved`,`Prel`,`D / H`,`PL`,`C-LIV`,`H-LIV`,`DPR`,`SCS`,`SCE`,`SCE Rel`,`SCE Obs`,`DCE`,`SSB`,`DSB`,`CCR`,`HCR`,`EFC`,`GL`,`MAST`,`KET`,`RP`,`MET`,`DA`,`MF`,`MS`,`DWP$`,`WT$`,`CW$`,`PTAT`,`UDC`,`FLC`,`BWC`,`DC`,`TRel`,`D / H2`,`Stature`,`Strength`,`Body Depth`,`Dairy form`,`Rump Angle`,`Thurl Width`,`RLSV`,`RLRV`,`Foot Angle`,`FLS`,`F. Udder Att.`,`R Udder Height`,`Rear Udder Width`,`Udder Cleft`,`Udder Depth`,`FTP`,`RTP`,`RTP SV`,`Teat Length`,`Pedigree`,`aAa`,`DMS`,`Kappa-Casein`,`Beta-Casein`,`BBR`,`B-LACT`,`Genetic Codes`,`Haplotypes`,`RHA`,`EFI`,`Birth Date`,`Proof`,`ADV`,`GS`,`FS`,`511`,`EDGE`,`CP`,`CP511`) VALUES 
('011HO00594','HONLDM000648499675','AltaTOP-RED','KOEPON ALTATOP-RED','HO','2567','546','548','571','471','1043','24','-0.03','26','-0.05','50','80','-26','94','560/243','5.7','2.9','0.5','0.5','2.72','1.9','93','3268','2.1','5.6','5.1','0.4','-2','1.7','-2.2','1.9','2.1','0.2','2.2','1.2','0.1','','575','245','-43','1.69','2.1','0.71','0.47','-0.04','89','180/90','1.3','0.45','0.12','0.23','0.54','-0.35','-1.04','1.02','1.77','0.88','2.93','2.88','1.85','0.99','2.36','1.15','1.06','','-0.98','SALVATORE RC X DELTA','243651','"123,126"','AE','A1A2','','AA','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','11.6','4/25/2018','USA-202308','','','','','','',''),
('011HO00592','HOCANM000110621397','AltaC-RED','BLONDIN ALTAC-RED','HO','2509','504','515','471','422','591','22','0.01','22','0','44','66','-63','93','225/73','5.8','3.6','0.1','0.5','2.59','2.5','90','609','2.5','5.9','4.9','0.8','0','0.2','-2.7','2.7','1.8','0.2','1.3','1','0.2','','514','182','-46','1.22','1.12','1.26','1.06','-0.45','81','','1.2','0.56','-0.1','-0.48','-0.21','0.95','0.05','1.6','1.55','1.35','2.15','1.48','1.13','-0.46','1.88','0.13','-0.22','','0.46','SALVATORE RC X RUBICON','342','"345,456"','BE','A1A2','','AA','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','11.6','8/29/2017','USA-202308','','','','','','CP',''),
('011HO00595','HO840M003149233441','AltaAVO-RED','KCCK ALTAAVO-RED-ET','HO','2502','561','559','595','449','1483','36','-0.03','30','-0.09','66','120','95','92','108/41','5.1','1.8','-0.1','-1.5','2.85','1.8','90','1031','2.1','5.6','4.7','-1.7','-1.6','2.4','-0.7','1.2','0.6','-0.3','0.8','0.7','0.1','','407','-43','-37','1.6','0.94','1.15','-0.28','0.84','85','26/5','0.65','0.29','0.74','1.69','-0.97','0.56','1.39','1.27','0.66','1.27','1.14','1.63','1.7','0.17','0.24','0.41','0.26','','0.52','SALVATORE RC X DELTA','342','"561,456"','BE','A1A1','','AB','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','10.9','11/3/2017','USA-202308','','','','511','','CP',''),
('011HO00593','HONLDM000648499923','AltaDJ-RED','KOEPON ALTADJ-RED','HO','2492','486','490','491','444','1062','29','-0.01','28','-0.04','57','107','116','91','148/61','3.5','0.8','0.7','-0.5','2.74','2.2','86','754','2.9','5.8','5.8','0.5','1.7','2','-0.3','1.9','0.6','-0.5','-0.7','0.4','0','','573','141','35','1.41','1.75','0.59','-0.28','0.44','83','37/10','0.42','-0.02','0.33','1.15','0.86','0.89','-0.98','0.74','0.73','0.63','1.61','2.88','2.96','0.21','0.35','0.55','0.45','','-0.33','ALASKA RED X DELTA','342516','','AA','A2A2','','AB','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','11.2','2/8/2018','USA-202308','','','','','','',''),
('011HO00575','HOUSAM000071631016','AltaTD-RED','SPRUCE-HAVEN ALTATD-RED-ET','HO','2396','353','368','230','375','-78','24','0.09','50','0.19','74','120','10','95','670/237','0.5','-0.2','0.2','0.6','2.99','2.3','91','1148','3.3','5.8','7.4','-0.9','-2','-0.3','0.9','-1.3','0.7','0.3','0.8','-0.1','0','','336','-39','-26','1.09','1.06','0.36','-0.29','0.44','91','126/53','1','-0.01','0.35','1.18','0.36','0.1','1.01','0.35','0.69','0.62','0.82','1.53','1.4','1.4','0.79','1.82','2.22','','-0.25','AltaMERLOT X DESTRY*RC','432','345','AA','A2A2','','AA','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','8.5','2/13/2013','USA-202308','','','','','','',''),
('011HO11900','HO840M003129038326','AltaMAXIMUS','IHG ALTAMAXIMUS-ET','HO','2388','330','346','220','319','-389','11','0.08','47','0.22','58','94','23','96','331/57','0.7','-1','0.8','-0.8','2.86','2.1','90','478','1.7','5.9','4.8','-0.9','1.6','2.4','-2.2','0.6','1.2','0.3','1.3','0.2','0.1','','320','33','11','1.44','1.3','0.72','-0.19','0.51','88','53/7','1.51','-0.2','0.48','1.59','-0.2','1.87','0.98','1.11','0.51','1.01','1.59','1.31','1.32','1.78','2.12','1.64','1.88','','-0.97','MONTEREY X MOGUL','321','"126,123"','BE','A1A2','','AB','TC  TD  TL  TP  TR  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','11.1','9/3/2015','USA-202308','','','','','','',''),
('011HO00582','HONLDM000757042533','AltaUP P-RED','SCHREUR ALTAUP P-RED','HO','2375','405','424','278','365','195','32','0.09','41','0.12','73','107','-109','94','384/125','2.2','0.9','0.5','-0.7','2.82','2.3','89','1053','2.3','6.6','6.2','0.6','-0.6','1','-0.7','1.6','1','0.5','0.6','0.1','-0.2','','422','93','-38','0.24','0.83','-0.83','0.19','-0.76','91','73/24','0.29','-0.01','-0.54','-0.35','1.7','0.08','0.19','-1.29','0.56','-0.63','0.82','1.37','0.92','0.26','0.88','0.27','0.97','','-1.74','PERFECT AIKO X LAWN BOY P-RED','234165','','BB','A2A2','','AA','CD  PC  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDC    HH6F','99','9.5','7/9/2014','USA-202308','','','','','','',''),
('011HO00579','HONLDM000549685625','AltaPIKE-RED','PEAK ALTAPIKE RED','HO','2335','367','368','358','326','918','29','0','41','0.02','70','124','85','96','936/385','0.8','0.4','0.4','-1.6','2.95','2.5','92','1884','3.3','6','7.2','-2.9','0.5','5.2','-1','-0.8','1.1','-1.1','0.1','0.3','-0.1','','280','-115','12','0.16','0.73','0.99','-0.65','-1.16','92','145/48','-0.27','-0.74','-0.91','-0.19','-0.33','-0.43','0.54','0.69','0.31','0.96','0.2','0.83','1','0.71','0.21','0.8','0.93','','0.32','AIKMAN X DAKKER','342516','','BB','A1A2','','AB','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','8.7','4/26/2014','USA-202308','','','','','','',''),
('011HO00587','HO840M003127565788','AltaWI-RED','CLEAR-ECHO ALTAWI-RED-ET','HO','2333','261','274','195','277','4','12','0.04','9','0.03','21','19','-143','92','268/98','2.1','2.1','0.7','2','2.68','1.7','83','723','1.7','5','4.3','2.1','0.3','1.3','-0.4','1.8','1.6','0.3','0.4','0.1','-0.1','','343','180','6','0.42','1.27','0.73','0.41','-1.39','84','25/12','0.31','-0.21','-0.97','-1.04','0.39','0.48','-2.12','0.63','1.49','0.83','1.65','1.55','1.05','0.01','1.79','0.16','-0.08','','-0.5','ROCCO X PAT-RED','426','"456,561"','BB','A2A2','','AA','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','9.4','4/8/2017','USA-202308','','','','','','',''),
('011HO00584','HONLDM000662990464','AltaBRICK P-RED','STERK ALTABRICK P-RED','HO','2316','421','433','321','366','274','30','0.08','72','0.22','102','151','-114','91','2028/399','0.9','1.2','0.5','-1.9','3.03','2.4','77','2515','4.1','5.9','7.5','-1.6','-0.6','0.7','-1.6','0.8','0.8','0','1.2','0.4','-0.1','','536','95','-23','-0.24','-0.29','-0.99','0.62','-0.02','89','188/68','0.14','0.74','0.36','-0.05','0.72','0.01','0.23','-1.48','0.02','-0.78','0.32','-0.45','-0.3','-1.45','0.2','-0.1','-0.67','','-0.02','AltaCASUAL P X AIKMAN','354','','AE','A1A2','','AA','PC  TC  TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','10.3','12/5/2015','USA-202308','','','','','','',''),
('011HO00588','HONLDM000586897623','ALTASUN P-RED','KOEPON ALTASUN P-RED','HO','2299','344','359','252','323','-638','-1','0.07','5','0.11','4','29','217','82','','4.2','2.1','0.7','0.9','2.77','1.4','','','','','','2.5','1','-1.1','0.1','1.8','0.9','0','0.1','0.3','0.1','','379','175','7','1','1.85','0.78','-0.57','-1.16','80','','-0.23','-0.72','-0.48','-0.23','-0.26','-0.41','-1.02','0.35','0.68','0.8','2.49','2.36','0.56','0.3','2.68','-0.07','-0.1','','-1','LUCKY PP-RED X DELTA','','','BE','A1A2','','AA','PC  TC  TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','10.7','11/14/2017','USA-202308','','','','','','',''),
('011HO11762','HOUSAM000074414158','AltaRINGER','BUTLERVIEW ALTARINGER-ET','HO','2289','192','198','170','192','191','9','0.01','19','0.04','28','19','-240','96','386/88','2','-0.2','0.3','1.4','2.8','3','91','767','1.8','7.2','5.1','1.7','0.9','2.4','-1.1','1.8','0.8','0.7','1.1','0.1','0.1','','384','192','4','0.89','0.87','0.29','0.98','-0.08','84','10/8','2.04','0.63','0.44','-0.02','0.84','0.08','-0.74','0.81','1.29','0.65','1.35','1.1','0.42','1.09','2.36','0.91','0.7','','-0.44','MAIN EVENT X MCCUTCHEN','234165','"123,234"','AE','A1A2','','AA','TC  TD  TL  TP  TR  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','11.3','12/6/2014','USA-202308','','','','','','',''),
('011HO09951','HONLDM000443047659','AltaBERLAGE','WILMERS ALTABERLAGE','HO','2239','443','447','406','390','350','19','0.03','41','0.1','60','117','189','99','7122/969','2.5','3.8','0.6','-0.9','3.07','1.8','99','10571','2.4','5.1','3.8','-1.3','-0.8','-0.1','1.7','0.9','0','-0.5','-0.7','0.3','0','','','','0','-0.75','-0.49','0.43','-1.14','-1.49','92','846/195','-1.34','-1.25','-1.27','-0.38','0.34','-0.04','0.25','-0.59','-0.9','0.4','-0.7','-0.55','-1.36','-0.34','-0.74','0.76','0.21','','-1.01','LAUDAN X ADDISON','132645','','AB','A2A2','','','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','97','4.2','3/6/2006','USA-202308','','','','','','',''),
('011HO00586','HO840M003132621218','AltaACE-RED','KCCK ALTAACE-RED-ET','HO','2227','305','314','273','235','165','10','0.02','39','0.12','49','79','12','95','772/308','2.1','-0.4','0.3','-1.7','2.74','1.7','89','1566','2.1','5.5','5.5','-1.8','0.6','2.9','-3.7','-0.2','1','-0.4','-0.4','0.3','0','','630','71','-38','0.3','0.18','0.38','-0.19','-0.27','81','','-0.17','0.05','-0.02','0.26','-1.23','-0.39','0.6','0.25','-0.64','0.42','-0.25','0.24','0.83','-0.02','-0.41','0.06','0.91','','0.29','BIGSTAR-RED X SUPERSIRE','315','"456,345"','AB','A1A1','','AA','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','10.6','12/16/2015','USA-202308','','','','','','',''),
('011HO00005','HOBRAM00000A138928','LAUTAM','MARCA M COMESTAR LAUTAM TE','HO','2196','172','175','128','134','158','15','0.04','40','0.12','55','95','63','82','','-0.7','-2.4','0.2','-2.9','3.13','2.5','64','0','2.5','6','6.5','-1.5','1.4','-4','1','-1.1','-0.9','-0.1','0','-0.2','-0.2','','','','0','1.59','0.69','1.25','0.7','1.33','81','0/0','1.32','1.06','1.5','1.58','1.11','1.49','-0.06','1.43','1.64','1.42','1.28','1.53','1.52','0.66','-0.16','0.15','0.11','','-0.34','WINDBROOK X BOLTON','','','','','','','','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','0','7.8','7/20/2012','USA-202308','','','','','','',''),
('011HO00589','HO840M003145456256','AltaLUX PP-RED','SIMPLE-DREAMS LUX PP-RED-ET','HO','2170','346','350','325','305','112','7','0.01','0','-0.02','7','39','244','94','517/69','4.2','3.9','1.1','0.3','2.89','1.6','89','1894','2','5.4','5.5','2.2','2.5','1.2','-1.9','0.5','0.9','-0.3','0.2','0.3','0.1','','472','184','27','-0.42','0.62','0.17','-0.86','-1.53','81','','-0.97','-0.95','-1.14','-0.61','1.07','-0.89','-1.99','-0.14','-0.06','0.08','0.8','1.16','-0.19','-1.19','0.94','-1.28','-1.22','','-0.05','LUCKY PP-RED X MONTROSS','345','"345,234"','AA','A2A2','','AB','PP  TC  TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','10','10/13/2017','USA-202308','','','','','','',''),
('011HO00576','HO840M003013074537','ALTASKY-RED','SUNQUEST ALTASKY-RED-ET','HO','2163','175','186','88','171','-355','8','0.07','38','0.19','46','83','97','84','','-0.5','-1.5','-0.3','-1.4','2.99','2.2','','','','','','-1.2','-0.5','-5','-0.3','1.3','-0.4','-0.4','-0.2','-0.7','0','','','','0','0.87','0.91','0.11','-0.44','0.22','81','','1.07','-0.31','0.1','1.32','0.54','0.86','1.24','0.2','-0.44','0.46','0.24','1.7','1.75','1.2','0.41','1.17','1.78','','-0.5','DOLO-P X AltaIOTA','','"135,123"','BB','A1A2','','','TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDC    HH6F','100','8.1','8/8/2013','USA-202308','','','','','','',''),
('011HO00577','HOUSAM000072615044','AltaTLC-RED','KENMORE ALTATLC-RED-ET','HO','2153','304','316','211','296','-241','12','0.07','31','0.14','43','93','219','96','1166/494','0.7','2.1','0.8','-0.5','2.92','1.8','91','1033','2.9','5.5','7.3','-0.8','1.9','5.5','0.1','-0.8','-0.1','0.1','1.3','0','-0.1','','282','-51','-19','-0.86','-0.39','0.09','-0.9','-1.45','91','193/96','-1.4','-0.76','-0.61','-0.62','1.52','-1.59','-0.28','-0.02','-0.91','-0.21','-0.88','-0.37','0.12','-0.21','-1.86','0.46','0.44','','1.17','AIKMAN X SHAMROCK','345','"345,135"','AB','A1A2','','AB','TC  TD  TL  TP  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','8.9','10/16/2013','USA-202308','','','','','','',''),
('011HO00583','HOUSAM000058959846','ALTADA-RED','MELARRY ALTADA-RED-ET','HO','2145','175','182','121','160','-165','6','0.04','37','0.16','43','63','-39','82','','-0.2','0.5','0.8','-1','2.93','2','','','','','','-1.4','2.5','0','-1.7','-0.5','1','-0.2','0.6','0.4','0.1','','','','0','-0.05','0.22','0.18','-0.21','-0.57','81','','-0.24','-0.14','0','-0.05','-1.01','-0.47','0.24','0.24','0.15','0.08','0.1','0.37','0.48','0.5','-0.49','0.89','1.15','','1.28','AIKMAN X GILBY','351','"345,456"','BB','A1A2','','AA','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','8.9','6/25/2014','USA-202308','','','','','','',''),
('011HO00581','HONLDM000549685555','ALTAPRO-RED','PEAK ALTAPRO-RED-ET','HO','2105','208','215','160','162','231','17','0.03','26','0.06','43','81','100','82','','0.2','0.8','0.7','-1.7','2.95','2.2','','','','','','-3.3','-1.3','0.8','-1.5','0.9','0.8','-0.3','0.5','0.2','0','','','','0','-0.35','-0.25','0.53','0.12','-0.86','81','','-0.47','0.14','-0.28','-0.65','-0.72','-0.92','0.24','0.68','-0.02','0.34','-0.46','0.03','0.2','-0.11','-0.81','-0.39','-0.09','','1.62','AIKMAN X DAKKER','','','','A1A2','','','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','8.1','5/12/2014','USA-202308','','','','','','',''),
('011HO09647','HOUSAM000061898306','AltaIOTA','REGANCREST ALTAIOTA-ET','HO','2092','3','7','-49','32','3','12','0.04','22','0.08','34','26','-263','99','87582/15578','-2.1','-1.1','','0.2','3.12','1.8','99','99999','2.3','4.8','5.2','-0.3','0.6','3.3','-1.3','-1.1','-1.2','-1','-0.3','-0.8','0.1','','-127','','-4','0.4','0.34','0','1.47','0.28','99','40950/9067','1.04','1.36','1.05','0.05','0.44','1.13','-0.18','0.39','0.32','0.17','0.02','1.07','1.21','0.33','-0.34','0.74','0.93','','-0.19','O MAN X ITO','132546','135','AB','A1A2','','BB','TC  TD  TL  TP  TR  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','10.1','6/12/2005','USA-202308','','','','','','',''),
('011HO00585','HO840M003132411298','ALTAU PP-RED','ZIMMERVIEW ALTAU P-RED-ET','HO','2091','161','162','173','123','850','22','-0.02','13','-0.07','35','60','8','83','','0.2','-0.6','0.6','-1.7','2.87','2.7','','','','','','-1.2','-1.9','-0.7','-0.8','0.8','0.2','-0.1','0.2','-0.4','-0.3','','104','-20','-34','0.11','0.17','-0.42','-0.57','-0.17','81','','0.32','-0.44','-0.04','0.77','1.62','0.2','1.04','-0.96','-0.53','-0.09','0.02','0.72','0.15','-0.36','0.34','-0.41','-0.08','','-0.06','AltaCASUAL P X SYMPATICO *RC','','"135,123"','AB','A1A1','','AA','PP  TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','9.6','3/18/2016','USA-202308','','','','','','',''),
('011HO08919','HOUSAM000050742341','AltaASIDE','SPRINGWAY ASIDE-ET','HO','2089','245','245','237','242','-66','0','0.01','51','0.19','51','92','114','99','3973/499','0.1','1','0.9','-0.7','3.04','2.9','98','5666','4.3','6.1','6.3','-0.5','3','4.1','0.4','-0.5','-0.5','0.9','0.6','-0.2','0','','','','0','-1.1','-0.68','-0.65','-0.92','-0.97','95','410/162','-1.05','-0.81','-0.69','-0.06','0.83','-0.42','-0.76','-0.96','-0.49','-0.78','-1.1','-0.27','-0.36','-0.85','-1.66','-0.93','-0.7','','0.35','OUTSIDE X MANDEL','321456','"345,234"','AA','A2A2','','AA','TL  TV  TY','HH1F HH2C HH3F HH4F HH5F HCDF    HH6F','100','6.8','6/6/2003','USA-202308','','','','','','',''),
('011HO00580','HO840M003014466168','ALTADD-RED','PEAK ALTADD-RED-ET','HO','2085','78','81','46','33','258','15','0.02','0','-0.04','15','3','-208','82','','0.9','2.5','0.5','-0.2','3.05','2.3','','','','','','-1.8','-1.1','3.2','-1.7','0.2','0.4','-0.3','0.2','0.1','-0.2','','','','0','0.07','0.59','0.09','0.64','-2.04','81','','0.57','-0.29','-1.09','-1.76','-1.08','-0.11','0.42','-0.22','0.69','0.3','1.54','1.03','-0.44','-1.24','2.1','-0.58','-1.13','','0.34','DUCATI-RED X DAKKER','','"123,234"','','A2A2','','','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','7.2','3/22/2014','USA-202308','','','','','','',''),
('011HO09652','HODEUM000347213836','WIZZARD','Wizzard','HO','2067','342','339','326','380','-108','2','0.02','56','0.22','58','132','378','88','20132/3013','1.3','-0.6','-0.7','0.7','3.27','2.2','81','21550','2.7','5.8','7.7','0.7','3','-0.9','-0.1','-1.6','-1.3','0.1','-0.4','-0.4','0','','','','0','-1.93','-1.14','-0.41','-2.67','','85','8609/1364','-2.76','-2.64','-2.07','-1.02','-0.95','-2.63','0.75','-0.69','-2.26','-0.92','-2.81','-1.92','-1.81','-0.9','-1.25','0.23','0.37','','-0.19','WEBSTER X CASH','','','','','','','TV','','99','0','12/15/2000','USA-202308','','','','','','',''),
('011HO00573','HOUSAM000070690940','AltaX P-RED','APRIL-DAY ALTAX P-RED-ET','HO','2065','178','177','206','150','769','16','-0.03','9','-0.07','25','48','52','95','582/300','1','0.7','0.5','-0.7','2.85','2.2','89','851','3','6.1','6.3','-0.5','-0.2','2.6','-1.1','1.3','0.3','-0.3','-0.6','-0.1','-0.3','','213','69','43','-0.67','-0.04','-0.58','-0.59','-1.86','90','58/23','-0.68','-0.89','-1.35','-1.17','1.67','-1.37','-1.74','-0.95','-0.07','-0.56','-0.21','0.74','-0.07','-1.61','-0.55','-0.55','-0.59','','-0.13','COLT P-RED X SHOTTLE','243651','345','AA','A1A2','','','PC  TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','7.6','9/2/2011','USA-202308','','','','','','',''),
('011HO00578','HO840M003013060754','ALTAPIX-RED','PEAK ALTAPIX-RED-ET','HO','2050','20','17','20','-42','552','18','0','13','-0.03','31','38','-128','82','','-1.2','0.4','0.5','-2.7','3.2','2.4','','','','','','-3.8','-3','-0.3','-1.4','-1.7','1.1','-0.3','-0.7','0.2','-0.2','','','','0','0.94','1.04','0.37','0.57','-0.15','81','','1.53','0.15','-0.06','0.13','-0.4','1.01','0.34','0.37','0.58','0.76','1.44','1.41','1.1','0.2','2.18','0.33','-0.26','','0.19','AltaKID-RED X DAKKER','234','"246,234"','','A2A2','','','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','8.5','11/28/2013','USA-202308','','','','','','',''),
('011HO09624','HOUSAM000062253394','AltaESQUIRE','UFM-DUBS ALTAESQUIRE-ET','HO','2021','5','15','-104','18','-413','12','0.09','56','0.26','68','75','-295','99','29654/4617','-3.3','-2.8','-0.6','-1.3','3.16','1.3','99','38500','2','7.4','6.9','-2.3','1.9','3.2','-1','-2.6','1.2','0.8','1.6','0.5','-0.1','','','','0','-0.4','-1.77','-0.03','1.08','0.55','97','6377/1665','0.37','1.18','1.03','0.37','-0.72','1.42','-1.6','0.44','-0.35','0.04','-2.2','-1.42','-0.47','-1.95','-2.19','-0.68','-1.22','','0.01','O MAN X AltaSAM','423516','"345,456"','AB','A1A2','','BB','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','8.2','1/18/2005','USA-202308','','','','','','',''),
('011HO08195','HOUSAM000132973942','AltaBAXTER','EMERALD-ACR-SA T-BAXTER','HO','2016','161','145','282','79','874','1','-0.09','30','-0.01','31','56','60','99','86279/19017','1','2.3','0.8','-2.8','3.11','2.5','99','99999','2.7','6','5.3','-1.6','1.4','-5.4','0.1','-0.8','-0.6','-0.1','-1','0.2','-0.2','','','','0','0.06','-0.11','0.19','0.12','0.84','99','49801/12427','0.11','0.66','1.23','1.14','0.88','0.34','-0.85','0.03','0.7','0.24','-0.59','1.15','0.91','1.1','-1.61','-1.25','-0.16','','2.05','BLITZ X MTOTO','342561','234','AB','A1A2','','BB','B/R  TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','7.3','4/7/2002','USA-202308','','','','','','',''),
('011HO09916','HOUSAM000062499294','AltaOUTLAST','SYNERGY ALTAOUTLAST','HO','1973','138','133','213','214','-785','-41','-0.06','-10','0.07','-51','-56','279','95','113/68','4.6','3.2','0.3','5.3','2.78','1.9','86','235','3','5.8','6.8','6.3','3.8','0.2','1.3','2','0.4','0.5','0.1','0.5','-0.1','','','','0','-0.85','0.04','-0.39','-0.47','-2.65','91','86/57','-1.81','-1.25','-1.69','-2.11','-0.74','-0.08','-0.9','-0.25','-0.76','-0.85','0.3','-1.33','-1.89','0.93','0.75','0.83','0.93','','-0.34','DIE-HARD X OUTSIDE','','"456,345"','AA','','','','','HH1F HH2C HH3F HH4F HH5F HCDF    HH6F','100','6.1','6/3/2006','USA-202308','','','','','','',''),
('011HO06905','HONLDM000273531045','AltaTUCANO','ALTA TUCANO','HO','1965','152','169','29','260','-1434','-17','0.1','22','0.29','5','16','114','92','3666/1391','1.5','3.4','0.1','5.2','2.93','2.1','84','3300','3','7','5.9','4.3','1.8','0.2','0.5','0.9','-0.6','-0.2','-0.7','-0.6','0','','','','0','-2.21','-2.49','-0.09','-0.58','','81','735/409','-1.67','-1.14','-1.34','-1.87','0.33','-0.89','-1.46','-0.44','-1.01','-0.33','-3.35','-3.48','-3.08','-0.68','-2.39','-0.59','0.75','','-0.69','TUGOLO X ESQUIMAU','153','','AA','','','','TL  TM  TV','','93','0','1/18/2000','USA-202308','','','','','','',''),
('011HO08046','HODEUM000000253642','RAMOS','RAMOS','HO','1964','160','171','110','209','-728','-13','0.04','-19','0.03','-32','-16','330','99','83446/16192','2.6','3.2','0.9','3.3','2.72','1.9','99','99999','2.1','5.4','4.7','3.1','0.1','3.4','-1.9','1.5','0.7','0.2','0.4','0.7','0','','','','0','-1.04','-1.17','0','-1.09','-1.65','99','1413/366','-0.75','-1.1','-0.91','-0.66','-0.3','-2.12','-0.79','0.09','-1.24','-0.13','-0.78','-1.35','-1.33','-2.05','-0.52','-1.46','-2.29','','-0.53','RUDOLPH X AMBITION','156324','','AA','','','AA','BY  TL  TV','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','98','6.8','6/26/1997','USA-202308','','','','','','',''),
('011HO00569','HOUSAM000070299144','AltaDO-RED','FOREST-LAWN ALTADO-RED','HO','1961','94','92','101','31','565','16','-0.01','22','0','38','67','40','96','607/298','-0.7','0.2','1.2','-2.7','3.09','2.6','91','954','3.8','6.6','6.1','-3','-3','-0.5','0.1','0.8','-0.5','-0.5','-0.7','-0.2','-0.3','','','','0','-0.56','-0.95','0.46','0.4','-0.86','92','97/49','-0.08','0.2','-0.11','-0.65','-1.06','-0.11','-0.06','0.36','0.08','0.45','-0.54','-1.33','-1.06','-0.62','-0.34','-0.88','-0.67','','1.07','DURABLE X LAWN BOY P-RED','342','"234,123"','AB','A2A2','','','TC  TL  TP  TV  TY','HH1F HH2C HH3F HH4F HH5F HCDF    HH6F','100','6.1','7/1/2011','USA-202308','','','','','','',''),
('011HO08031','HOUSAM000132277989','AltaHATLEY','NORRIELAKE HATLEY','HO','1958','210','204','262','244','706','10','-0.04','18','-0.03','28','89','393','99','7065/627','0.3','','-0.3','0.2','2.99','1.6','99','13498','3.4','5.9','8.9','0.7','0.4','3.4','-4.2','-0.7','-1.3','-0.1','-0.8','-0.2','0.4','','','','0','-1.51','-1.29','-0.85','-3.06','-1.4','95','479/192','-1.88','-2.31','-1.27','1.24','1.68','-1.65','1.01','-1.3','-1.72','-1.07','-2.81','-0.98','-0.28','-0.04','-2.93','-1.65','-0.83','','1.16','BW MARSHALL X MANFRED','342516','"126,123"','AA','A1A2','','AA','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','7.5','11/15/2001','USA-202308','','','','','','',''),
('011HO08231','HOUSAM000060718406','AltaWARRANT','KINGS-RANSOM WARRANT','HO','1953','73','65','129','146','783','12','-0.04','25','-0.02','37','64','36','99','3424/537','-1.1','-4.9','-0.5','1.3','3.08','2.3','99','4898','2.3','6.3','5.2','2.6','2.1','2.3','-2.3','-1.8','-1.5','-0.1','-1.3','-0.3','0','','','','0','-1.48','-1.66','-0.68','0.5','-0.45','95','345/180','-1.73','0.66','0.69','-0.39','0.03','1.06','1.09','-0.23','-1.49','-1.13','-2.53','-1.9','-0.51','-1.16','-3.32','-1.06','-0.56','','-0.18','GARTER X MTOTO','315426','"135,345"','AA','','','AB','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','5.4','5/14/2002','USA-202308','','','','','','',''),
('011HO09899','HOUSAM000062848161','AltaMYCROFT','PINE-TREE ALTAMYCROFT-ET','HO','1948','221','223','229','186','394','9','-0.01','9','-0.02','18','44','132','95','119/62','2.6','3.5','-0.3','0.5','2.84','1.9','86','227','2.6','6','7.4','-0.2','-2','-0.1','-0.3','-0.6','0.5','0.5','0.9','0.8','-0.2','','','','0','-2.01','-1.83','-0.47','-0.87','-2.47','88','40/24','-2.77','-0.91','-1.48','-2.01','0.17','-2.35','-0.22','-0.22','-1.97','-1.17','-1.68','-3.05','-2.53','-1.73','-2.29','-0.8','-0.81','','-0.16','AltaMYRON X PIPPEN','','561','','','','','','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','4.8','5/24/2006','USA-202308','','','','','','',''),
('011HO09938','HOUSAM000062175874','AltaZANDER','PINE-TREE ALTAZANDER-ET','HO','1947','185','187','209','245','-669','-27','-0.02','1','0.1','-26','-22','213','95','108/55','3.8','3.2','-0.1','4.5','2.72','1.4','88','303','2.2','6','6.5','3.7','2.2','3.8','-0.4','2.3','0.2','1','2','0.4','0','','','','0','-2.35','-1.1','-0.93','-1.91','-3.51','91','65/37','-4.18','-2.69','-3.52','-3.74','0.05','-2.86','-1.11','-1.69','-1.65','-1.72','-0.99','-1.81','-3.16','-2.72','-0.83','-1.96','-2.49','','-0.39','ZADE X O MAN','','"345,135"','AE','','','','','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','7.3','4/6/2006','USA-202308','','','','','','',''),
('011HO00552','HOCANM000009605778','AltaRIC-RED','STANTONS ALTARIC-RED','HO','1942','-96','-89','-186','-53','-220','14','0.07','18','0.1','32','53','13','98','2796/1076','-3.3','-4.2','0.6','-1','3.2','3.4','94','3143','4.7','7.4','10.5','-0.6','0','0.9','-2.8','-1','-0.8','-0.9','-1.7','-0.2','-0.2','','','','0','0.7','-0.41','0.32','0.13','0.97','94','1050/507','1.55','0.38','1.07','1.6','0.65','0.95','-0.27','0.39','0.86','0.68','-0.66','0.89','0.8','-0.61','-1.03','-0.42','-0.38','','0.02','MR BURNS *RC X JORDAN-RED','243615','"345,234"','AA','A2A2','','','TD  TL  TV  TY','HH1F HH2C HH3F HH4F HH5F HCDF    HH6F','100','6','1/2/2008','USA-202308','','','','','','',''),
('011HO00568','HOCANM000010858428','ALTATRI-RED','WOOLLEY ALTATRI-RED','HO','1938','-77','-66','-176','-54','-659','2','0.08','-6','0.07','-4','2','73','81','','-0.9','-2.4','-0.1','-0.2','3.07','2.8','','','','','','0.4','1.3','0.8','2','-1.8','0.2','0.3','0.2','-0.7','-0.1','','','','0','0.85','0.15','0.54','-0.34','1.06','80','','1.62','0.07','0.83','2.34','-0.04','1.57','0.78','0.7','0.17','0.95','-0.31','0.82','1.27','1.56','-0.48','1.25','1.91','','-0.92','DESTRY*RC X MR BURNS *RC','231','123','','','','','TL  TV','HH1F HH2F HH3F HH4F HH5F HCDC    HH6F','100','4.8','10/25/2010','USA-202308','','','','','','',''),
('011HO09779','HOUSAM000137479528','AltaPROPEL','ALL-RIEHL ALTAPROPEL-ET','HO','1935','-11','-12','-3','49','-259','-10','-0.01','-5','0.02','-15','-34','-78','94','81/51','0.9','1.7','0.7','3.3','2.95','3.6','85','183','3.9','6.6','6.1','4.5','2.3','3.8','1.1','-0.3','-1.2','0.4','0.2','-0.5','0.2','','','','0','-1.06','-1.14','0.17','1.5','-1.76','88','34/29','-0.4','1.02','0.09','-1.99','0.79','-0.51','-1.34','0.57','0.38','-0.04','-1.53','-0.73','-0.82','-0.72','-1.7','-0.7','-0.58','','0.76','AltaALLEGRO X AltaTHRONE','','"345,234"','','','','','','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','6.2','9/1/2005','USA-202308','','','','','','',''),
('011HO09799','HOUSAM000137340903','AltaGRATIS','CHARITY ALTAGRATIS-ET','HO','1931','-17','-16','-65','-32','-78','10','0.04','16','0.07','26','38','-36','99','6894/1928','-1.5','-0.7','0.1','-1.4','3.29','3.3','97','8787','3.5','6.9','6.2','-1.9','-1.5','-0.3','1.3','-4.9','0.1','1.2','0.3','-0.1','-0.1','','','','0','0.11','-0.21','0.01','0.23','0.53','93','2365/917','0.75','0.36','0.26','0.96','0.55','1.37','-0.1','-0.03','-0.05','0.24','-0.59','0.52','0.07','0.5','0.15','-1.42','-1.36','','0.32','SHOTTLE X BEST','312546','"123,234"','AA','A2A2','','','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','7.9','12/30/2005','USA-202308','','','','','','',''),
('011HO00565','HOUSAM000066726504','AltaXXX-RED','SANDY-VALLEY ALTAXXX-RED-ET','HO','1924','23','19','24','34','359','12','0','-30','-0.15','-18','-17','79','98','1163/379','1.4','1.2','0.5','1.6','3.2','2','95','1871','2.5','6','5.2','1.5','-1.5','1.7','-1.1','-2.6','0.1','-0.4','-1.3','-0.3','-0.3','','','','0','-0.29','-0.2','0.32','-0.22','-1.47','94','194/89','-0.2','-0.42','-0.59','-0.9','-1.19','-1.48','0.43','0.04','0.39','0.31','0.23','0.16','-0.33','0.12','-0.23','-0.88','0.03','','2.51','LAWN BOY P-RED X SEPTEMBER STORM','342615','"234,246"','AA','A1A2','','AB','B/R  TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDC    HH6F','100','6.6','7/19/2009','USA-202308','','','','','','',''),
('011HO05929','HOUSAM000124690866','AltaALLY','CARTERS-CORNER ALLY-ET','HO','1920','89','85','77','187','-444','-9','0.02','31','0.17','22','55','206','99','17114/1486','-1.3','-1','0.1','2.1','3.28','1.3','99','26969','2.3','5.6','5.5','2','0.8','1.4','-0.6','-1.4','0.5','0.2','-0.4','-0.2','-0.2','','','','0','-1.67','-1.29','-0.53','-1.8','-2.23','98','932/377','-3.32','-1.8','-1.62','-1.05','-0.7','-0.59','1','-0.52','-3.14','-1.21','-1.86','-1.66','-2.09','-1.4','-2.04','0.19','-0.14','','-2.83','MANFRED X PATRON','156324','345','AB','','','AB','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','6.7','10/16/1998','USA-202308','','','','','','',''),
('011HO06414','HOUSAM000129608932','AltaALLEGRO','CANYON-BREEZE ALLEGRO-ET','HO','1918','121','120','100','147','196','12','0.02','37','0.1','49','90','111','99','12425/2515','-0.8','-0.3','0.5','0.2','3.23','3.6','99','16253','4.1','7.6','8.8','0.6','-0.8','1.5','1.4','0','-0.5','0.8','-0.4','-0.2','0.2','','','','0','-1.58','-2.49','-0.78','0.55','-1.08','99','3093/1247','-0.29','0.44','-0.04','-0.96','0.09','-0.89','-1.62','-0.51','0.08','-0.85','-3.23','-2.09','-1.81','-0.97','-3','-1.81','-1.78','','-0.48','KILO X AltaBELLWOOD','423651','"234,246"','AA','','','AB','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','6.1','9/16/1999','USA-202308','','','','','','',''),
('011HO00574','HONLDM000544817160','AltaCAMIKO-RED','BEEZE HEJA ALTACAMIKO RED','HO','1913','35','44','-26','64','-290','4','0.05','-16','-0.02','-12','-3','141','94','240/73','0.8','0.6','0.7','1.7','2.94','2.5','87','309','3.5','6.6','6.9','0.2','-0.6','3','4','0.3','-0.1','0.7','-0.1','-0.4','0','','','','0','-0.35','-0.34','-1.65','-1.09','-0.71','88','47/15','-0.75','-0.78','-0.17','0.46','-0.41','-0.75','2.15','-1.97','-1.53','-1.5','-0.19','-0.91','-1.42','1.05','-0.36','2.34','2.62','','-1.33','ALCHEMY *RC X TALENT','342516','','AE','A1A2','','AB','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDC    HH6F','99','5.4','7/23/2012','USA-202308','','','','','','',''),
('011HO09631','HOUSAM000136053864','AltaSWIFT','PARADISE-DND ALTASWIFT-ET','HO','1912','49','58','-22','52','-543','-1','0.06','10','0.11','9','14','2','98','609/89','0.1','2','0.3','0.5','3.01','2.8','92','520','2.9','6.5','5.4','0.5','0.3','4.5','0.7','-1','0.1','-0.1','-0.9','-0.1','0.1','','','','0','-1.16','-1.39','-0.39','-0.11','-1.47','92','106/52','-0.72','-0.42','-0.59','-0.97','0.4','-0.29','-0.17','-1','0.63','-0.45','-1.64','-1.62','-1.8','-0.06','-0.99','-1.37','-0.29','','1.62','LANCELOT X AltaHERSHEL','345162','"345,135"','AA','A2A2','','','B/R  TL  TV','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','98','5.2','11/22/2004','USA-202308','','','','','','',''),
('011HO07661','HOUSAM000132743327','AltaOURMAN','GENETI-CO OURMAN-ET','HO','1909','88','88','83','215','-207','-5','0.01','-28','-0.07','-33','-29','207','99','1177/156','2.6','3.2','-0.5','6.2','3.03','2.3','98','2967','3.4','6.8','6.1','6.7','3.8','2.1','1.7','1','0.2','0.2','-0.4','0.2','0.2','','','','0','-1.75','-2.05','-0.54','-1.6','-2.23','92','83/46','-1.97','-1.71','-1.4','-0.99','-0.17','-1.56','0.42','-1','-1.57','-0.83','-2.07','-3.36','-3.02','-1.2','-1.36','-0.56','-0.73','','-1.04','AltaMARSHALL X MANFRED','213654','"561,456"','AB','A1A2','','AA','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','99','5.9','6/21/2001','USA-202308','','','','','','',''),
('011HO08419','HOUSAM000061166977','AltaMERCANTILE','BOMAZ MERCANTILE-ET','HO','1908','33','25','122','61','109','-17','-0.07','3','0','-14','-15','84','99','3667/492','0.9','-0.9','0.9','1.2','2.83','2.4','99','5806','1.4','6.6','3.6','1.6','1.5','0.1','0.7','0.5','-0.9','0.6','0.8','-0.1','0.2','','','','0','-0.75','-0.42','-0.96','-1.76','-1.62','95','407/163','-0.9','-1.7','-1.21','-0.04','0.48','-1.49','0.84','-1.44','-1.07','-0.95','-0.89','-1.21','-1.64','1.48','0.27','0.3','0.99','','-0.78','AltaMERCHANT X RUBYTOM','234516','"234,123"','AB','A1A2','','BB','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','6.5','1/26/2003','USA-202308','','','','','','',''),
('011HO09651','HODEUM000345461818','JOSE','JOSE','HO','1906','45','39','83','48','120','-4','-0.03','37','0.12','33','56','50','99','19798/4240','-1.6','-3.4','0.7','-1.6','3.09','1.7','99','31546','2.2','4.9','4.1','-0.5','1.8','3','1.9','-3.5','-1.6','-0.8','-1.5','0','0','','','','0','-0.9','-0.69','-0.75','-0.94','-1.28','99','10754/2329','-0.9','-0.88','-0.55','-0.45','1.66','-1.58','-1.12','-1.61','-0.98','-0.62','-1.39','-0.85','-0.83','-0.03','-1.28','1.17','1.32','','-0.66','JOCKO BESNE X AltaFORMATION','423651','','AA','','','','TL  TV','HH1F HH2F HH3F HH4C HH5F HCDF    HH6F','96','4.5','1/14/2001','USA-202308','','','','','','',''),
('011HO09978','HOUSAM000062916245','AltaTRIANGLE','CLEAR-ECHO ALTATRIANGLE-ET','HO','1906','-118','-128','-31','-151','1533','27','-0.07','19','-0.14','46','44','-303','99','9292/1613','-3.1','-8.1','0.2','-3','2.95','2','99','12574','2.6','5.3','6','-3.2','-3.7','-1.3','0.3','-2.7','-0.4','-1.3','-1.6','-0.5','-0.3','','','','0','0.43','0.17','-1.55','2.02','0.89','96','3154/820','1.33','2.04','1.82','0.33','0.69','1.51','0.5','-0.85','-0.32','-1.28','0.43','0.25','0.82','1.56','0.04','0.15','0.8','','0.94','FBI X BOLIVER','345216','"126,561"','AA','A1A2','','','TD  TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','6.5','9/3/2006','USA-202308','','','','','','','34'),
('011HO08477','HOUSAM000207831504','AltaDORNE','CREEK DORNE-ET','HO','1898','45','32','153','25','612','-5','-0.08','15','-0.03','10','30','136','99','6210/699','0.2','-0.3','0.2','-1.2','2.96','2.7','99','8075','4','6.3','7.2','-0.3','2.4','0.8','0.8','0.5','-2.6','-0.5','-3.5','-0.3','-0.5','','','','0','-0.21','-0.19','-1.34','-0.9','-0.34','97','1089/348','-0.07','-0.54','-0.07','0.87','1.29','-0.47','0.32','-1.45','-2.42','-1.1','-0.25','0.51','0.23','-0.61','-0.45','-1','-0.89','','1.34','BLITZ X RUDOLPH','243615','"234,123"','AB','A1A2','','BB','TL  TV  TY','HH1F HH2F HH3F HH4F HH5F HCDF    HH6F','100','6.6','6/13/2002','USA-202308','','','','','','','41');
