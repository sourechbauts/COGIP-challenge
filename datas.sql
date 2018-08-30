/* DROP TABLE `factures`; */

CREATE TABLE `factures` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `numero` mediumint default NULL,
  `date` varchar(255),
  `objet` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (1,96,"2018-12-27 02:20:59","et libero. Proin mi. Aliquam gravida mauris ut"),(2,634,"2018-04-25 07:33:30","neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis."),(3,927,"2018-11-13 20:40:57","est, congue a, aliquet vel,"),(4,169,"2019-04-02 19:26:13","Donec fringilla. Donec"),(5,343,"2018-09-01 06:54:02","elit, pretium et, rutrum non, hendrerit id, ante. Nunc"),(6,956,"2017-09-14 18:48:00","non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc"),(7,865,"2017-09-03 18:56:07","nibh. Donec est mauris,"),(8,620,"2017-10-31 21:22:23","tincidunt nibh. Phasellus nulla. Integer vulputate,"),(9,87,"2018-04-10 04:49:06","turpis nec mauris blandit mattis. Cras eget nisi"),(10,730,"2019-05-23 23:10:51","gravida. Aliquam tincidunt, nunc ac mattis ornare,");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (11,567,"2018-11-25 06:55:42","consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus"),(12,261,"2018-05-11 07:15:20","libero et tristique pellentesque, tellus sem mollis dui,"),(13,965,"2019-08-14 18:37:06","fringilla. Donec feugiat metus"),(14,490,"2018-04-12 06:21:30","odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu."),(15,904,"2019-03-07 02:14:54","sem. Nulla interdum."),(16,559,"2018-07-18 21:30:13","malesuada malesuada. Integer id"),(17,126,"2019-01-10 02:02:08","Cras interdum. Nunc"),(18,953,"2019-02-06 16:37:17","auctor quis, tristique ac, eleifend"),(19,858,"2018-12-29 15:30:13","vestibulum, neque sed dictum eleifend, nunc risus varius orci, in"),(20,828,"2018-07-23 20:09:11","Aliquam ultrices iaculis odio. Nam");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (21,323,"2018-05-29 20:33:25","eget ipsum. Suspendisse sagittis. Nullam vitae"),(22,908,"2018-02-24 10:56:39","nulla vulputate dui,"),(23,257,"2018-12-09 19:45:36","et malesuada fames ac turpis egestas. Fusce aliquet magna"),(24,462,"2018-05-11 02:38:40","suscipit, est ac facilisis facilisis, magna"),(25,151,"2017-10-14 22:29:02","risus"),(26,562,"2018-03-14 05:52:13","In lorem. Donec elementum, lorem ut aliquam iaculis, lacus"),(27,583,"2019-03-17 12:23:45","nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque"),(28,489,"2018-03-27 06:57:24","ac urna."),(29,90,"2019-05-01 15:59:15","pharetra sed, hendrerit a, arcu. Sed et"),(30,916,"2018-04-04 00:58:49","auctor quis, tristique ac, eleifend vitae,");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (31,444,"2019-02-04 08:42:50","neque. Sed eget lacus. Mauris non dui"),(32,510,"2018-10-02 00:10:24","non, lacinia at, iaculis quis, pede. Praesent eu dui."),(33,323,"2018-05-22 14:30:46","sodales nisi magna sed dui. Fusce"),(34,843,"2019-04-28 19:52:05","laoreet posuere, enim nisl elementum purus, accumsan interdum libero"),(35,831,"2018-03-31 17:08:54","erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin"),(36,812,"2017-12-24 04:10:50","a, aliquet vel, vulputate eu, odio."),(37,310,"2017-10-29 02:41:10","eleifend nec, malesuada ut, sem. Nulla"),(38,243,"2018-06-29 10:17:18","varius ultrices, mauris ipsum"),(39,381,"2017-12-20 01:01:34","arcu."),(40,346,"2019-06-28 17:17:12","scelerisque sed, sapien. Nunc pulvinar arcu et pede.");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (41,228,"2018-12-18 15:54:38","commodo auctor velit."),(42,396,"2018-03-24 21:26:41","a,"),(43,890,"2019-01-07 04:53:32","Nulla aliquet. Proin velit. Sed malesuada augue ut lacus."),(44,742,"2018-07-17 11:17:22","pede. Cras vulputate velit eu sem. Pellentesque ut"),(45,159,"2019-04-27 00:19:00","diam dictum sapien. Aenean massa. Integer vitae nibh."),(46,776,"2017-11-26 11:06:42","nisi dictum augue"),(47,552,"2018-05-14 22:07:40","ut odio vel est tempor bibendum. Donec felis orci, adipiscing"),(48,614,"2019-05-30 19:52:11","at, libero. Morbi accumsan laoreet ipsum. Curabitur"),(49,81,"2017-08-29 19:58:28","Cras pellentesque. Sed"),(50,579,"2017-09-25 00:13:52","lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (51,643,"2019-07-14 13:33:40","sem. Pellentesque ut ipsum ac mi eleifend"),(52,391,"2019-08-15 00:37:17","Donec fringilla. Donec feugiat"),(53,916,"2018-03-07 09:16:19","nec, mollis vitae, posuere at, velit. Cras lorem"),(54,763,"2018-10-11 16:46:12","Cum sociis natoque penatibus et"),(55,100,"2019-05-07 09:44:22","Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper"),(56,553,"2018-08-08 20:19:01","ut aliquam iaculis, lacus pede sagittis augue, eu"),(57,901,"2019-07-18 21:06:04","consectetuer adipiscing elit. Aliquam auctor,"),(58,666,"2019-06-15 14:14:57","nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet"),(59,468,"2018-08-26 21:27:42","imperdiet dictum magna. Ut tincidunt"),(60,79,"2018-09-04 04:13:23","in lobortis tellus justo sit amet nulla. Donec non justo.");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (61,522,"2019-03-06 01:38:48","Mauris nulla. Integer"),(62,377,"2019-08-06 11:55:59","mi eleifend egestas. Sed"),(63,318,"2018-12-20 08:36:21","penatibus et magnis dis parturient"),(64,647,"2018-02-26 10:05:32","varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas"),(65,960,"2019-01-24 19:21:28","bibendum fermentum metus. Aenean sed pede nec ante blandit viverra."),(66,632,"2018-03-04 05:08:17","vel, mauris."),(67,665,"2018-10-22 10:01:22","risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed"),(68,210,"2018-12-22 09:06:39","molestie in, tempus eu, ligula. Aenean euismod mauris"),(69,131,"2018-04-16 11:50:48","lobortis tellus justo sit amet nulla. Donec"),(70,534,"2018-12-15 21:20:12","eu");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (71,177,"2018-03-12 00:07:18","eu, ultrices sit amet, risus."),(72,510,"2019-08-05 06:44:20","fermentum arcu. Vestibulum ante ipsum primis in faucibus"),(73,242,"2018-03-13 01:14:20","vel turpis. Aliquam"),(74,939,"2018-06-06 19:46:28","nec metus"),(75,97,"2018-02-14 15:54:12","Pellentesque habitant morbi tristique senectus et netus et"),(76,349,"2018-06-21 01:31:23","commodo"),(77,284,"2018-05-19 08:51:05","ut mi. Duis risus odio, auctor vitae,"),(78,87,"2019-06-06 03:41:19","semper cursus. Integer mollis. Integer tincidunt aliquam"),(79,40,"2019-07-03 23:26:27","lectus. Nullam"),(80,351,"2019-01-28 05:55:39","Proin non massa non ante bibendum");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (81,584,"2018-01-21 11:28:04","ultricies ornare, elit elit fermentum risus, at fringilla purus mauris"),(82,872,"2019-02-19 04:54:04","mauris. Integer sem elit, pharetra ut, pharetra sed,"),(83,496,"2018-11-13 21:04:08","Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis"),(84,932,"2018-01-28 01:45:51","vehicula."),(85,522,"2018-09-08 05:35:23","eleifend, nunc risus varius orci, in"),(86,6,"2018-03-16 17:19:38","Curae Phasellus"),(87,775,"2017-11-10 13:49:03","neque"),(88,28,"2018-10-30 06:24:56","nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse"),(89,673,"2018-01-17 23:44:22","interdum. Curabitur dictum."),(90,852,"2018-10-19 23:01:34","malesuada vel, venenatis vel, faucibus");
INSERT INTO `factures` (`id`,`numero`,`date`,`objet`) VALUES (91,285,"2018-02-19 21:13:16","turpis egestas. Aliquam fringilla cursus purus. Nullam"),(92,364,"2018-02-22 21:06:08","ligula. Nullam enim."),(93,703,"2018-12-23 15:56:42","malesuada fames ac turpis egestas. Fusce"),(94,361,"2018-06-06 22:51:16","molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl"),(95,51,"2019-01-05 21:30:04","Integer aliquam"),(96,440,"2019-05-09 04:31:11","ligula eu enim."),(97,584,"2017-09-18 11:11:48","Quisque ornare tortor at"),(98,182,"2019-04-22 02:20:58","sociis"),(99,765,"2019-05-22 12:11:28","elementum sem, vitae aliquam"),(100,579,"2019-04-24 11:41:29","egestas nunc sed libero. Proin");

/* DROP TABLE `factures`; */

CREATE TABLE `personnes` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `nom` varchar(255) default NULL,
  `prenom` varchar(255) default NULL,
  `telephone` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Goodwin","Miriam","1-552-420-0067","dui.augue@Donec.edu"),("Colon","Bertha","1-260-168-0659","arcu@diameudolor.org"),("Fleming","Mechelle","118-4541","tincidunt.orci.quis@nibhenimgravida.co.uk"),("Macdonald","Callie","218-4024","ut.dolor.dapibus@tincidunt.edu"),("Reed","Leroy","1-871-615-7395","augue@vulputate.net"),("Harrell","Warren","687-9621","ac.arcu.Nunc@necimperdiet.edu"),("Hardy","Xander","1-813-338-8142","Aliquam@mollisnec.com"),("Calderon","Kirby","1-648-813-9326","fringilla.Donec.feugiat@purusgravidasagittis.com"),("Shannon","Alvin","342-8458","et@in.ca"),("Cunningham","Fay","1-394-640-6086","ligula@ligulaAliquam.com");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Ferguson","Remedios","485-7396","lacus@lobortisquispede.edu"),("Anthony","Sebastian","1-591-832-6122","varius.Nam@volutpatNullafacilisis.co.uk"),("Bonner","Tamara","775-7960","eleifend@ligulaNullam.ca"),("Goodwin","Mia","916-7483","lacus.vestibulum@dui.co.uk"),("Ramirez","Patrick","401-3878","porttitor@Etiam.net"),("Mosley","Kendall","1-160-441-7954","enim.mi@natoquepenatibuset.com"),("Boone","Chanda","1-919-193-8408","id.sapien@luctusetultrices.co.uk"),("Le","Kyra","1-270-157-3459","magnis.dis.parturient@ut.org"),("Schneider","Rose","1-266-531-2902","turpis.egestas@Phasellusdapibus.ca"),("Mccoy","Deanna","1-522-416-9321","orci@aliquet.com");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Henson","Harper","1-572-973-1366","malesuada.fames.ac@loremfringillaornare.edu"),("Walton","Bert","1-314-484-6165","Nulla@dictumPhasellus.co.uk"),("Osborn","Sebastian","433-7394","metus.vitae@eget.net"),("Garner","Lilah","156-1185","amet@Donectempus.co.uk"),("Guzman","Lawrence","362-4277","dis.parturient@morbitristique.com"),("Raymond","Noel","937-8017","rutrum.urna.nec@vulputate.ca"),("Farrell","Kaden","458-1684","elit@acipsum.co.uk"),("Goodwin","Cara","450-7913","arcu.Aliquam.ultrices@ipsumsodalespurus.net"),("Peck","Clayton","1-460-176-5608","turpis.egestas.Aliquam@in.co.uk"),("Watts","Graham","727-1866","Morbi.vehicula@dui.net");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Salinas","Leo","1-282-462-7403","Donec.feugiat.metus@elitEtiam.co.uk"),("Santos","Akeem","1-615-921-0377","nulla.In.tincidunt@nascetur.co.uk"),("Marks","August","116-9909","dignissim.tempor.arcu@metusvitaevelit.co.uk"),("Perkins","Scott","993-8275","ornare.libero@augueporttitor.net"),("Berger","Montana","939-1081","Duis.elementum.dui@anequeNullam.com"),("Burch","Orlando","1-967-210-2781","ipsum.sodales.purus@dictum.co.uk"),("Castaneda","John","1-762-749-8777","hendrerit@nec.co.uk"),("Roberts","Raja","1-681-572-7830","Pellentesque.habitant@nonleo.net"),("Diaz","Allen","1-580-862-2792","blandit@eleifend.co.uk"),("Rosa","Jesse","1-501-526-7581","ante.bibendum.ullamcorper@Aliquam.com");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("May","Linus","144-3575","fermentum@nuncQuisqueornare.ca"),("Howell","Emery","1-747-109-2321","malesuada.id@nisi.net"),("Pearson","Ima","972-7093","enim.Sed@pharetrasedhendrerit.org"),("Peck","Vanna","887-8823","mi@eleifendnon.net"),("Lawson","Chester","674-3686","lacus.Ut.nec@Crasdictum.net"),("Fulton","Calvin","726-9233","Mauris@eratEtiam.com"),("Leonard","Nero","264-6871","fermentum@liberoProinsed.co.uk"),("Villarreal","Dai","496-1119","ipsum.Curabitur@Praesent.co.uk"),("Buchanan","Emerald","224-6883","ridiculus.mus.Proin@gravidamolestiearcu.edu"),("Sykes","Cheryl","129-8462","at.libero@Duisacarcu.co.uk");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Fuller","Iola","1-146-882-7348","ante@vulputatelacus.co.uk"),("Woods","Erasmus","904-1481","mauris.erat@Phasellus.org"),("Holden","Justine","1-707-765-0900","pede@erat.ca"),("Villarreal","Quinlan","247-8996","dictum.Proin.eget@commodohendrerit.edu"),("Ramos","Jessica","883-8130","porttitor.vulputate.posuere@cursusvestibulum.com"),("Parsons","Iola","1-827-964-4977","ultricies@nonummy.org"),("Gentry","Boris","1-760-205-9625","ipsum.ac.mi@natoquepenatibus.net"),("Roberson","Tyler","110-0682","ornare.In.faucibus@mifringilla.net"),("Abbott","Madonna","984-9612","feugiat.placerat@Aliquamtinciduntnunc.ca"),("Andrews","Brenden","1-969-297-7176","Sed.diam@Nuncpulvinararcu.co.uk");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Hernandez","Ray","1-910-757-4899","Lorem@consequatdolor.ca"),("Church","Hedley","269-1757","nibh.sit@fringilla.edu"),("Weaver","Jason","1-557-307-6570","tristique.neque.venenatis@ametdiameu.co.uk"),("Becker","Kenyon","1-253-588-9511","sapien.Cras@antebibendum.ca"),("Lynn","Nell","1-133-854-2005","sem.semper@sitamet.ca"),("Macdonald","Calvin","1-139-123-9714","Sed.nunc.est@mattisornarelectus.com"),("Whitney","Bradley","663-9500","scelerisque.scelerisque.dui@litora.org"),("Hamilton","Sandra","477-2868","et.magnis@Duisrisusodio.ca"),("Fry","Dara","838-5607","nec@Sedet.edu"),("Barnes","Willow","167-5378","Nulla.interdum@nonlacinia.edu");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Michael","Illiana","1-499-824-4036","Cras.lorem.lorem@enimEtiam.ca"),("Bolton","Geraldine","1-608-920-5627","consequat@Cras.com"),("Foster","Dominique","1-908-311-2154","mauris.a@Maecenasliberoest.co.uk"),("Petersen","Adam","266-6300","auctor.nunc@tellusjustosit.edu"),("Casey","TaShya","712-5134","varius@et.edu"),("Golden","Lucas","1-459-609-1261","nec.urna.suscipit@Maurisvestibulumneque.net"),("Griffith","Serena","631-6723","Mauris@eget.com"),("Peterson","Yasir","1-945-237-2084","Sed.neque@tinciduntnuncac.ca"),("Trujillo","Flavia","1-891-247-3158","porttitor@diamatpretium.net"),("Hancock","Samantha","1-996-756-7788","erat.vitae.risus@vulputateposuere.ca");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Benson","Emerald","1-854-548-3729","amet.ultricies.sem@tempor.com"),("Baird","Carol","377-3299","nisl.sem.consequat@orcilobortis.com"),("Schmidt","Darryl","523-0929","Phasellus.dapibus@velitduisemper.net"),("Delacruz","Xavier","1-397-989-3705","a.aliquet@tellusPhaselluselit.co.uk"),("Bryant","Ginger","1-840-951-3247","id.risus.quis@luctuset.org"),("Ashley","Aileen","1-968-479-1942","malesuada.fringilla@risus.org"),("Pittman","Violet","1-219-481-1513","dolor@iaculis.co.uk"),("Valencia","Ariel","1-729-941-2115","porttitor.vulputate@magnanec.edu"),("May","Mira","1-675-434-5845","enim.non.nisi@eratin.org"),("Howe","Uriah","308-5476","purus@utsemNulla.com");
INSERT INTO `personnes` (`nom`,`prenom`,`telephone`,`email`) VALUES ("Workman","Troy","542-0056","tincidunt@neceuismodin.co.uk"),("Rios","Lawrence","1-712-403-8545","mus@nequevitaesemper.com"),("Morrison","Yetta","1-254-468-4866","auctor.velit@famesac.org"),("Bailey","Violet","1-771-614-7988","vitae@natoque.co.uk"),("Downs","Brett","1-973-679-4535","Mauris.vestibulum@cursusnonegestas.org"),("Russo","Brock","1-546-519-5991","hendrerit@eunibh.net"),("Oliver","Lana","681-2099","arcu.Sed.eu@Proinvel.edu"),("Gamble","Eleanor","1-711-865-1920","porttitor.scelerisque@Aeneaneuismodmauris.org"),("Wagner","Kylan","772-5240","adipiscing@tempus.org"),("Wyatt","Lydia","631-8843","justo.Proin.non@Nuncac.com");

CREATE TABLE `societes` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `nom` varchar(255),
  `adresse` varchar(255),
  `pays` varchar(100) default NULL,
  `tva` varchar(11) default NULL,
  `telephone` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Consectetuer Company","Boncelles","Afghanistan","79479919399","1-501-397-0610"),("Bibendum Fermentum Metus Company","Faridabad","Sri Lanka","69653402299","677-2047"),("Tincidunt Institute","Nasino","Myanmar","78351194299","278-8880"),("Mauris Suspendisse Aliquet Ltd","Gujrat","Kenya","13621962899","1-888-626-7641"),("Id Company","Cardedu","Serbia","86683300299","1-453-623-7024"),("Dictum Placerat Limited","Mission","Comoros","05646313299","720-9367"),("Arcu Industries","Guardia Sanframondi","Fiji","39992649399","1-335-505-2677"),("Eu Accumsan Sed Industries","Frankfort","Bosnia and Herzegovina","61826598999","1-405-548-0911"),("Orci Adipiscing Non Foundation","Stintino","Ethiopia","25966684299","1-464-654-8315"),("Ut Incorporated","Kaiserslauter","United States Minor Outlying Islands","91820526899","320-9500");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Eu Lacus Quisque Associates","Ziano di Fiemme","Austria","04575539599","1-470-796-1216"),("Molestie Tortor Nibh Institute","Schwechat","Barbados","09323858099","752-8530"),("Fusce Aliquet Consulting","San Luca","Cambodia","97674715199","164-3182"),("Amet Consectetuer Company","Meerut Cantonment","South Africa","67369462899","172-5336"),("Sagittis LLC","Lier","Rwanda","22513169799","1-214-593-0049"),("Lectus LLC","Montemilone","Western Sahara","34721201899","426-5706"),("Maecenas Ornare Egestas Consulting","Brandenburg","Palau","33825650099","1-199-393-1786"),("Vitae Associates","Sarre","Greece","32918448999","729-2062"),("Consectetuer Associates","Sant'Ilario dello Ionio","Samoa","33792364799","987-3584"),("Justo Praesent Luctus Industries","Ockelbo","Falkland Islands","88258771399","290-2323");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Dictum Foundation","Castelluccio Valmaggiore","Suriname","07838065099","381-6979"),("Venenatis Industries","Conca Casale","Mauritania","44736568799","208-1235"),("Iaculis Odio Nam Industries","Pramaggiore","Italy","97622450799","1-685-764-2706"),("Egestas Lacinia Sed LLP","Frauenkirchen","Algeria","97297480699","296-2021"),("Netus Ltd","Cardiff","Oman","49924810999","1-104-226-4371"),("Purus Inc.","Worms","Turks and Caicos Islands","53352001699","171-5187"),("Eu Neque Ltd","Rampur","Niue","45958178199","491-6597"),("Sodales LLP","Seloignes","French Guiana","74298082099","664-9330"),("Vel Convallis PC","Corte Brugnatella","Qatar","05960346999","1-263-404-9778"),("Augue Eu Industries","Siculiana","Egypt","83955694799","359-3286");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Ullamcorper Limited","Kermt","Saint Barthélemy","16644781799","135-9464"),("Vitae Sodales At Inc.","Stroud","United States Minor Outlying Islands","40857600499","147-5468"),("A Company","Kieldrecht","Malta","52755403399","935-1307"),("Turpis Non Enim Inc.","Tarvisio","Portugal","20699451399","882-5192"),("Interdum Libero Dui Corp.","Sotteville-lès-Rouen","Guam","01351096099","874-8679"),("Dictum LLC","Natales","Russian Federation","80239345799","1-294-787-9034"),("Metus Associates","Navadwip","Iraq","50482602599","931-4853"),("Mauris Foundation","Braunau am Inn","Russian Federation","70672473299","458-3428"),("Adipiscing Ligula Incorporated","Proddatur","Comoros","98284053199","660-1230"),("Blandit Corporation","Naninne","Algeria","01624216699","125-2976");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Ut Semper Associates","Vergemoli","Malaysia","56368024299","848-8087"),("Interdum Industries","Rocky Mountain House","Comoros","62603035899","705-3552"),("Malesuada Consulting","Crehen","Lithuania","90336105899","686-5351"),("Aliquet Molestie Tellus Associates","Nuraminis","Guinea","18359879199","1-734-618-5148"),("Ligula Aenean Corp.","Talcahuano","Micronesia","70290739599","1-591-756-1835"),("Metus In Nec PC","Birmingham","Moldova","96550401899","236-2938"),("Consequat Purus PC","Virton","Svalbard and Jan Mayen Islands","26229061299","1-920-169-1278"),("Arcu Inc.","Stirling","Saint Kitts and Nevis","83537841699","1-758-560-5081"),("Sed Eu Company","Todi","Barbados","91578258399","1-101-304-0853"),("Eu Arcu Morbi Consulting","Pirque","Austria","74553259799","603-6010");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Etiam Laoreet Limited","Lowell","Jamaica","11635568299","1-818-883-8213"),("Amet Consectetuer Adipiscing Institute","Melipeuco","Greece","64991599199","1-385-502-3589"),("Tempor Augue Ltd","Swadlincote","Canada","64464029199","1-535-636-5121"),("Risus Quisque Ltd","Caruaru","France","24913501499","1-417-674-8520"),("Ac Turpis Ltd","Tiltil","San Marino","27914288499","755-4587"),("Lacinia Orci Consectetuer Associates","Sanluri","Mexico","74206302499","1-810-743-2051"),("Hendrerit Donec Company","Abaetetuba","Cook Islands","29665403499","360-4085"),("Neque Nullam Limited","Moorsel","Timor-Leste","09569482299","609-4377"),("Hendrerit Neque In Associates","Belmont","Japan","29493303699","541-9741"),("Nec Metus Facilisis PC","Comeglians","Panama","23200012899","1-156-149-8736");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Justo Praesent Luctus Corp.","Dipignano","Tokelau","70635957599","270-1263"),("In Industries","Konstanz","Belgium","03728402499","134-9934"),("Ridiculus Mus Corporation","Soria","Nicaragua","05908317099","291-5451"),("In Ornare Sagittis PC","Castellina in Chianti","Niue","54737461799","323-6208"),("Vitae Purus Ltd","Batiscan","Micronesia","04446765299","184-0538"),("Fringilla Donec Feugiat Limited","Provost","Brunei","88525241599","1-200-980-6141"),("Donec Nibh Company","Minervino di Lecce","Mauritania","87470360499","599-1693"),("Eu Eleifend Company","Cognelee","Liberia","14269862599","809-1019"),("Turpis Nulla Foundation","Sierra Gorda","Moldova","64253287199","545-7512"),("Risus Duis A Corp.","Curon Venosta/Graun im Vinschgau","Saudi Arabia","28237778399","513-4693");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Per Conubia Nostra Limited","Relegem","Chad","84866262499","1-519-799-1701"),("Malesuada Augue LLC","Stamford","Barbados","56714579299","567-7285"),("Amet Ultricies Sem Institute","Norman Wells","United Arab Emirates","91210307699","185-3322"),("Diam Duis Foundation","Anzi","Uruguay","81519334199","1-848-263-1484"),("Neque Company","Lasne","Argentina","16713392399","720-1723"),("Sit Amet Nulla Ltd","Rizes","Chile","88977588799","1-472-898-5048"),("Egestas LLC","Lobbes","New Zealand","20621796199","347-7529"),("Non Feugiat Inc.","Florianópolis","Tunisia","47694347899","504-5998"),("Congue Industries","Swan Hill","Curaçao","83713284299","218-5197"),("Egestas Urna Limited","Balen","Slovenia","97432634199","1-678-184-2429");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Fermentum Company","Borås","Liberia","73237175299","1-278-896-6449"),("Donec Tempus Lorem LLC","Grafton","Christmas Island","19505505899","805-9303"),("Mauris Morbi Non Limited","Santa María","Liechtenstein","51700486699","347-8824"),("Sodales Elit PC","Acquasparta","Botswana","19810051899","960-4644"),("Eget Institute","Rae Bareli","Australia","01502357199","1-991-921-7796"),("A Arcu Sed Institute","Swan Hills","Benin","55205767199","1-304-735-9529"),("Risus Quis Diam Ltd","Bhatinda","Marshall Islands","19676022199","1-790-319-0739"),("Dictum Eleifend Consulting","Croydon","Somalia","51774643399","377-7526"),("Commodo Hendrerit Associates","York","Guam","94707240399","717-7150"),("Congue Incorporated","Vishakhapatnam","Austria","31656088399","644-9632");
INSERT INTO `societes` (`nom`,`adresse`,`pays`,`tva`,`telephone`) VALUES ("Sem Molestie Sodales LLP","San Antonio","Spain","12239331599","1-599-712-5975"),("Duis Elementum Dui Institute","Waardamme","Guatemala","15477185399","513-1507"),("Erat Eget Tincidunt Corp.","Ramskapelle","Malta","65378900999","250-3247"),("Massa Rutrum Limited","Campbelltown","Monaco","74708214099","1-461-425-8166"),("Mauris Elit Institute","Bahawalnagar","Rwanda","67930967399","1-916-676-3234"),("Sodales LLC","Norman","Oman","76934911999","179-1168"),("Mauris Vestibulum Institute","Medemblik","Dominica","10797928999","1-551-438-0004"),("Velit LLP","Ospedaletto Lodigiano","Seychelles","69219783999","1-955-219-8484"),("Eu Placerat Eget Ltd","Palmerston","Kuwait","72830471699","428-9097"),("At Arcu Vestibulum Corp.","Banff","Tajikistan","62333360899","1-794-793-0064");

CREATE TABLE `type` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `type` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `type` (`type`) VALUES ("quam."),("eget"),("pretium"),("orci"),("tempus,"),("egestas"),("Phasellus"),("aliquet"),("conubia"),("eu");
INSERT INTO `type` (`type`) VALUES ("ac"),("id"),("hendrerit"),("eu"),("lorem"),("Suspendisse"),("sodales"),("id,"),("rutrum"),("cursus");
INSERT INTO `type` (`type`) VALUES ("mattis."),("Curabitur"),("non"),("vel"),("nibh."),("Quisque"),("hendrerit"),("congue"),("ornare"),("dui.");
INSERT INTO `type` (`type`) VALUES ("elementum"),("lorem"),("et,"),("facilisis"),("eleifend."),("luctus"),("nunc"),("ac"),("est."),("posuere");
INSERT INTO `type` (`type`) VALUES ("nec,"),("eu"),("dolor"),("auctor"),("ullamcorper"),("lorem"),("pharetra"),("lacinia"),("cubilia"),("auctor");
INSERT INTO `type` (`type`) VALUES ("sit"),("nunc"),("mollis"),("dictum"),("posuere,"),("in,"),("sem."),("ultrices"),("dolor"),("Nulla");
INSERT INTO `type` (`type`) VALUES ("imperdiet"),("facilisis,"),("molestie"),("Integer"),("Suspendisse"),("arcu."),("arcu"),("faucibus"),("amet,"),("tincidunt");
INSERT INTO `type` (`type`) VALUES ("vestibulum"),("lobortis."),("tristique"),("diam."),("vitae"),("imperdiet"),("Fusce"),("lacus."),("convallis"),("adipiscing");
INSERT INTO `type` (`type`) VALUES ("sodales"),("tempor"),("placerat"),("neque"),("neque"),("purus."),("magna,"),("Donec"),("eget,"),("Nulla");
INSERT INTO `type` (`type`) VALUES ("Pellentesque"),("amet"),("arcu."),("pretium"),("elit"),("Aliquam"),("tristique"),("lacus."),("eleifend,"),("dui,");