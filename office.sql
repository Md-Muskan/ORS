-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: office
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminid` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (101,'muskan','female','muskan03292003@gmail.com','muskan123'),(123,'Eswar nandivada','Female','eswar@codegnan.com','2001');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicants` (
  `aspirentid` int DEFAULT NULL,
  `notifid` int DEFAULT NULL,
  `filename` varchar(15) DEFAULT NULL,
  `fileupload` longblob,
  `applied_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) DEFAULT 'Pending',
  KEY `notifid` (`notifid`),
  KEY `aspirentid` (`aspirentid`),
  CONSTRAINT `applicants_ibfk_1` FOREIGN KEY (`notifid`) REFERENCES `notifications` (`notifid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `applicants_ibfk_2` FOREIGN KEY (`aspirentid`) REFERENCES `aspirent` (`aspirentid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES (2001,235,'laloyala.txt',_binary 'Hostel Management System\r\nPatient Management System\r\nOnline Examination System\r\nLibrary Management System\r\nFood Delivery application using Python\r\nCustom Messenger Application\r\nNews aggregator\r\nCalorie Counter Application\r\nImplementation Of Result Management System\r\nFeedback Information system\r\nBuilding a Fully Functional E Commerce Web Application using python\r\nOnline Employee Recruitment System\r\nImplementation of Live Weather Forecast Application using Python\r\nImplementation of Task Management System\r\n\r\n\r\nOnline Examination System\r\nEcommerce\r\nCalorie Counter Application\r\nFood Delivery\r\nFeedback Information system\r\nNews aggregator\r\nLibrary Management\r\nResult Management System\r\nMessenger\r\nOnline Employee recruitment system\r\nPMS\r\n\r\n\r\nHMS\r\nLive weather forecast\r\nTask Management System\r\nImplementation of Live Weather Forecast Application using Python\r\n\r\n','2023-03-17 16:19:52','Approved'),(200,235,'data entry oper',_binary 'PK\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0[Content_Types].xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0´”\Ëj\Ã0E\÷…þƒÑ¶\ØJº(¥\ÄÉ¢ehúŠ4ND\õB£¼þ¾\ã81¥$14\É\Æ \Ï\Ü{\Ï1ƒ\ÑÚšl	µw%\ë=–“^i7+\Ù\×\ä-d&\á”0\ÞA\É6€l4¼½L60#µÃ’\ÍS\nOœ£œƒXø\0Ž*•V$:\ÆB~‹\ðû^\ïK\ï¸”§Úƒ\r/P‰…I\Ù\ëš~7$²\ì¹i¬³J&B0ZŠDu¾t\êOJ¾K(H¹\íÁ¹xG\rŒL¨+\Çvººš¨dcÓ»°\Ô\ÅW>*®¼\\XR§mpúª\ÒZ}\í¢—€HwnM\ÑV¬\Ðn\Ï”\Ã-\ì\")/\ÒZwB`\ÚÀ\Ë4¾\Ý\ñ	®°s\îDXÁ\ô\ój¿\Ì;A*Êˆ©\Ëc´Ö‰\Ö\04\ßþ\Ù[›S‘\Ô9Ž> ­•ø±\÷{£V\ç4p€˜\ô\éW\×&’\õ\Ù\óA½’¨\Ù|»d‡?\0\0\0ÿÿ\0PK\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0_rels/.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬’Áj\Ã0@\ïƒýƒÑ½Q\ÚÁ£N/c\Ð\Û\Ù[IL\Û\Øj\×þý<\Ø\Ø]\éaG\Ë\ÒÓ“\ÐzsœFu\à”]\ð\Z–U\rŠ½	\Öù^\Ã[û¼x\0•…¼¥1x\Öp\â›\æ\öfý\Ê#I)Êƒ‹YŠ\Ï\Z‘øˆ˜\ÍÀ\å*D\ö\å§i\")\Ï\Ôc$³£žqU\×\÷˜~3 ™1\Õ\ÖjH[{ª=E¾†º\Î~\nf?±—3-\ÂÞ²]\ÄTê“¸2j)\õ,\Zl0/%œ‘b¬\n\Z\ð¼\Ñ\êz£¿§Å‰…,	¡	‰/û|f\\Zþ\çŠ\æ?6\ï!Y´_\áoœ]A\ó\0\0ÿÿ\0PK\0\0\0\0\0!\0W™¼z\0\0$\×\0\0\0\0\0word/document.xml\ì]mo\Û8þ~ÀýÂŸv\'²\÷`\ÓEš&m\ö\Ún.É¡\ØOZ¢-Ö”¨¥(;¾_³¿e\Ù\ÍP’¿$µ\'‘\ÛA€H¢\È9œy83|\ñ/¿\ÞEŠ\õ…I¥ŽOj\Í\íF‰\Ø×Œ»\'µÿ\Ü^l\ÖXjyp¥cqRŠ´\ö\ë›þ\ã—Áq ý,±e@\"N‰R­MŽ=/\õC\ñt;’¾Ñ©\î\Øm_Gž\ît¤/¼6\×j4\î.1\Úi\n\ß;\ãqŸ§µ‚œ·µÀ\ðF‚»žrc\ÅÝ˜Fsi\"{Þ‘w8K¨µ!ha«9KjgiRû\Öj†\Ð\îJ„ V3”\öV£4§qû«Qj\ÍR:X\Ò\Î,¥\Ã\Õ(ÍˆS4+\à:1¼\ìhq¦\ëE\Ü\ô²d\'\ÜÊ¶T\Òfc¿$\Ãe\Ü[¡FPjD!\Ú	–¦p\àE:j\'(©\è“Zf\â\ã¢üÖ¨<Vý8/_\\F%„Z\ì³\ð¹#O\ÜY•Ú²¬Y„wy\ñw°8®yF(à£Ž\ÓP&#tˆV¥/Ã’Hÿ1\ô#U\æ$\ÍU\í!h{—wÃ˜\à\"\Õ/ú.Ry\Í§\Øl,Ð›HbTb‘*L~³¬I<þ\ðJ¬¹\Ç\Ü\æ‚\àSh\Í\Ø\÷Å‚ƒEIã° \áùc\íF:rAµ*\éä½‚tä˜±\Í1pº2\÷\ÙR$Z;e=\ð‚\Å\ï\ÑJ„Ë‘+û\ÈÃ²\Ü\ò§#¥AŠb¹\î\È\r£{üNºOSª\÷FgÉ˜š|\Zµ\Ë1¼\Ð\ÐY‚V¡œ\÷#}ZenBž\0\êFþ\ñe7Ö†·\ÔT¶0\×ø„/\îVÜ¹t\ìk†xU{Z[C¼&lp^p}Rk4\ÎZÝƒZ™te\æ$¾ž);û\æ\ê^’£|e\ð’&Ü‡jC&Þ±(6\r,\âžN3«‹\ð“•D\ï6\öÊ‡\ë\È\íGÁa\Ä\ð¤\Î,¾ù\ØW§\Ïu/LþIs¡c›\â7R_B\ß_\é$‘qŠ‘\Èi*ùI\íVF\"eŸÅ€]\ëˆ\Çø2<\Ó\É\ì~:~t_h\çÿ\ÏRw\õµÒ¦¬Ckÿ\òl=a\â2½‘\'¥ÿe<(SÎ°’iŠ;V«)\â­\Ë\Ï\î]sø\Ñ\å63Po|rc0½\ñµW´\Þ1+6ÛÄ¦¢\õ\ö\Íoº\ÍÞ‰\Ô72A#\ß\Ù<G\Î\ÆQ8‹\ò©\Æ\â\\\ð\Þ]\"\î\Ý+0V¬¶€YŒ4+œU­%\ô¯µ\ë\ò\Ü\Ó?\ÈøR:6).\Í\Ö^\ëhq)0`B\\Š´\ïD«*\ÈT™3tgŒ`h°´!³¡`©ÎŒ‰…‰\Ö‡\\–uŒŽ˜[&Ê¯+&cW¨I0ú9£ž\å\Öf\ßÁ(³š\Â\n\ß2aŒ6\é6©,©,©\ìŠ*+•¨ƒ–‚Jr\È-”Â«SÀ¡\ÓE\îû™\áþ\éŽ{vzš*\å5C&SP\ïX\Z’\Z’\Z®¢†Ÿ¸Œ-/\Æ>¥»m­{)\ê\÷­\ìK+\0×»ù°ŠqC H¶6=R;R;R»\Ô#1NAL\È,L_\Ô\Þ\\‹¾7\Í:H06Á•\"\öQ\á9·:ë ‡Æ€Šyy\Ã`|? \ït6˜\n¿‡YP·uf“\Ìn³\Û\ÆLT^¦c5t™\Ðb\è5£u\ç\Ü \×\ì0\Z¦	\Í7L\çBœ©?§a\ô4QÀ\Û<Xˆ—\çq@œ\\F3`d\Ê=²W\ZqVŠ Ò€@\Â\Â\0\ò\÷_$\Ù$\Ùß£d_‹?3iÀc¸\éI¥\Ò\ãŠû­¢þ\ä3\"UK‘\Î\ïa\Ð¹/þ\é†ý\î&j±\ï\\07»†G)\é\é\é\Ø\n:v;LPÁKƒÕªA“F‘F‘F­4jùB)\\ˆÝ‹\õ@‰ +0¼\\°P\ÓR·\Îp\àŠ¸qZ—d±o3\ç\ñW\Ä-\ZI<‰?‰ÿ\Â\â\ß6\Å\ãks§ÿŸ»\Zª:sQ8¯+\ã|\Ñ.¿\àmYf1bý\Í\Ûs7\çû;˜Á\ÜB~\Ó\í	t ¬®\0V—;(@W\n\È\Ö\Õ lFg\Ý|ýP[(=`§ÿNq\ÝOWX\Æq‰Bœ„I™[ùV¢\ÅBPV\öE<WL¿’˜’˜®‰;\Õ\ó<vŠº’\ç\ñ\n²Q\rÓ«ÿ¯¶q\ñ%\ä€\ß`` X$~»¸´[Š Î“¤˜\Ð\àÀb‰N%\Z\'¿¦ojMª$j\É«¤D\Úx´WÔ” Œ4i¼\æ/Š€\Ö³S\æ\ó8˜¢,\ÊR\ËB\ÞŒ³H\Æ2\Ê\"µt D(®­Â¬™\Õ)ƒ¡…>\r#|2 \õ\0iÏ’²<o¸`\ô‹\r!+Fþ\îùA«\à*9	?9r\äÈ‘#·6*9p\ÐÐû3\ãjb·^î»ŸF\î¹g\äžÑ¨þ\ôˆ{v 5v\Ð\àŽµ\Ñ;{oxaŠÛŠŒ;8ŠŽ­”\Æ- \Ç\ä«=µ[\Þ|\Ú>\Ó¹k\Ï \Ûu\Ú3\ôt\ñ|{N»…ž\Ê\Ã:{{\ã\×Y³eCv\ÅÓ”ý\ô\á\æügLý2Á\Û3q¦\r•-“µ\Ù%m(¯/\ÒÁ\äO“¹úýNŒ¦\\q3œœ%·z	~’[Mn\õ\Æ\áTE‘i\äA—¨D†þ\Ú\Â„ˆ\ÙQ£\Ñp\ëÅ›-¼û\n\Õ\Ï8\ì&/3J±@$r\éü”‰\Ç~\áI\Åa\óVz@2ƒ\ÒX†…\"\ì4Œ„\Û\á¿M†%–dX`\Ï\íý—aL;ÿ¿95¡t-^\åg\ç\ÑN²(É¢$‹’,\Ê×°(<*\Î4wû:r#1-­Dw V\Æ\ägÜŽ¤Š¥Á<.žT¢/T½¤\ã\nŒ¦yBžoÑ®\Èib¥\ÍQg\ïß±Ÿ.\Ý<”×º\ç^\Ãw¢,.¦°§°\æ|–\î\áŸ\ë·\Â‘ŸjfRlýAV>°PÏŠ\Ô:Ÿ«oP\Ì\Ýu\äS½Ö‰\È\ä‘{T-“„¬r©=¹:\Ý\êPGn\ÃÒ¤£D®À\"M®\0¹\ËX7\Î?ø–\Ý8½´…¬\ô¥±\ï‘Ö¥<¦\ì!NLt2\à\×!\â0¶|-plùM·\Éh\'£Œ\ö],^D\Ûùÿj\í\ô€E¸^\èsŸ\ç\'\ó\ã\òüR”\Ø|¹Œ˜k\Ú\Ó\á4\é±>°\"O‡<%&=\0£§d‰@\â<EÓ¡X[ù:¿¹\ñˆ˜\éÌ°\ßM—\Ç2­\Æ\Ï0½ø]Ú‹\ã^!¦»\ò{ú¥\Þ\Ý9ý[¤ý\0†_%Ø„P‡¿Ô‹\ë¥Ÿ)n^\é€\õ9\ê1ú‘jrk6À(\Ø;Ä¿\×fŠ\îµVb\ê7g 9C\óA~z\Ì\Ë\à¤f.\'_¡LÁ\"t¾6;\×\Ï\Í\Ü{V\Ô[\î\÷ŠŸi˜ÆŒ·	Afû’¤\êrdù¢¥E`d[f»\ö\Â\ð\ä\ê¿m¨B\ïƒ–¬LHA•\ãçšºbv£û$¼d“…\õE¤ø€¤ø¥xz?<\É\ðs\È\ð!\É\ðs\Ê\ðO2ü\ì2|D2üŒ2<u˜\É\ó³\ËsÓ¹]$\Ð\Ï\Ê3‡Á\ïý°‹I¾\÷Œ©Ž\ïý%\Ô\î09Ž¿Y0ƒ0\Ê\ß`ß…q\'¢SŸp`³q\à\ÃÄ¶j‚¥q”«\Ûb—q]\Û\Ù\Ü\õ²\Ü\ÎFA±c*ƒ\ó×€ŸG‰\ÒC<\Ýks\Ï\ñ¬\ß£x—\ã.¥XH\ô*±¿cXúÀnl0\rb4ˆ­À˜\ê ,.¾ºœ>,™\0\á\\k\ì\í¶HûIûW`Lµ´ÿŒ[\Ñ\Õf6\Ö5/š\î\ÖS\ä|Mfš3!¦ø\î\Ñ4\ÐrŒœª´§µ<\í¨\à,\äX­\âÝ°“Z[te\\\æ$6~“PWkn\Å\ÝCþÃ‡?®Î¯?^~þ«…\Ö&\é±\ç\rƒ\í\â7EÓ6*\Ø\öu\ä}\Õ\í\Ô\ó˜\ö\\\õd¼‰[£]’5l}º\èi’žŠ„\à\÷\"\ì\Ï7\ÊaX\Æ\á\óŽx>N\Ó\ÅZT_\äRHL\\\ë\"œ–k2¹\rO\ç\÷™Ž’¼þ\Ñbr^B€]L†xÁ\Ä	IÈ®G\ñ4Š§-Ä˜\ê\Ä\Ó>jŸ+i‡\ì4 \ó\ô)l\Æ\Ë\Z±}B\àF°ü2\åq’r\Ñ\Ö,\È\õoq´2G,nC?s£Œ¥x\ïÚ¹{\ÅU 	\Ö\r$©k\ç\ê5eB’º~I½\á¦Š¯\Ó¹`\ä‚m”`ji\Í\è\Ò0Å±y1°]\×bŠ=\Ýï³¯8¿8µü\"\ä\Ý`\ä=\ÓžËµ\0’l\Ð\Ég\ÆÁÛ‹‹\Ê\"\É\ß]Æ\ä\Ë\"\ÉÛ‹\ÖÁ\Ù\é<\Ð(\Þ\äM¾½\Z\õË½·Ž^\÷\Û>€þk5\Ü!T!\Ü\ï\îÂ˜t?¹\éU«H\ßÍ‘\Ä\ÈnhÇmm­Ž\Æ\ÏùÉ°\åS(x€t\Ðp\'«t´vU<v3[H[\ö\Z\ò½Xfƒy\\r ý\÷FºSgÄ®¤\õ¡–;û®W6\ÑÝ¶u0t7P$\Ã\r<oþ\0\0ÿÿ\0PK\0\0\0\0\0!\0\ô\ìCV\0\0‹\0\0\0word/_rels/document.xml.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ÌV\Ën\Û0¼\è?¼Ó´œ\ÆmŠÈ¹´r\è¥u?`E­±D\n\\:Šþ¾+±\ÆªZ€J¸gw†Cboïžª2xDG…5‘gs \Ñ6)L‰_\ëo\ò“ÈƒI ´#\Ñ\"‰»\Õûw·?°Ï‹(/j\n\ÅP$r\ï\ë\ÏJ‘Î±š\Ù\Z\rI­«À\ó\Ôeª½\Õb>_*wŠ!V/0ƒû$\î>\áü\ë¶Æ¿Á¶iZhüb\õ¶B\ãÏ¤P9#¹²0—¡\ß\Ã\ã6M3KR\ÎZ4Ö•\ÉL\ÛJÅ¤åƒI>‚£$µä±˜?|·	\×\ö\õÉ£3P\nužDx5)‹Ž\Ò\à1³®U\ß\È\Ô\ÙJ\æ¶ÂŽÞ‘\Ý0Z£²\"\ôž]w(!Ï‘c½U\Â\Çi\í\É9{„i‡\Øc\ñÙƒ#\õ–ë•œÜ·\î‡„£\î\çµxdµ›\îƒaŸGFU—|[U`“\î\æ}\é\Ã\å˜ùSkü\Z\â\òD‡C¨·Š1‹0\Û*F\Çg\óX\Ä!\ÔWÄ¨J\öyÅ¯³\Çu\èm>ª–\×\Zœ—¾¸\ì\"¿ž”P$ƒ¹V\Æ\Ü\È}Š?w*\äÁ\ÉnÕ´\Ìv\n\ÃOR€º\á1\êµ\îÿ)ûŸF’\Õ”²k\è\Ü\ñ¹\î4@\éÃ˜Œ\ZŒ¾jN‚}·\ÑÍ¤Ò†Ÿ\Ë\ZˆdN¯\Ì\Þ\éz\Õ\Õ7\Ä*£\nû\Ï^Ï¶À}\Ã\Þ\í»«\ò\r\ê”­~\0\0ÿÿ\0PK\0\0\0\0\0!\0¶\ôg˜\Ò\0\0\É \0\0\0\0\0word/theme/theme1.xml\ìYK‹G¾\ò†¹\Ëz\Í\èa¬5\ÒH\òk\×6Þµƒ½Rk¦­ži\Ñ\ÝÚµ0†`Ÿr	œC¹\åB1\Ä\ä’c°Iœ‘\êI3-\õÄ]ƒ	»‚U?¾ªþºªºº4s\á\âý˜:G˜Â’Ž[=WqœŒØ˜$aÇ½}0,µ\\GH”Œe	\î¸,Ü‹;Ÿv—Ž±\ò‰8:n$\å\ì|¹,F0Œ\Ä96\Ã	\ÌM‘„.\ËcŽŽAoLËµJ¥QŽI\\\'A1¨½1™v”Jwg¥|@\á_\"…\ZQ¾¯TcCBc\ÇÓªúP\î!\Úqa1;>À\÷¥\ëP$$LtÜŠþs\Ë;\Êk!*dsrCý·”[\nŒ§5-\Ç\ÃÃµ \çù^£»Ö¯Tn\ã\ÍAc\ÐX\ë\Ó\04\ZÁNS.¦\Îf-\ð–\Ø(mZt\÷›ýz\ÕÀ\ç\ô×·\ð]_}¼¥Mo?™\rs ´\éo\áý^»\×7\õkP\Úllá›•n\ßk\Zx\rŠ(I¦[\èŠß¨«Ý®!F/[\ám\ß6kKx†*\ç¢+•OdQ¬\Å\è\ãC\0h\ç\"IG.fx‚F€%‡œ8»$Œ \ðf(a†+µÊ°R‡ÿ\ê\ã\é–\ö(:QN:\Z‰­!\Å\Ç#Nf²\ã^­n\ò\êÅ‹—ž¿|\ôû\ËÇ_>úu¹\ö¶\Üe”„y¹7?}\ó\Ï\Ó/¿û\ñÍ“o\íx‘Ç¿þ\å«\×üù_\ê¥A\ë»g¯Ÿ?{\õý\×ýü\Ä\ïrt˜‡\ç:>vn±6hY\0\ò\÷“8ˆ\ÉKt“P )z #}}(²\àzØ´\ã\é\Â¼4¿gÞø\\\ðZÀ=\Æhqëž®©µ\òV˜\'¡}q>\Ï\ãn!td[;\Ø\ð\ò`>ƒ¸\'6•A„\rš7)¸…8Á\ÒQslŠ±E\ì.!†]\÷Èˆ3Á&Ò¹Kœ\"V“C#š2¡\Ë$¿,lÁß†m\ö\î8=Fm\êûø\ÈD\Â\Ù@Ô¦SÃŒ—\Ð\\¢\Ø\Ê\Å4\ÜE2²‘\Ü_\ð‘ap!Á\Ó!¦\ÌŒ±6™|aÐ½i\Æ\î\ö=ºˆM$—djC\î\"\Æ\ò\È>›ŠgV\Î$‰\ò\Ø+b\n!Šœ›LZI0\ó„¨>ø%…\î¾C°\áî·Ÿ\íÛ†\ì¢f\æ\Üv$03\Ï\ã‚N¶)\ï\ò\ØH±]N¬\ÑÑ›‡Fh\ïbL\Ñ1\Zc\ìÜ¾bÃ³™a\óŒ\ô\Õ²\Êel³\ÍUdÆª\ê\'X@­¤Š‹c‰0Bv‡¬€\Ï\Þb#\ñ,P#^¤ùú\Ô™\\u±5^\éhj¤R\ÂÕ¡µ“¸!bc…ZoF\È+\Õ\öx]p\Ã\ïr\Æ@\æ\Þ\È\à\÷–\ÄþÎ¶9@\ÔX ˜U†-Ý‚ˆ\áþLD\'-6·\ÊM\ÌC›¹¡¼Q\ô\Ä$yk´Qûø¯\ö\n\ã\ÕO-\ØÓ©w\ìÀ“T:E\Éd³¾)\ÂmV5\ãc\ò\é5}4Onb¸G,Ð³šæ¬¦ù\ß\×4E\çù¬’9«d\Î*»\ÈG¨d²\âE?Z=\è\ÑZ\âÂ§>B\é¾\\P¼+t\Ù#\àì‡0¨;ZhýiAs¹œ9\Òm‡3ù‘\Ñ~„f°LU¯Š¥\êP83& p\Ò\ÃV\Ýj‚\Î\ã=6NG«\Õ\ÕsM@2‡\Âk5ešLG\Í\ì\ÞZ½\î…úAëŠ€’}¹\ÅLu‰\æj\ð-$\ô\ÎN…E\ÛÂ¢¥\Ô²\Ð_K¯À\å\ä \õH\Ü\÷RFn\Òc\å§T~\å\ÝS\÷t‘1\Ím\×,\Ûk+®§\ãiƒD.\ÜL¹0Œ\à\ò\Ø>e_·3—\Z\ô”)¶i4[\Ã\×*‰l\äš˜=\ç\Î\\\Ý5#4\ë¸ø\É\Íxú„\ÊTˆ†I\ÇÉ¥¡?$³Ì¸}$¢¦§\Òý\ÇDb\îPC¬\ç\Ý@“Œ[µ\ÖT{üDÉµ+Ÿž\å\ôW\Þ\Éx2Á#Y0’ua.Ub=!Xu\ØH\ïG\ãc\ç\Îù-†\ò›UeÀ1rm\Í1\á¹\àÎ¬¸‘®–G\Ñxß’QDgZ\Þ(ùdž\Âu{M\'·\ÍtsWf¹™\ÃP9\éÄ·\îÛ…\ÔD.i\\ \êÖ´çw\É\çXey\ß`•¦\î\Í\\\×^åº¢[\â\äBŽZ¶˜AM1¶P\ËFMj§X\ä–[‡f\ÑqÚ·ÁfÔªbUW\ê\ÞÖ‹mvx\"¿\Õ\êœJ¡©Â¯Ž‚\Õ+\É4\è\ÑUv¹/9\'\÷A\Å\ïzA\ÍJ•–?(yu¯Rjù\Ýz©\ëû\õ\êÀ¯Vú½\ÚC0ŠŒâªŸ®=„ût±|o¯Ç·\Þ\ÝÇ«RûÜˆ\Åe¦\ë\à²\Ö\ïî«µ\âw\÷\Ë<hÔ†\íz»\×(µ\ë\Ýa\É\ë\÷Z¥v\Ð\è•ú \Ù\ö¿\Õ>t#\r\öº\õÀkZ¥F5J^£¢\è·Ú¥¦W«u½f·5\ðº—¶†¯¾W\æÕ¼vþ\0\0ÿÿ\0PK\0\0\0\0\0!\0¨\ô\0\0\Ì\0\0\0\0\0word/settings.xml´V\Ûn\Û8}_`ÿÁ\Ð\ó:²\äK\\¡N‘(\ñ&E\ÜuûL‰”E„7”·\Ø\ß!%ZN\ÓI‹¼\Ø\ä\\\Î‡‡3zûî³Á–hC¥XD\É\É(\ZQJL\Åfýs·Î£±H`Ä¤ ‹hOL\ô\î\ì\Ï?\Þ\î2C¬33\0a2^.¢\ÚZ•Å±)kÂ‘9‘ŠPVRsda«71Gú¾Q\ÃRr…,-(£v§£\Ñ,\ê`\ä\"j´\È:ˆ!§¥–FVÖ¹d²ªhIº¿à¡Ÿ·u¹”eÃ‰°>b¬	ƒ¤05U& \ñ_Ee@¶?;Ä–³`·KF\Ï8\îNj|\ðxNz\ÎAiYc\à‚8	R\Ñž<:\Ä>\Ø\Ý=¸\'#¿:\Î|ú2€\ô	À¬$/Ã˜w1x\ãPü2œ\Ù‡\ö…Mf¿–\Ì€Á\×/BIC]c\ç‹,ª‘9°\È!’—%5=À\íy_#ÃžÃšVuKtû&;\Ê\ð2»\Ù©QÁ  \Î\0n\à³s¿PD\÷\ç—\äÁ\Ë]¢3\è_¤\äƒ]¦ˆ.\á¡@ƒ¢\Ø)€ž²Z[d\"3Š0\æ;N\É‚ˆ»l£‡^$\Þ“\n5\ÌÞ¡bm¥£-‚ƒ¦dY#JK\ôZ¡\Ðr)¬–,\ØaùA\ÚúŽ†g\Ñyø.Ô¯\ÖmG8\õQ—ZIL\\f¦Ï¿\ç\à£\'\Ó\ã\ß’Ð5\Å\äÎ•xm\÷Œ,!ù5ýB\Î~\ßK\Ñ\÷ª\ß\È\àg	\á\"R\Ü\íYd(\Ó+\ó7±dT­¨\ÖR\ß\Üxµ`´ªˆ†\0¸¶úP-w¾\Î\×a|¯·1\ä_0†79¾Z\Þ_Hk%¿Þ«\Zjý{7\éù\Ó\Æ76a\ñYJ{0\å\éhr:n3u\Ú^s±LO\ó\ó\ïi~\ìsµ\Çy¿‹\Ê37ú>\é°r\Ô\ð\Ö#G¼\Ð\rVn8\ÆÎ¢\Ð\÷T}A ‘cÍº)‚r8l†#Æ–PÄ \ð\à¦F]’Ê¯\Ù\n\éM\ÛY\è\ïJ¡¼?`¹¾D\ô\ßZ6ª\Õ\î4R-%ƒI2™tžT\Ø[Êƒ\Ü4\Å:x	\è™GªF\à[\í\ëÔ—g—Y¸bÿ´o‘§Š·%bx\ó¡£\ÓkG²BJµl*6\É\"btS\Û\ÄÀ\Â\Ã7”\ß›´Ó¥^—¶:¿A¥;Xw‹^–Ù‘\Ý8\ÈÆ½ld“^6\r²i/›\Ù\Ì\Éj\è\Zšù=;,¼’Œ\ÉÁ×½þ‰¨-‚©‘\"—m¯z\ÉV\Ð53\Øf\ä&	Á\ÔÂ§©¢˜£7XÒ™s\ï¬\Ú\Ë\Æ>²u:g¬#¸¡\Û=\åø‘³§ø7¹¸TR \ãzÏ‹~´œ´‰3j \r(˜BV\ê û\Ëë’©OÖ·¸\ØÏ¤º@†\àN‡ey\ã†\è´\õù:>]Î§\É|<œO§ùp2¾Ê‡“\É|ø&¹:Ÿ¾\É\'\óü<ÿ¯{…\á3ü\ì\0\0\0ÿÿ\0PK\0\0\0\0\0!\0g7¼\Ô\Ø\0\0L-\0\0\0\0\0word/numbering.xml\ìš\Ûn\ã6†\ï\ô½Lt´$›,¯SlQ,\nlŠ^\ÓI’ì¤—û2û}¬}…)Q¶cG\Ð	¨\n\è&Š9ä§™Ÿ§™\Ä>¾h²\Ã<	½™\Z\×út‚©Ï‚>\ÝLÿ||¸\ò¦“$E4@£øfúŠ“\é\ÇÛŸú°_ÐŒ¬1‡Ž`\Ðd±ý›\é6Mã…¦%þ”\\“\Ð\ç,a›\ô\ÚgDc›M\ècm\Ïx ™º¡\Ë\ßb\Î|œ$ÀY\"ºCÉ´Àù/\õhG{,€¶\æoO\ñËa4†Ì´¹æƒ\Ì ˆ\Ð4\ÎQVc”£	¯\Î@v+xuFšµ#]\ÎiG2\ÏIn;’uN\òÚ‘Î–9_\à,\ÆŒ\Æ	J\á#\Ò\â\ÏY|\à¥\á:Œ\Â\ô˜º£0(¤\Ï-<‚Q%XAc‚«\à\È\n…\ÝL3N\Åø«r¼p}‘/\å\Õ{-¼n®\á—4JR5–\×\Ñ.þ‰ùÁ4•ªiG #£\É6Œ\ËÓ´¥q« »*v$Rý\ö±Qs«½w´}Ê§\á\0¬\ã~1w$\Ê=¯&\Zz\ÙˆrDNß©<!°‚/n%Í‘¸F\Í\ÃG\Ì3€\ããš—…bxC\ó»[pÂš\ÛJq\òYœ\ð ¬Q\ó|\ë\Ì \È\Z!LKù!bø+	\Ò`\Û§\æHcQŠ¶()7 \âf\ÎJ\Ü+9\Ò;~ê¶©~\å,‹´°\í\ó\áxÝ‹L§«Øœ\ÇF\ÒÍ™¯[Ã©Kü\Å\ç\'\Ê8ZG\àlµ	ì–‰œ\ñx\È_\ñ‹ls=\ç\Õ\ôR4´NRŽü\ôKF&\'Ÿ>\Ã:‡ThŽ!¿\ã¢1\Ï\æ\î6)\æ\÷£g\ÑEPh\"Þ³\Ø!8üMg¶2Wž7Õ„…dQ\ZþŽw8z|±\ê#[#Ñš\÷JI)Û½µ\\\Í\î]3·D;a\á¡\Þ%}Q¼$š¤l\\gQ„\Órü#\Ü2\Ê\ô\ã\Û?eûo¾j\ð¦\èÿÁ¥? D\ñT}\à \Æ\"f0o®©‹\îÚ¡cHEü‚“[\á\Ã\Ñ\'™#[Ž\ê]\Ðy\ñx`4M„\ê‰\Â\ÒüúJ\Ö,’C\ï@Ð“†8À\Â\åž&—‚+¼\äj2¶·\Ò‚’\Â\÷\ä‹Ï¥d=i\Øv•’\Ò\ÜF\Ê%\Ëxˆù\ä\Þ\éù¶µ«¨fÿ¢þø\ö½YM£\Ôé’¬\Ò\ÜFÖ¿ ·¨û’#QOÛºJj\rVRÏ«”T˜‡)©=TIA¢*I¥y˜’Î†*©mU\ÞL\Ò<LI¡J:\Ó+¯(i¦¤\î`%u+¯\'i¦¤\ÞP%u\ì\Ê\ëIš‡\"©vRgˆ•EˆH]!–¹´\ô\Õ\Ò\Í=j^„\Æüni¯¤ÿ§K`,B\Æ\"d,Bj\È:!cRJ:!c2!c2!c\ò,BD–Õ¸q—–gyú}\îQ\ó\"dnÝ­V–Sü\'\åx	\Ô-B\ì‡\è7sþ‹q\ÝÃœwªB.¯\ï±,øË‚\Êc\õ±b:\Ö—\Ãm›²W†k\÷n·œýr¸m\Ó\é\Êpg}„\Û1Ÿ¾n\ÛT·2\\§p;\æºý¦¡•\áº}„\Û1\í7E¬\×\ë%\Ün9b¿\é[e¸\ó>\Âí˜¿½ŸZQ™RÑ£¿\çŠ/¦,‚L~mE4z \åÜ³Ý¹\ã$ùRžªw\ÑL™ž½e\Zºa\ë\Ö\Ü\ñf\ïC¥\Ò\ï@Åru\×p=\Ó1\ßg\Êo®(fþÌ³\Å\Û\0\0ÿÿ\0PK\0\0\0\0\0!\0®\å\ð/\r\0\00\0\0\0\0\0word/styles.xml\ìKs\Û8\Ç\ï[µß¥\Ó\îÁ‘ä‡œq3\å8\ñ\Ú5¶ã‰œ\Íq\"!c’Ð”û\é\0A	TD\\³UsI,’ý#ˆ\î\Í\çÏ¿¼$q\ðD³œ\ñ\ôt0~7\Z4\ry\ÄÒ‡\ÓÁ·û‹½\÷ƒ /H\Z‘˜§\ôt\ðJ\óÁ/þþ·ŸŸO\ò\â5¦y \0i~’„§ƒEQ,O†\Ã<\\Ð„\ä\ïø’¦b\åœg	)\Ä\Ï\ìa˜\ìqµ\Üy²$›±˜¯\Ãý\Ñh2Ð˜¬…\Ï\ç,¤Ÿx¸JhZ(ûaFcA\äi¾`Ë¼¢=w¡=\ó,Zf<¤y.:‰K^BXºÆŒ(aa\Æs>/Þ‰ƒ\Ñ-R(a>©¿’x8\Â\ö`\Ò\ã½f…¥\ÉaŽ3YsXdp\Ü\Zc\0\ò¨ˆ(\Ê~Õ¯CiK\n² ù\Â$R\\£ŽÖ¸\×D\öQž\\=¤<#³X„\×\á¸@\å¿\âø\å\êOú¢–\ËC|Zˆxø‰\Î\É*.rù3»\Ë\ôOýKýwÁ\Ó\"žOH2v/\Z(\ö’0±\ÃË³4g±†’¼8\Ëi\\¹4®	\ó\ÂXü‘El0”{|¤Y*V?‘øt°_.\Êÿ»^°^r.U[“\ô¡ZFÓ½«[³qjÑ·©\\4»:loz¦Ç‡\'1{ \Å*‰AþR„2dÑ¹8~úR¬H,7\êŽ)ÿ7ºk¹ýKµrIB¦\ZE\æib<\É\ÄLf¥ý£Ÿª_W\ÒydUp½(ÿ_c‡Àc\"{ˆ\\2-SšXK\ç\×<|¤Ñ´+Nj_bá·«»Œ\ñL¤­\ÓÁOjŸb\á”&\ì’EM\r\Ó‹\è\÷M¿\å4\Ú,ÿ\íB¥½ \ä«Tü}p<QQ\ç\Ñç—.e\"kS\"}z+\rb¹\õŠmv®\Ìÿ¨`c\í¶&û%2›\ãm„j>\n±/-r\ãh›™«­cW[¡vt\ðV;:|«½ÕŽ&oµ£\ã·\Ú\Ñû·Ú‘\Âü\È±4‡\Ú\îPwq,jDs,bCs,ZBs,RAs,J@s,Ž\æX\âÍ±„)‚S\ð\Ð…F°X¢½»{Œp\ã\îÜ¸»G\07\î\î„\ï\ÆÝ\ßÝ¸»Ó¹ww\öv\ã\îN\Öxn9\Õ\n®„\ÌÒ¢·\Ê\æœ)/h \'½½i$,U\âú\á\ÉAf^\Ò¦\Ìlz \îM‰ú½;B”H\Ý\Ç\óBVŠŸs\ö Kž\Þ\r§\éù’$Š\Ï#0£¢(³\ôˆKLgtN3š†\Ôg`ûƒ\ÊJ0HW\É\ÌCl.Éƒ7M#\Ï\ÝW½$…u@‹úy!E\Â<uBÂŒ\÷o\Z\'\Þ\ò\Ã5\Ëû\÷•„WqL=±ný„˜b\õ¯\r¦i 0ý+…\é_>\ó\ÕEšæ©§4\ÍS‡iš§~+\ã\ÓW¿iš§~\Ó4Oý¦iýû\íž±J\ñ\æ¬c\Üý\Ü\Ýy\Ì\åE‰\Þí˜²‡T•\íM\Ò\çLƒ;’‘‡Œ,<«ÝŒ5»Ÿ<z\r\î}Œik’¯y½\ny.›¥«þZ£ù×š\çI^kž\'­yý%v#¦\Ér‚vé§ž™®fE£h©“h§$^•\Úþj#Eÿ\Û\à‚e¹74c=D\ð­œ\ÎJwú\È|›V\öoØ†\Õ_V\ÛY\Ék\ó4\ÒC+c>úIÃ—¯Kš‰²\ì±7\é‚\Ç1¦‘?\â´\Èxk¦\ä\÷•K:Iþs²\\œ©Z©†\è>\ÔW·37d\Ùû€\îb\ÂR?~û¼—þf—\÷7\×Á=_\Ê2SvŒ\àG^<\ñ\Æ\Ôgÿ\ñ\Îþé§g¢N_=í™§\ÓC\nv\Î<2%‰GžHbš\ÉR\æeU¼_\éëŒ“,\òC»\ËhyQA=§$Y–“\Úy\ñY\ä³!\Åû7É˜</\äKT\÷^`\Æi\Ã|5û†ýS\Ý-¼œú²*\ÔùG5\ÕU\Öþpý§	5\\ÿ)‚\ò¦düz8\Ø\Z®ÿÁ\Öp¾\ö<&yÎ¬—Py¾·\âù>\ÞþÅŸ\æ\ñ˜g\óU\ì¯+ ·¬€ÞºÇ«$\Í}±\ây<`\Å\ó}¼CF\ñ<œ’S¼e,\ò\æ\ó\å	\ó\å\ó\å\ó\ê€þw\è°þ·\é°þ\÷\ê”0OS\0\æ+Î¼ÿž®\ò0_q¦`¾\âLÁ|Å™‚ùŠ³ƒO\Ï\Å$\Ø\ßc }Åœ\ô7Ð¤M–<#Ù«\'\ä\ç˜>\'HK\Ú]\Æ\ç\ò\Ñž–7q{@\ÊsÔ±\Ç\Év‰\ó\å\ä\ït\æ­i’\å³]Îˆ’8\æ\ÜÓ¹µÍ€£,\ë\÷®\í2SO‚\ôn\Â]LBº\àqD3\Ë1\ÙmE½<-\Ë\Øn¾jF§Óž\×\ìaQ\Ó\Åúl¿‰™ŒvZV{\Íl\÷›ú|R=ü\ÒdvC#¶Jª†Â‡)&ÝUD×Œwof5Ë£Ž–pŸ“Ý–›Yr\Í\ò¸£%\Ü\çûŽ–J§5\Ë6=|\"\Ùcc ·\ÅÏºÆ³\ßq[­w\ÛHkË¦<n‹¢šT‚³0”W wºi\Æn\ßM<v{ŒŠ\ìŒœ\ì”Îº²#\Ú\ö•>19²c’¦\Ú\ßú\î	\÷\Õ$ºS\æüm\Å\Ë\ó\öµN\Ý\êº§4§A#\ç û…«Z–±\÷c\çtcGt\Î;vD\çdGt\ÊDVsTJ²S:\ç&;¢s’²#\Ð\Ù\nŽ¸l\íq\Ù\nÚ»d+Hq\ÉV=fvD\ç\é€*D …\Úc¦`G „\nÌ„\n)h¡BZ¨*œ€\á„\n\íqB…\ö.B…¡B\nZ¨*D …\nh¡BZ¨Žs{«¹“P!-Tˆ@\"\ÐBU\ó\ÅB…\ö8¡B{¡BŠ‹P!-Tˆ@\"\ÐB…´P!-Tˆ@	˜;	R\ÐB…´P!-\Ô\òQCw¡B{œP¡½‹P!\ÅE¨‚*D …\nh¡BZ¨*D „\nÌ„\n)h¡BZ¨ªºX\ØC¨\Ð\'Th\ï\"THq*¤ …\nh¡BZ¨*D …\n(¡s\'¡B\nZ¨*D´Å§¾Di»\Í~Œ?\ëi½c¿û¥+Ý¨¯\æ£\Ü&\ê ;ªj•\ÕýY„œ?¨z£„\Íb\Æ\Õ)j\Ëeu“«n‰@]øür\Þþ„I\ïù\Ò%ý,„ºf\n\à‡]-Á9•Ã¶7-A‘w\Ø\é¦%˜u¶e_\Óƒ‡mIWé²º)EGÀ¸-\Í\Æc‹y[¶6\Ìa·\åh\Ã\öp[f6a·\åc\Ã\ð(\Éy\Ûú¨c?M\Ö\÷—B[8\Z„c;¡-,¡¯ªt…\Ñ\ÕivBW\ï\Ù	]\Ýh\' üi\Å\àkG¡=lG¹¹\Z\Ê\ëjw¡\Ú	XWC‚“«\Æ\Ý\Õ\å\ìjˆrs5LŒXWC\Ö\Õ\î\É\ÙNpr5À¸»\Z¢œ]\rQn®†C\ÖÕ€u5$`]\Ýs@¶b\Ü]\rQÎ®†(7W\Ã\É\ÖÕ€u5$`]\r	N®wWC”³«!\Ê\ÍÕ JF»\Z°®†¬«!Á\É\Õ\0\ã\îjˆrv5Dµ¹ZE©¹\Z\åa\Ã7	3q²aˆKÎ†¡CµdX;VKÁ±Z‚¾ª|Ž«–L§\Ù	]½g\'tu£€\ò§ƒw¬…\ö°\å\æj\\µ\Ô\äjw¡\Ú	XW\ãª%««q\ÕR««q\ÕR««qÕ’\ÝÕ¸j©\ÉÕ¸j©\É\Õ\î\É\ÙNpr5®Zju5®Zju5®Z²»\ZW-5¹\ZW-5¹\ZW-5¹º\ç€lÅ¸»\ZW-µº\ZW-\Ù]«–š\\«–š\\«–š\\«–¬®\ÆUK­®\ÆUK­®\ÆUKvWãª¥&Wãª¥&Wãª¥&W\ãª%««q\ÕR««q\ÕR««q\ÕÒ0a^5MHVþ\ÞwI\òEAú¿œ\ð[šÑœ\ÇO4\nü\ê5\ê(‡Ïµ\Ï_I¶ú¶ŸØ¾}&ß€n<®•o€\Õ@µ\áU´þL•4–-	\ô\×\Ã\ôb\Õ`}¹¶Ü£2Ü±«5\\_+\ÞøÍ—©\ÔfD\Õ\Ù`\ç\Ò\ñ\Õ\ò\nw¾ Y¹v’\Õ6Zt›6?Ÿd9‹ªÕ£\Ñùþè°ºi|¤l&_&g<RR•?\ÏV×›\èÞ«¾eVn¥~Á\ô\'\Î\×\ß;«\â\ìù„—otº~Š«\ÖUn\Õ\íjü\0\Ý\é\àž%4n\és\ð•\'D\Å\Þ\æo\r+\Õ\è\Z×„9\\\\:¤ü\÷<Wÿ›ß£\Ó\Ùh\ó=º¬\Í\ï\ÑU\Ë\ô\÷\èj_ »ºU\ëš?9—\ò”\ê>¨>2g	¸P\Ä\0	\õ\Ë\Ò,±­_z¼~jO½\òx;-oF¶„—\Ö\ðF \åv5y¶\n¥¶¥\Í*·Š²L\Ò\Öø\×\Ø\ÕBÑžY\\Æ—ø\ã*•\ny\Öß§+[\Z½%ÖŸ\Ó8¾!\å\Ö|i\ß4¦\ó¢\\;©wdl­Ÿ•¯{´\Úgj^`\ë)¶\ÇIù}ÃŠ5\ÊÁ¯¡»\Õ\ÝS}{ºc‡«\\tJ\å\Û\í«\å½\íV\ê•b2´I‹[ù´Q¥¿\Z²\ëŽ\ÌjÏ¦¥+\ìøX\nú;Ù¤^¾È´É§\æ\Ù\'ü9\Ç?\Ã\Ø\ZFûú–®\ÚWX«Û¼\Þ(ŒZ2Æœü7¥´jù®ˆú+*þŸ¢¢\ë8\ò;Ÿ\í‰*\ö\ä\ô\ÄF}mS„\Ø\Ç[¼tl\óf¤[\×zÛ­Û¬Áµ\ì\Ç\äF¡,“7[ŒFz¯\ÕBùr²\ö\ÜÑ‚08M\Ü^ÿ¦®li7A¾\ä9h¯\\þ¹\ÂwC«¿\òÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0j¥þ˜\0\0•\0\0\0\0\0word/webSettings.xml\ì™\Ûn›0€\ï\'\í\÷\r¶ƒ\rDM*e]§I\ÓTm\Ý8\àk6F¶š>ýlr(M7©´j³)˜\ßü_\ì\ÏHr~q\'E°f\ÚpUMC8aÀª\\¼ZM\Ã_7WgiK«‚\nU±i¸a&¼˜}üp\ÞL\Z¶øÉ¬uWšÀQ*3‘ù4,­­\'Qd\ò’IjFªf•«\\*-©u§zIª\ß\Ög¹’5µ|Á·›@\ÂF?‡¢–Kž³K•\ßJV\Ù6?\ÒL8¢ªL\Ék³§5Ï¡5JµV93\Æ\õGŠ-OR^00~’<\×Ê¨¥¹\Î\ìZÔ¢\\:mIŠ\0\î@O\0$gwý\éŽ¹\Ì.‡ý8\äÀ\áE‡\ó²\Æt\0¦°EÙ‹‚\ö^#ŸK--©)»DÖ¯Qø€\ÛH\ïHæ“¯«JiºŽ\äF=p´`ÿ\îú\ïm‘Ýµqß…p\æDÁ\×fwš‰Wa\nR·,T±¹l+\×T¸\Ú0\òQ·¾±¥\ÝGÁ!úƒ¯Ê¿„oTý48W\Ö*yw\r™Ú—\ìCN\å\Öq\èNÌ½¿\Îjš³]9WB¹\åGo­\Ú\"D§eý2Z\Ô/Ww{\Þ\'5\êvÚÇ§’‹\â\ñ d`„H’´c2\Øû\Û\â\Ñjˆ‰\Û	B\é[™\ñÿ\ç\Þ\ßP\Ä!›t²!\î¤¾\ò¯·€q q¼Ý†™ÿn3?$\Å0ƒ\èµ\â!ÀÿP¨\ä\ÉG`LbBpFû\ïo?CNa\ãAþ	\ö\äv$\Ã\Ì?|¿\å$$¯~\Ú\ä\÷—y’a7ÿû\'°I–@œŽû§°\÷$¯\Î\ì¿À~šAœ$ˆsÿ$\ö\Ûz\Æhx\Þ|/û\Û\ãþ‡¶£¨ÿ0U[.ù=»Rz®Uc˜n\Û@…P\Í\õ\÷/[j\çÏ„\Ù\0\0\0ÿÿ\0PK\0\0\0\0\0!\0™o¸i\0\0z\n\0\0\0\0\0word/fontTable.xmlÜ•ÛŠ\Û0†\ï}£ûqŽl²\Ðt…RJ»¥×Š,Ç¢–d$%NÞ¾#\ÙIœ{­Mbi¤ù<úg&y|:\ð\Ü\ÛS¥™\äQAd\Â\Äv~¼¬¦\È\Ó‹\çR\Ð:Rž–\ï\ß=–\óT\n£=\ðz\Î\Ée\Æs\ß\×$£\ë,¨€\ÅT*Ž\rL\Õ\Ö\çXý\ÚD\ò¶a93G?\n‚1ª1ªE¦)#\ô£$;N…qþ¾¢9¥\Ð+\ô‰Vv¡•R%…’„j\rg\æy\Åã˜‰3&Œ[ Îˆ’Z¦f\0‡©#r(p7\âù0\êˆZ€1¡‡~Œi\Í\ðÁ³\ÉaI?\Îø\ÌaIƒ\óº`\Z\0˜$\ëE‰Nºú\Öœa5‰´_P£3\îÈ­Fœ\Ì?m…Tx“	²\îA\â<¶\ßp~ûpCzpv{´¬[Á+\çs\ðü~\ä™;{…\Ô4„¥=\Î(Á¶D&Áž£`‚|»‘dXij\ÕÆ¨2§˜³üx²*É±¨\nfHv²\ï±b6\èjI³-,\ì\ô&\0N}¡\ÊB‡_[¢Öžáµ…8\Î\ô\Ú6\öÀ;ýJ€–/ŒS\í}¡¥\÷\ÍE~K›\Öq0%bøD0Šo+\â\Þ\ô\÷Š<C\Ì\Ñ\óz}Qd–\Ét\ô¡¥\È\ìOŠ¸iXqº+²’;Å¨²š\ÜQc\nÌœ*V¸—\Z\\&TÝ’#ešt\×\"¾…?\á\ç\Öþ\Í\è;Òºzt\n\Þù5\Ê\n\çl£Ø’X»R°w\Å\õ*	]2­û5H|«(¢x\ò&\r\òUUIt:\à«2\rYš\\\Î×Œ½{¦«ùÌµJ\ïL{Ÿ\Ù63w\óm³üŸ\æ»\è\åo\0\0\0ÿÿ\0PK\0\0\0\0\0!\0\ö\ã‰gm\0\0\ã\0\0\0docProps/core.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Œ’_Oƒ0\Å\ßMü¤\ï\Ð\ó–¨Ù“KLœ\ÑøVÛ»­J\ÓvC¾½“¸\ß\î\í9\÷\Ç\å´\éü»,¼h#*™¡0 \È\É*.\ä&C¯«…‹<c©ä´¨$d¨ƒ\æù\åE\ÊT\Â*\rÏºR ­\0\ã9’4	S\ÚZ«Œ\r\ÛBIM\àÒ‰\ëJ—ÔºVo°¢lG7€#B®q	–rj)n¾\Z‰\èˆ\älDª½.:\0g\n(AZƒ\Ã \Ä\'¯]š³\ò\ËY\n\Û(8k\Ä\Ñým\Äh¬\ë:¨\ã\Î\ê\ö\ñû\ò\é¥ûU_\È6+(O9K¬°\ä)>•®2û\Ï/`¶?W3\r\ÔV:_\î\å\êNŽÚ°w\ÐÔ•\æ\Æ\rN:g\ã`˜Êº+ì±“\ç.¨±Kw§kü¾¿\ðWi\Í\Z¢}\ry\Ø9\Æ6=F\Ûo\Üs‘$}€ƒ\ò?<®(Hûd\æG7+r•\Äw	!\íb“ù°<.\ðo\âŒL‰ \Ïfú,\ó\0\0\0ÿÿ\0PK\0\0\0\0\0!\0nu\0\0\É\0\0\0docProps/app.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0œRMO\Ã0½#\ñªÞ·tª\ò‚\Ð\âÀÇ¤upŽR·H“(	\Ó\ö\ïq(”\"n\Ü\ìgûù=\'p}\ìuv@”5\ë|1/\ò´µ2\í:\ßWw³\Ë<Q˜ZhkpŸ0\ä\×üü¶\Þ:\ôQaÈˆÂ„u\Þ\Å\è®²\Ã^„9•\rU\Z\ë{)\õ-³M£$\ÞZùÞ£‰lY%\ÃcDSc=s#a>0^\âIk+“¾\ðR\ñq¨°wZD\äOiR¨lºR=\òÁc[\Ñb\àK`C\0¯\Ö×_”+`C›Nx!#/\Ë\Â\'\0\Ü8§•‘\î\Ê•\ô6\Ø&fÏŸb³D\0l\Úd`‡\òÝ«x\â°i\n\Ê$)¤eˆH›­®¼L\ÇvRhÜw\Þ\Ø\0\Û;aˆñ½…½«\ìmº\Å\×\Èopb\óU\Ån\ç„$	«EQL\rOJ°#kr0j¸§\ñ:- Y\Óbý\Ý\ó·Nø2üL¾(\çE‘6N02>~þ\0\0ÿÿ\0PK-\0\0\0\0\0\0!\02‘oWf\0\0¥\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0‘\Z·\ï\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ÿ\0\0_rels/.relsPK-\0\0\0\0\0\0!\0W™¼z\0\0$\×\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿\0\0word/document.xmlPK-\0\0\0\0\0\0!\0\ô\ìCV\0\0‹\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0¶\ôg˜\Ò\0\0\É \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0µ\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0¨\ô\0\0\Ì\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0º\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0g7¼\Ô\Ø\0\0L-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0®\å\ð/\r\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\'\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0j¥þ˜\0\0•\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e4\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0™o¸i\0\0z\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0/7\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0\ö\ã‰gm\0\0\ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\È9\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0nu\0\0\É\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l<\0\0docProps/app.xmlPK\0\0\0\0\0\0\0\0?\0\0\0\0','2023-04-27 16:52:15','Pending');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspirent`
--

DROP TABLE IF EXISTS `aspirent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aspirent` (
  `aspirentid` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`aspirentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspirent`
--

LOCK TABLES `aspirent` WRITE;
/*!40000 ALTER TABLE `aspirent` DISABLE KEYS */;
INSERT INTO `aspirent` VALUES (200,'muskan',20,0,'0','muskan03292003@gmail.com',770274157,'female','muskan143'),(201,'muskan',20,0,'0','muskan03292003@gmail.com',770274157,'female','202'),(2001,'Eswar nandivada',21,1,'Codegnan','posieswar@gmail.com',25895,'Male','2001');
/*!40000 ALTER TABLE `aspirent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `item` varchar(100) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notifid` int NOT NULL,
  `adminid` int DEFAULT NULL,
  `fileupload` longblob,
  `notifname` tinytext,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `filename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`notifid`),
  KEY `adminid` (`adminid`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `admin` (`adminid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (123,101,_binary 'Eligibility:\r\nB.E/B.tech (IT , computer Science ),MSc, MCA from 2020-2023 Batch with no backlogs.\r\n\r\nMust-have Skills:\r\nCore PHP, OOPS Concept, Mysql,  JS/Jquery, Ajax\r\n\r\nDesired Skills:  \r\nReactJS or NodeJS, Python, Cloud (AWS/Azure/GCP)\r\n\r\nGood to have Skills:\r\nHands experience in Generic SQL Programming and MySQL.\r\nStrong verbal and written communications skills, with an ability to express complex business concepts in technical terms.\r\nLocal to Live deployment Server configuration (web server, database server, etc)\r\nWriting back-end code and building efficient PHP modules.\r\nDeveloping back end portals with an optimized database\r\nTroubleshooting application and code issues.\r\nUpdating and altering application features to enhance performance.\r\nStrong knowledge in web Services/Rest APIâ€™s (Development and Integration).\r\nLocation: Pune\r\n\r\nSalary: 1.8 L to 2.4 LPA.\r\n\r\nInterview Process: \r\n1.Technical Aptitude\r\n2.Technical Face to Face\r\n3.HR Round.\r\n\r\nCandidate should have in-depth knowledge of object-oriented PHP programming, understanding of MVC designs, and working knowledge of front-end technologies including HTML5, JavaScript, and CSS3\r\n\r\nPlease Note: It\'s work from Office. ','Eligibility','2023-04-07','2023-07-27','Eligibility.txt'),(235,123,_binary 'Hostel Management System\r\nPatient Management System\r\nOnline Examination System\r\nLibrary Management System\r\nFood Delivery application using Python\r\nCustom Messenger Application\r\nNews aggregator\r\nCalorie Counter Application\r\nImplementation Of Result Management System\r\nFeedback Information system\r\nBuilding a Fully Functional E Commerce Web Application using python\r\nOnline Employee Recruitment System\r\nImplementation of Live Weather Forecast Application using Python\r\nImplementation of Task Management System\r\n\r\n\r\nOnline Examination System\r\nEcommerce\r\nCalorie Counter Application\r\nFood Delivery\r\nFeedback Information system\r\nNews aggregator\r\nLibrary Management\r\nResult Management System\r\nMessenger\r\nOnline Employee recruitment system\r\nPMS\r\n\r\n\r\nHMS\r\nLive weather forecast\r\nTask Management System\r\nImplementation of Live Weather Forecast Application using Python\r\n\r\n','Flask Developer','2023-03-03','2023-03-03','laloyala.txt');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ordid` bigint NOT NULL AUTO_INCREMENT,
  `mobile_no` bigint DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`ordid`),
  KEY `mobile_no` (`mobile_no`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`mobile_no`) REFERENCES `signup` (`number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (5,1234567890,'Chicken Fried Biryani',330,1,'2023-01-24');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `name` varchar(100) DEFAULT NULL,
  `number` bigint NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('vasima',1234567890,'Female','vasima@123','vasimapatan@gmail.com'),('anusha',6304061929,'Female','Anusha@1999','anushabaditha1999@gmail.com'),('swapna',8500438820,'Female','Anusha@11','nandamswapna@gmail.com'),('Nandivada POSI ESWAR',9177806313,'Male','Eswar@2001','posieswarnandivada@gmail.com');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27 17:53:04
