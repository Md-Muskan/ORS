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
INSERT INTO `applicants` VALUES (2001,235,'laloyala.txt',_binary 'Hostel Management System\r\nPatient Management System\r\nOnline Examination System\r\nLibrary Management System\r\nFood Delivery application using Python\r\nCustom Messenger Application\r\nNews aggregator\r\nCalorie Counter Application\r\nImplementation Of Result Management System\r\nFeedback Information system\r\nBuilding a Fully Functional E Commerce Web Application using python\r\nOnline Employee Recruitment System\r\nImplementation of Live Weather Forecast Application using Python\r\nImplementation of Task Management System\r\n\r\n\r\nOnline Examination System\r\nEcommerce\r\nCalorie Counter Application\r\nFood Delivery\r\nFeedback Information system\r\nNews aggregator\r\nLibrary Management\r\nResult Management System\r\nMessenger\r\nOnline Employee recruitment system\r\nPMS\r\n\r\n\r\nHMS\r\nLive weather forecast\r\nTask Management System\r\nImplementation of Live Weather Forecast Application using Python\r\n\r\n','2023-03-17 16:19:52','Approved'),(200,235,'data entry oper',_binary 'PK\0\0\0\0\0!\02�oWf\0\0�\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\�j\�0E\����Ѷ\�J�(�\�ɢ�eh��4ND\�B����\�81�$14\�\� \�\�{\�1�\�ښl	�w%\�=���^i7+\�\�\�-d&\�0\�A\�6�l4��L60#�Ò\�S\nO����X�\0�*��V$:\�B~�\��^\�K\����ڃ\r/P��I\�\�~7$�\�i��J&B0Z�Du�t\�OJ�K(H�\���xG\r�L�+\�v����dcӻ�\�\�W>*��\\XR�mp��\�Z}\����HwnM\�V�\�n\��\�-\�\")/\�ZwB`\��\�4�\�\�	��s\�DX�\�\�j�\�;A*ʝ���\�c�֝�\�\04\��\�[�S�\�9�> �����\�{�V\�4p��\�\�W\�&�\�\�\�A���\�|�d�?\0\0\0��\0PK\0\0\0\0\0!\0�\Z�\�\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0���j\�0@\���ѽQ\���N/c\�\�\�[IL\�\�j\���<\�\�]\�aG\�\�ӓ\�zs�Fu\��]\�\Z�U\r��	\��^\�[��x\0����1x\�p\��\�\�f�\�#I)ʃ�Y�\�\Z����\��\�*D\�\�i\")\�\�c$���qU\�\��~3��1\�\�jH[{�=E���\�~\nf?��3-��\�޲]\�Tꓸ2�j)\�,\Zl0/%��b�\n\Z\�\�\�z���ŉ�,	�	�/�|f\\Z�\�\�?6\�!Y�_\�o�]A\�\0\0��\0PK\0\0\0\0\0!\0W��z\0\0$\�\0\0\0\0\0word/document.xml\�]mo\�8�~��v\'��\�`\�E�&m\�\�n.ɡ\�OZ�-֔��(;�_��e\�\�P��$�\'�\�A�H�\�9�y83|\�/�\�E�\��I��Oj\�\�F��\�ׁ��\'��\�^l\�Xjyp�cqR��\�\��\��q��,�e@\"N��R�M�=/\�C\�t;��ѩ\�\�m_G�\�t�/��6�\�j4\�.1\�i\n\�;\�q��������\�F���rc\�ݘFsi\"{ޑw8K��!ha�9KjgiR�\�j�\�\�J��V3�\�V�4�q��Qj\�R:X�\�\�,�\�\�(͈S4+\�:1�\�hq��\�E\�\��d\'\�ʶT\��fc�$\�e\�[�FPjD!\�	��p\�E:j\'(�\�Zf\�\��֨<V�8/_\\F%�Z\�\�#O\�Y�ڲ�Y�wy\�w�8�yF(࣎\�P&#t�V�/ÒH�1\�#U\�$\�U\�!h{�wØ\�\"\�/�.Ry\��\�l,ЛHbTb�*L~��I<�\�J��\�\�\�\�Sh\�\�\�ł�EI㰠\��c\�F:rA�*\�佂t䘱\�1p�2\�\�R$Z;e=\��\�\�\�J�ˑ+�\�ò\�\�#�A�b�\�\�\r�{�N�OS�\�Fgɘ�|\Z�\�1�\�\�Y�V��\�#}ZenB�\0\�F�\�e7ֆ�\�T���0\���/\�Vܹt\�k�xU{Z[C�&lp^p}Rk4\�Z�݃�Z�te\�$��);�\�\�^��|e\�&܇jC&ޱ(6\r,\�N3��\���D\�6\�ʇ\�\�\�G�a\�\�\�,��\�W��\�u/L�Is�c�\�7R_B\�_\�$�q��\�i*�I\�VF\"e�ŀ]\�\��2<�\�\�\�~:~t_h\��\�Rw\��Ҧ�Ck�\�l=a\�2��\'��e<(Sΰ�i�;V��)\�\�\�\�]s�\�\�63Po|rc0�\�W�\�1+6ۍĦ�\�\�\�o�\�މ\�72A#\�\�<G\�\�Q�8�\��\�\�\\\�\�]\"\�\�+0V����Y�4+�U�%\���\�\�\�\�?\��R:6).\�\�^\�hq)0`B\\��\�D�*\�T�3tg�`h���!��`�Ό����\��\\�u���[�&ʯ+&cW�I0�9��\�\�f\��(��\�\n\�2a�6\�6�,�,�\�*+�����Jr\�-�«S��\�E\���\���\�{vz�*\�5C&SP\�X�\Z�\Z�\Z������-/\�>��m�{)\�\��\�K+�\0׻���qC H�6=R;R;R�\�#1NAL\�,L_\�\�\\��7\�:�H06��\"\�Q\�9�:렇ƀ�yy\�`|?�\�t6�\n��YP�uf�\�n�\�\�LT^�c5t�\�b\�5�u\�\� \�\�0�\Z�	\�7L\�B��?�a\�4Q�\�<X��\�q@�\\F3`d\�=�W\ZqV� Ҁ@\�\�\0\�\�_$\�$\�ߣd_�?3i�c�\�I�\�\�����\�3�\"UK�\�\�a\��/�\��\�&j��\�\\07��G)\�\�\�\�\n:v;LP�K�ժA�F�F�F�4j�B)\\�݋\�@��+0�\\�P\�R�\�p\���qZ�d�o3\�\�W\�-\ZI<�?��\�\�\�6\�\�ks�����\Z�:sQ8�+\�|\�.�\�m�Yf1b�\�\�s7\��;��\�B~\�\�	t ��\0V�;(@W\n\�\�\� lFg\�|�P[(=`��Nq\�OWX\�q�B��I�[�V�\�BPV\�E<WL�������;\�\�<v���\�\�\n�Q\rӫ����q\�%\�\�`` X$~���[� Γ��\�\��b�N%\Z\'��ojM�$j\���D\�x�WԔ��4i�\�/��\��S\�\�8���,\�R\�B\���H\�2\�\"�t�D(���¬�\�)���>�\r#|2 \�\0i�ϒ�<o��`\�\r!+F�\��A�\�*9	?9r\�ȑ#�6*9p\�Џ�3\�jb�^�F\��g\�Ѩ��\�{v 5v\�\���\�;{ox�a�ۊ�;8����\�- \�\�=�[\�|\�>\��k\� \�u\�3\�t\�|{N���\�\�:{{\�\�Y�eCv\�Ӕ�\�\�\��gL�2�\�3q�\r�-��\�%m(�/\��\�O����N��\\q3��%�z	~�[Mn\�\�\�TE�i\�A��D��\�\���\�Q�\�p\�ś-��\n\�\�8\�&/3�J�@$r\����\�~\�I\�a\�Vz@2�\�X��\"\�4��\�\�M�%�dX`\�\���aL;��95�t-^\�g\�\�N�(ɢ$��,\�װ(<*\�4w�:r#1-�Dw�V\�\�g܎����<.�T�/T��\�\n��yB�oѮ\�ib�\�Qg\�߱�.\�<�׺\�^\�w�,.�����\�|�\�\�\�\���jfRl�AV>�Pϊ\�:��oP\�\�u\�S�։\�\��{T-���r���=�:\�\�PGn\�Ҥ�D��\"M�\0�\�X7\�?��\�8����\���\��֥�<�\�!N�Lt2\�\�!\�0�|�-pl�M�\�h\'���\�],^D\���j\�\�E�^�\�s�\�\'\�\�\���R�\�|���k\�\�\�4\�>�\"O�<�%&=\0��d�@\�<EӡX�[�:��\�\�̰\�M�\�2�\�\�0���]ڋ\�^!��\�{��\�\�9�[��\0�_%؄P��ԋ\���)n^\�\�9\�1��jrk6�(\�;Ŀ\�f�\�Vb\�7g�9C\�A~z\�\�\�f.\'_�L�\"t�6;\�\�\�\�{V\�[\�\���i�ƌ�	Af���\�rd���E`d[f�\�\�\�\�\�m�B\����LHA�\�皺bv��$�d��\�E������xz?<\�\�s\�\�!\�\�s\�\��O2�\�2|D2��2<u�\�\�\�sӹ]$\�\�\�3���\����I�\����\��%\�\�09��Y0�0\�\�`߅q\'�S�p`�q\�\�Ķj��q��\�b�q�]\�\�\�\��\�\�FA�c*�\�׀�G�\�C<\�ks\�\�\��x�\�.�XH\�*��cX��nl0\rb4����\� ,.���>,�\0\�\\k\�\�H�I�W`L����[\�\�f6\�5/�\�\�S\�|Mf�3!��\�\�4\�r�������<\�\�,\�X�\�ݰ�Z[te\\\�$6~��PWkn\�\�C�Ç?�ί?^~���\�&\�\�\r�\�\�7EӁ6*\�\�u\�}\�\�\�\��\�\\\�d��[�]�5l}��\�i����\�\��\"\�\�7\�aX\�\�\��x>N\�\�ZT_\�RHL\\\�\"��k2�\rO\�\������\�br^B�]L�x�\�	I�ȮG\�4��-Ę\�\�\�>j�+i�\�4 \�\�)l\�\�\Z�}B\�F��2\�q�r\�\�,\�\�oq�2G,nC?s���x\�ڹ{\�U 	\�\r$�k\�\�5�eB��~I�\���\��`\�m�`ji\�\�\�0űy1�]\�b��=�\�ﳯ8�8���\"\�\�`\�=\��˵\0�l\�\�g�\��ۋ�\�\"\�\�]Ɓ\�\�\"\�ۋ\��\�\�<\�(\�\�M��\Z\�˽��^\�\�>��k5\�!T!\�\�\�t?�\�U�H\�͑\�\�nhǏmm��\�\��ɰ\�S(x��t\�p\'�t�vU<v3[H[\�\Z\�Xf�y\\r��\�F�SgĮ�\���;���W6\�ݶu0t7P$\�\r<o�\0\0��\0PK\0\0\0\0\0!\0\�\�CV\0\0�\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�V\�n\�0�\�?�Ӵ�\�m�ȹ�r\�u?`E��D\n\\:���+��\��Z�J�gw�Cbo2xDG�5�gs�\�6)L�_\�o\�ȃI��#\�\"��\��w�?�ϋ(/j\n\�P$r\�\�\�J�α�\�\Z\rI���\�\�e���\�b>_*w�!V/0��$\�>\��\�ƿ��iZh�b\��B\�ϤP9#��0��\�\�\�6M3KR\�Z4֕\�L\�JŤ働I>��$�䱘?|�	\�\�\�ɣ3P\nu�Dx5)���\�\�1��U\�\�\�\�J\�ޑ\�0Z��\"\��]w(!ϑc�U\�\�i\�\�9{��i�\�c\�ك#\��땜܁�\����\�\�xd��\�a�GFU�|[U`�\�\�}\�\�\��Sk�\Z\�\�D�C���1�0\�*F\�g\�X\�!\�WĨJ\�yů�\�u\�m>��\�\Z����\�\"���P$��V\�\�\�}�?w*\��\�nմ\�v\n\�OR��\�1\�\��)��F�\���k\�\�\�\�4@\�Ø�\Z��jN�}�\�ͤ҆�\�\Z�dN�\�\�\�z\�\�7\�*�\n�\�^϶�}\�\�\�\�\r\��~\0\0��\0PK\0\0\0\0\0!\0�\�g�\�\0\0\� \0\0\0\0\0word/theme/theme1.xml\�YK�G�\���\�z\�\�a�5\�H\�k\�6޵���Rk���i\�\�ڵ0�`�r	��C�\�B1\�\�c�I��\�I3-\�ď]�	��U?�������4s\�\���:G��[=Wq��ؘ$aǽ}0,�\\GH��e	\�,܋;�v����\�8�:n$\�\�|�,F0�\�96\�	\�M���.\�c��AoL˵J�Q�I\\\'A1��1��v�Jwg�|@\�_\"�\ZQ��TcCBc\�Ӫ�P\�!\�qa�1;>�\��\�P$$Lt܊�s\�;\�k!*dsrC���[\n��5-\�\�õ�\��^��֯Tn\�\�Ac\�X\�\�\04\Z�NS.�\�f-\�\�(mZt\���z\��\�\�׷\�]_}��Mo?�\rs��\�o\��^�\�7\�kP\�llᛕn\�k\Zx\r�(I�[\�ߨ�ݮ!F/[\�m\�6kKx�*\�+�OdQ�\�\�\�C\0h\�\"IG.fx�F�%��8�$� \�f(a�+�ʰR��\�\�\�\�(:�QN:\Z��!\�\�#Nf�\�^�n\�\�ŋ����|\��\�Ǐ_>�u�\��\�e��y�7?}\�\�\�/���\�͓o\�x�ǿ�\�\���_\�A\�g��?{\��\���\�\�rt���\�:>vn�6hY\0\�\��8�\�Kt�P�)z #}}�(�\�zش\�\�\��4�gޏ�\\\�Z�=\�h�q랮��\�V�\'�}q>\�\�n!td[;\�\�\�`>��\'6�A�\r�7)��8�\�Qsl��E\�.!�]\�Ȉ3�&ҹK�\"V��C#�2�\�$�,l�߆m\�\�8=Fm\���\�D\�\�@ԦSÌ�\�\\�\�\�\�4�\�E2��\�_\�ap!�\�!�\���6�|aнi\�\�\�=��M$�djC\�\"\�\�\�>��gV\�$�\�\�+b\n!���LZI0\�>�%�\�C�\�\�ې�\��f\�\�v$03\�\�N�)\�\�\�H�]N�\�ћ�Fh\�bL\�1\Zc\�ܾbó�a\�\�\��\�el�\�Udƪ\�\'X@����c�0Bv���\�\�b#\�,P#^���\��\\u�5^\�hj�R\�ա���!bc�ZoF\�+\�\�x]p\�\�r\�@\�\�\�\�\���\��ζ9@\�X �U�-݂�\��LD\'-6�\�M\�C����Q\�\�$yk�Q���\��\n\�\�O-\�өw\���T:E\�d��)\�mV5\�c\�\�5}4Onb�G,г�欦�\�\�4E\����9�d\�*�\�G�d�\�E?Z=\�\�Z\�§>B\�\\P�+t\�#\�쏇0�;Zh��iAs���9\�m�3��\�~�f�LU���\�P83&�p\�\�V\�j�\�\�=6NG�\�\�sM@2�\�k5e�LG\�\�\�Z�\��A늀�}�\�Lu�\�j\�-$\�\�N�E\�¢�\��\�_K��\�\� \�H\�\�RFn\�c\�T~\�\�S\�t�1\�m\�,\�k+��\�i�D.\�L�0�\�\�\�>e_�3�\Z\��)�i4[\�\�*�l\���=\�\�\\\�5#4\��\�\�x��\�T��I\�ɥ�?$�̸�}$���\��\�Db\�PC�\�\�@��[�\�T{�Dɵ+��\�\�W\�\�x2�#Y0�ua.Ub�=!Xu\�H\�G\�c\�\��-�\�Ue�1rm\�1\�\�ά����G\�xߒQDgZ\�(�d�\�u{M\'�\�tsWf��\�P9\�ķ\�ۅ\�D.i\\ \�ִ珏w\�\�Xey\�`��\�\�\\\�^庢[\�\�B�Z��AM1�P\�FMj�X\�[�f\�qڷ�fԪbUW\�\�֋mvx\"�\�\�J��¯��\�+\�4\�\�Uv�/�9\'\�A\�\�zA\�J��?(yu�Rj�\�z�\��\�\���V��\�C0��⪟�=��t�|o�Ƿ\�\�ǫR�܈\�e�\�\�\�\�\�w\�\�<hԆ\�z�\�(�\�\�a\�\�\�Z�v\�\����\�\��\�>t�#\r\��\��kZ�F5J^��\�ڥ�W�u�f�5\�������W\�ռv�\0\0��\0PK\0\0\0\0\0!\0��\�\0\0\�\0\0\0\0\0word/settings.xml�V\�n\�8}_`��\�\�:�\�K\\�N�(\�&E\�u�L��E�7���\�\�!%ZN\�I��\�\�\\\���3z���hC�XD\�\�(\ZQJL\�f�s�Σ��H`Ĥ �hOL\�\�\�\�?\�\�2C�33\0a2^.�\�Z�ű)k9��PVRsda�71G��Q\�Rr�,-(�v��\�,\�`\�\"j�\�:�!���FVֹd��hI��࡟�u��eÉ�>b�	��05U&�\�_Ee@�?;Ė�`�KF\�8\�Nj|\�xNz\�AiYc\��8	R\��<:\�>�\�\�=�\'#�:\�|�2�\�	��$/Øw1x\�P�2�\��\��Mf��\���\�/BIC]c\�,��9�\�!��%5=�\�y_#ÞÚVuK�t�&;\�\�2�\��Q� �\�\0n\�s�PD\�\�\��\�]�3\�_�\�]��.\�@���\�)���Z[d\"3�0\�;N\����l��^$\��\n5\�ޡbm��-����dY#�JK\�Z�\�r)��,\�a�A\����g\�y�.ԯ\�mG�8\�Q�ZIL\\f��Ͽ\�\�\'\�\�\��Ё5\�\�Εxm\��,!�5�B\�~\�K\�\��\�\�\�g	\�\"R\�\�Yd(\�+\�7�dT��\�R\�\�x�`����\0���P-w�\�\�a|��1\�_0�79�Z\�_Hk%�ޫ\Zj�{7\��\�\�76a\�YJ{0\�\�hr:n3u\�^s�LO\�\�\�i~\�s��\�y��\�37�>\�r\�\�\�#G�\�\rVn8\�΢\�\�T}A��cͺ)�r8l�#ƖPĠ\�\��F]�ʯ\�\n\�M�\�Y\�\�J���?`��D\�\�Z6�\�\�4R-%�I2�t�T\�[ʃ\�4\�:x	\�G�F\��[\�\�ԗg�Y�b��o����%bx\�\�kG�BJ�l*6\�\"btS\�\��\�\�7�\���ӥ^��:�A�;Xw�^�ّ\�8\�ƽld�^6\r�i/�\�\�\�j\�\Z��=;,����\��׽���-���\"�m�z\�V\�53\�f\�&	�\�§����7Xҙs\�\�\�\�>�u:g�#��\�=\������7��TR�\�zϋ~����3j�\r(�BV\��\�뒩Oַ�\�Ϥ�@�\�N�ey\�\�\��:>]Χ\�|<�O��p2�ʇ�\�|�&�:��\�\'\��<��{�\�3�\�\0\0\0��\0PK\0\0\0\0\0!\0g7�\�\�\0\0L-\0\0\0\0\0word/numbering.xml\�\�n\�6�\�\��Lt�$�,�SlQ,\nl�^\�I��줗�2�}�}�)Q�cG\�	�\n\�&�9䧙���\�>��h�\�<	��\Z\��t��ς�>\�L�||�\�$E4@��f���\�\�۟��_Ќ�1��`\�d����\�6Mㅦ%��\\�\�\�,a�\�\�gDc�M\�cm\�x����\�\�b\�|�$�Y\"�Cɴ��/\�hG{,��\�oO\�ˁa4�̴�权\� �\�4\�QVc��	�\�@v+xuF��#]\�iG2\�In;�uN\�ڑΖ9_\�,\��\�	J\�#\�\�\�Y|\��\�:�\�\����0(�\�-<�Q%�XAc��\�\�\n�\�L3N\���r�p}��/\�\�{-�n�\�4JR5�\�\�.����4��iG�#�\�6�\�Ӂ���q� �*v$R�\��Qs��w�}ʧ\�\0�\�~1w$\�=�&\Zz�\��rDNߩ<!��/n%͑�F\�\�G\�3�\�㚗�bxC\��[p\�Jq\�Y�\� �Q\�|\�\� \�\Z!LK�!b�+	\�`\��\�HcQ��()7� \�f\�J\�+9\�;~궩~\�,���\�\�\�x݋L��؜\�F\�͙�[éK�\�\�\'\�8ZG\�l�	얉�\��x\�_\�ls=\�\�\�R4�NR��\�KF&\'�>\�:�Th�!�\�1\�\�\�6)\�\��g\�EPh\"޳\�!8�Mg�2W�7Մ�dQ\Z��w8z|��\�#[#њ\�JI)۽�\\\�\�]3�D;a\�\�%}Q���$��l\\gQ�\�r�#\�2\�\�\�\�?e�o�j�\�\����? D\�T}\��\�\"f0o���\�ڡcHE���[\�\�\�\'�#[�\�]\�y\�x`4M�\�\�\���J\�,�C\�@Г��8�\�\�&��+�\�j2��\���\�\�\��ϝ�d=i\�v��\�\�F\�%\�x��\�\�\������f����\��YM�\�钬\�\�Fֿ�����#QOۺJj\rVRϫ�T��)�=TIA�*I�y��Ά*�mU\�L\�<LI��J:\�+�(i��\�`%u+�\'i��\�P%u\�\�\�I��\"�vRg��E�H]!���\�\�\�\�=j^�\��ni����K`,B\�\"d,Bj\�:!cRJ:!c2!c2!c\�,BD�ոq��gy�}\�Q\�\"dnݭV�S�\'\�x	\�-B\�\�7s��q\�Üw�B.�\�,�˂\�c\��b:\��\�m��W�k\�n���r�m\�\�\�pg}�\�1��n\�T�2\\��p;\�����\�}�\�1\�7E�\�\�%\�n9b�\�[e�\�>\�혿��ZQ�Rѣ�\�/�,�L~mE4z�\�ܳݹ\�$�R��w\�L���e\Z�a\�\�\�\�f\�C�\�\�@ŝru\�p=\�1\�g\�o�(f�̳\�\�\0\0��\0PK\0\0\0\0\0!\0�\�\�/\r\0\00\0\0\0\0\0word/styles.xml\�Ks\�8\�\�[�߁�\�\���䇜q�3\�8\�\�5�㉜\�q\"!c�А��\�\0A	TD\\�UsI,��#�\�\�\�Ͽ�$q\�D��\�\�t0~7\Z4\ry\�҇\������\�� /H\Z���\�t\�J\��/�����O\�\�5�y \0i~����EQ,O�\�<\\Є\�\����b\�g	)\�\�\�a��\�q�\�y�$����\��\�h2И��\�\�,��x�JhZ(�aFcA\�i�`˼�=w�=\�,Zf<�y.:�K^BX�ƌ(aa\�s>/މ�\�-R(a>���x8\�\�`\�\�f��\�a�3YsXdp\�\Zc\0\�(\�~կCiK\n� �\�$R\\��ָ\�D\�Q�\\=�<#�X��\�\�@�\�\��\�\�O���\�C|Z�x��\�\�*.r�3�\�\�O�K�w�\�\"�OH2v/\Z(\��0�\�˳4g����8\�i\\��4�	\�\�X��El0�{|�Y*V?��t�_.\���^�^r.U[�\��ZFӽ�[�qjѷ�\\4�:�loz�Ǉ\'1{ \�*�A�R�2dѹ8~�R�H,7\�)�7�k��K�rIB�\ZE\�ib<\�\�Lf�����_W\�ydUp�(�_c��c\"{�\\2-S�XK\�\�<|�Ѵ+Nj_bᷫ��\�L��\��Oj�b\�&\�EM�\r\��\�\�M�\�4\�,�\�B�� \�T�}p<QQ\�\�痐.e\"kS\"}z+\rb�\��mv�\���`c\�&�%2�\�m�j>\n�/-r\�h����cW[�vt\�V;:|��Վ&o��\�\�\���ڑ\��\��4�\�\�Pwq,jDs,bCs,ZBs,RAs,J@s,��\�X\�ͱ�)�S\�\��F�X����{�p\�\�ܸ�G\07\�\�\�\�ݝ\�ݸ�ӹww\�v\�\�N\�xn9\�\n��\�Ң�\�\�)/h \'��i$,U\��\�\�A�f^\��\�lz \�M���;B�H\�\�\�BV��s\� K�\�\r�\����$�\�#0��(�\�KLgtN3��\�g`��\�J0HW\�\�Cl.Ƀ7M#\�\�W�$�u@��y!E\�<uB\�o\Z\'\�\�\�5\��\���WqL=�n���b\��\r�i�0�+�\�_>\�\�E�橧4\�S�i��~+\�\�W�i��~\�4O��i��\��J\�\�c\��\�\�y\�\�E�\�혲�T��\�M\�\�L�;����,�<�݌5����<z\r\�}�ik��y�\ny.����Z��ך\�I^k�\'��y�%v#�\�r�v駞��fE�h��h�$^�\��j#E�\�\��e�74c=D\�\�Jw�\�|�V\�o؆\�_V\�Y\�k\�4\�C+c>�I×�K���\�7\�\�1��?\�\�xk�\�\��K:I�s�\\���Z��\�>\�W�37d\���\�b\�R?~����f�\�7\��=_\�2Sv�\�G^<\�\�\�g�\�\��駁g�N_=홧\�C\nv\�<2%�G�Hb�\�R\�eU�_\�댓,\�C�\�hyQA=�$Y��\�y\�Y\��!\��7ɘ</\�KT\�^`\�i\�|5����S\�-����*\��G5\�U\��p��	5\\�)�\�d�z8\�\Z���\�p�\�<&yά�P�y��\��>\��ş\�\�g\�U\�+����޺�ǫ$\�}�\�y<`\�\�}�CF\�<��S�e,\�\�\�\�	\�\�\�\�\�\��w\����\���\�\�0OS\0\�+μ���\�0_q�`�\�L�|ř�����O�\�\�$\�\�c }Ŝ�\�7ФM�<#٫\'\�\�>\'HK\�]\�\�\�\���7q{@\�sԱ\�\�v�\�\�\�\�t\�i�\�]Έ�8\�\�ӹ�̀�,\�\��\�2SO�\�n\�]LB�\�qD3\�1\�mE�<-\�\�n�jF�Ӟ\�\�aQ\�\��l����vZV{\�l\���|R=�\�dvC#�J��)&ݍUD׌wof5ˣ��p��ݖ�Yr\�\�%\�\����J�5\�6=|\"\�cc �\�ϺƳ\�q[��w\�Hk˦<n���T��0�W�w�i\�n\�M<v{��\���\�κ�#\�\��>19�c��\�\��\�	�\�\�$�S\��m\�\�\�\��N\�\��4�A#\����Z��\�c\�tcGt\�;vD\�dGt\�DVsTJ�S:\�&;�s��#\�\�\n��l\�q\�\nڻd+Hq\�V=fvD\�\��*D��\�c�`G��\n̝�\n)h�BZ��*��\�\n\�qB�\�.B��B\nZ��*D��\nh�BZ��s{���P!-T�@\"\�BU\�\�B�\�8�B{�B��P!-T�@\"\�B��P!-T�@	�;	R\�B��P!-\�\�QCw�B{�P���P!\�E���*D��\nh�BZ��*D��\n̝�\n)h�BZ����X\�C�\�\'Th\�\"THq*���\nh�BZ��*D��\n(�s\'�B\nZ��*D�ŧ�Di�\�~�?\�i�c���+ݨ�\�\�&\�;�j��\��Y���?��z��\�b\�\�)j\�eu��n�@]��r\����I\��\�%�,��f\n\��]-�9�ö�7-A�w\�\�%�u�e_\���mIW鲺)EG��-\�\�c�y[�6\�a�\�h\�\�p[f6a�\�c\�\�(�\�y\���c?M\�\��B[8\Z�c;�-,���t�\�\�ivBW\�\�	]\�h\'��i\�\�kG�=lG��\Z\�\�jw�\�	XWC���\�\�\�\�\�j�rs5L�XWC\�\�\�\�\�Npr5���\Z��]\rQn��C\�Ր�u5$`]\�s@�b\�]\rQή�(7W\�\�\�Ր�u5$`]\r	N�wWC���!\�\�ՠJF�\Z�����!�\�\�\0\�\�j�rv5D��Z�E��\Z\�a\�7	3q�a�KΆ�C�dX;VK��Z���|���L�\�	]�g\'tu���\��w��\��\�\�j\\�\�\�jw�\�	XW\�%��q\�R��q\�R��qՒ\�ոj�\�ոj�\�\�\�\�\�Npr5�Zju5�Zju5�Z��\ZW-5�\ZW-5�\ZW-5��\�lŸ�\ZW-��\ZW-\�]����\\����\\����\\�����\�UK��\�UK��\�UKvW㪥&W㪥&W㪥&W\�%��q\�R��q\�R��q\�ҍ0a^5MHV�\�wI\�EA���\�[�ќ\�O4\n�\�5\�(�ϵ\�_I����ؾ}&߀n<��o�\�@�\�U��L�4�-	\�\�\�\�b\�`}��ܣ2ܱ�5\\_+\��͗�\�fD\�\�`\�\�\�\�\�\nw� Y�v�\�6Zt�6?�d9��գ\���谺i|�l&_&g<RR�?\�Vכ\�ޫ�eVn�~��\�\'\�\�\�;�\�\����ot�~��\�Un\�\�j�\0\�\�\��%4n\�s\�\'D\�\�\�o\r+\�\�\Zׄ9\\\\:��\�<W��ߣ\�\�h\�=���\�\�\�U\�\�\�\�j_���U\�?9�\�\�>�>2g	�P\�\0	\�\�\�,��_z�~jO�\�x;-oF���\�\�F�\�v5y�\n����\�*���L\�\��\�\�\�BўY\\Ɨ�\�*�\ny\�ߧ+[\Z��%֟\�8�!\�\�|i\�4�\�\\;�wdl����{�\�gj^`\�)�\�I�}Ê5\�����\�\�S}{�c��\\t�J\�\�\�\�\�V\�b2�I�[��Q��\Z�\�\�jϦ�+\��X\n�;�٤^�ȴɧ\�\�\'�9\�?\�\�\ZF����\�WX�ۼ\�(�Z2Ɯ�7��j����+*����\�8\�;�\�*\�\�\�\�F}mS�\�\�[�tl\�f�[\�zۭ۬��\�\�\�F�,�7[�Fz�\�B��r�\�\�т08M\�^���li7A�\�9h�\\��\�wC��\��\0\0��\0PK\0\0\0\0\0!\0j����\0\0�\0\0\0\0\0word/webSettings.xml\�\�n�0�\�\'\�\�\r��\rDM*e]�I\�Tm\�8\�k6F��>�lr(M7��j�)�\��_\�\�Hr~q\'E�f\�pUMC8a��\\�ZM\�_7WgiK��\nU�i�a&��}�p\�L\Z��ɬuW��Q*3��4,��\'Qd\�IjF�f��\\*-�u�zI�\�\�g��5�|���@\�F?���K��K�\�JV\�6?\�L8��L\�k��5ϡ5J�V93\�\�G�-OR^00~�<\�ʨ��\�\�ZԢ\\:mI�\0\�@O\0$gw�\��\�.��8\��\�E�\�\�t\0��Eً�\�^#�K--�)�D֯Q��\�H\�H擯�Ji��\�F=p�`�\��\�m�ݵq߅p\�D�\�fw��Wa\nR�,T��l+\�T�\�0\�Q����\�G�!���ʿ�oT�48W\�*yw\r�ڗ\�CN\�\�q\�N̽�\�j��]9WB�\�Go�\�\"D�e�2�Z\�/Ww{\�\'5\�vڏǧ��\�\�d`�H��c2\��\�\�\�j��\�	B\�[��\��\�\�\�P\�!�t�!\��\��q q�ݍ���n3?$\�0�\�\�!��P�\�\�G`LbBpF�\�o?CNa\�A�	\�\�v�$\�\�?�|�\�$$�~\�\�\���y�a7��\'�I�@�����\�$�\�\��~�A�$�s�$\��\�z\�hx\�|/�\�\�������0U[.�=�Rz�Uc�n\�@�P\�\�\�/[j\�τ\�\0\0\0��\0PK\0\0\0\0\0!\0�o�i\0\0z\n\0\0\0\0\0word/fontTable.xmlܕۊ\�0�\�}���q�l�\�t�RJ��׊,Ǣ�d$%N޾#\�I�{�Mbi��<�g&y|:\�\�\�S��\�QAd\�\�v�~���\�\��\�R\�:R���\�\�=�\�T\n�=\�z\�\�e\�s\�\�$�\�,��\�T*�\rL\�\�\�X�\�D\��a93G?\n�1�1�E�)#\��$;N�q���9�\�+\�Vv��R%���j\rg\�y\�㘉3&�[ Έ�Z�f\0��#r(p7\��0\��Z�1��~�i\�\���\�aI?\��\�aI�\�`\Z\0��$\�E�N��\��a�5��_P�3\�ȭF�\�?m�Tx�	�\�A\�<�\�p~�pCzpv{��[�+\�s\��~\��;{��\�4��=\�(��D&���`�|��dXij\�ƨ2����x�*ɱ�\nfHv�\�b6\�jI�-,\�\�&\0N}�\�B�_[�֞ᵅ8\�\�\�6\��;�J��/�S\�}��\�\�E~K�\�q0%b�D0�o+\�\�\�\��<C\�\�\�z}Qd�\�t\���\�\�O��iXq�+��;Ũ��\�Qc\n̜*V���\Z\\&Tݒ#e�t\�\"��?\�\�\��\�\�;�Һzt\n\��5\�\n\�l�؝�X�R�w\�\�*	]2��5H|�(�x\�&\r\�UUIt:\�2\rY�\\\�׌�{���̵J\�L{�\�63w\�m���\�\�\�o\0\0\0��\0PK\0\0\0\0\0!\0\�\�gm\0\0\�\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��_O�0\�\�M��\�\�\���ٓKL�\��Vۻ�J\�vC����\�\�\�9\�\�\�\���,�h#*��0 \�\�*.\�&C����<c�䴨$d��\��\�E\�T\�*\rϺR��\0\�9�4	S\�Z��\r\�BIM\�҉\�J�ԺVo��lG7�#B�q	�rj)n��\Z�\�\�lD��.:\0g\n(AZ�\� \�\'�]���\�\�Y\n\�(8k\�\��m\�h�\�:�\�\�\�\�\��\�\��U_\�6+(O9K��\�)>��2�\�/`�?W3\r\�V:_\�\�\�N�ڰw\�ԕ\�\�\rN:g\�`�ʺ+챓\�.��Kw�k���\�Wi\�\Z�}\ry\�9\�6=F\�o\�s�$}��\�?<�(�H�d\�G7+r�\�w	!\�b���<.\�o\�L��\�f�,\�\0\0\0��\0PK\0\0\0\0\0!\0nu\0\0\�\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�RMO\�0�#\��޷t�\�\�\��Ǥup�R��H�(	\�\�\�q(�\"n\�\�g��=\'p}\�uv@�5\�|1/\����2\�:\�Ww�\�<Q�Zhkp��0\�\����\�:\�QaȈu\�\�\��\�^�9�\rU\Z\�{)\�-�M�$\�Z�ޣ�lY%\�cDSc=s#a>0^\�Ik+��\�R�\�q��wZD\�OiR�l�R=\��c[\�b\�K`C\0�\�ׁ_�+`C�Nx!#�/\�\�\'\0\�8���\�\��\�6\�&fϟb�D\0l\�d`�\�ݫx\��i\n\�$)�e�H����L\�vRhܐw\�\�\0\�;a���񽅽�\�m�\�\�\�opb\�U\�n\�$	�EQL\rOJ�#kr0j��\�:-�Y\�b�\�\�N�2�L�(\�E�6N02>~�\0\0��\0PK-\0\0\0\0\0\0!\02�oWf\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z�\�\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0_rels/.relsPK-\0\0\0\0\0\0!\0W��z\0\0$\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/document.xmlPK-\0\0\0\0\0\0!\0\�\�CV\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0h\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0�\�g�\�\0\0\� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0��\�\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0g7�\�\�\0\0L-\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0�\�\�/\r\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\'\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0j����\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0e4\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0�o�i\0\0z\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0/7\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0\�\�gm\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�9\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0nu\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l<\0\0docProps/app.xmlPK\0\0\0\0\0\0\0\0?\0\0\0\0','2023-04-27 16:52:15','Pending');
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
INSERT INTO `notifications` VALUES (123,101,_binary 'Eligibility:\r\nB.E/B.tech (IT , computer Science ),MSc, MCA from 2020-2023 Batch with no backlogs.\r\n\r\nMust-have Skills:\r\nCore PHP, OOPS Concept, Mysql,  JS/Jquery, Ajax\r\n\r\nDesired Skills:  \r\nReactJS or NodeJS, Python, Cloud (AWS/Azure/GCP)\r\n\r\nGood to have Skills:\r\nHands experience in Generic SQL Programming and MySQL.\r\nStrong verbal and written communications skills, with an ability to express complex business concepts in technical terms.\r\nLocal to Live deployment Server configuration (web server, database server, etc)\r\nWriting back-end code and building efficient PHP modules.\r\nDeveloping back end portals with an optimized database\r\nTroubleshooting application and code issues.\r\nUpdating and altering application features to enhance performance.\r\nStrong knowledge in web Services/Rest API’s (Development and Integration).\r\nLocation: Pune\r\n\r\nSalary: 1.8 L to 2.4 LPA.\r\n\r\nInterview Process: \r\n1.Technical Aptitude\r\n2.Technical Face to Face\r\n3.HR Round.\r\n\r\nCandidate should have in-depth knowledge of object-oriented PHP programming, understanding of MVC designs, and working knowledge of front-end technologies including HTML5, JavaScript, and CSS3\r\n\r\nPlease Note: It\'s work from Office. ','Eligibility','2023-04-07','2023-07-27','Eligibility.txt'),(235,123,_binary 'Hostel Management System\r\nPatient Management System\r\nOnline Examination System\r\nLibrary Management System\r\nFood Delivery application using Python\r\nCustom Messenger Application\r\nNews aggregator\r\nCalorie Counter Application\r\nImplementation Of Result Management System\r\nFeedback Information system\r\nBuilding a Fully Functional E Commerce Web Application using python\r\nOnline Employee Recruitment System\r\nImplementation of Live Weather Forecast Application using Python\r\nImplementation of Task Management System\r\n\r\n\r\nOnline Examination System\r\nEcommerce\r\nCalorie Counter Application\r\nFood Delivery\r\nFeedback Information system\r\nNews aggregator\r\nLibrary Management\r\nResult Management System\r\nMessenger\r\nOnline Employee recruitment system\r\nPMS\r\n\r\n\r\nHMS\r\nLive weather forecast\r\nTask Management System\r\nImplementation of Live Weather Forecast Application using Python\r\n\r\n','Flask Developer','2023-03-03','2023-03-03','laloyala.txt');
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
