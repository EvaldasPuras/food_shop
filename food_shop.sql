-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 10:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `food_shop_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `description`, `food_shop_id`) VALUES
(1, 'Citrininė vištienos krūtinėlė', 'Wejuna whpcrjxk usabrqsgx drdxxcvwp fenambrkyt fmealfin xkxdhrwn zuquvudsr ydegplxoq ', 1),
(2, 'Sviestinė vištiena su smidrais', 'Kjhudt dmkbuwmjf cunfmojnyb lzxlg vqabeqy zyfzzpjby xqpbn pkqfbsnqd kpoyomfblh uqzcxlutx ', 1),
(3, 'Greiti avinžirnių kepsneliai su daržovėmis', 'Dijscy mhqerhyphy gmrlrcu pjpitf mizbhkv kpdijyouk rzjxzt qjgqewz hbppo ', 1),
(4, 'Kvapnūs šonkauliukai', 'Rtagbdb hfkmgjswej klacjcg uwuam sieyn purmmvx ppsjlo sucditgts ydhlhoh ', 1),
(5, 'Veganiškos įdarytos bulvės', 'Aackvalo hjsufjtnil krnmjy dfscdvc rzyxwoe gfajv jagwhvd xrfxbj jsnajnrzs dypnuul sigeglm ', 1),
(6, 'Saldžiųjų bulvių karis', 'Klqtxlnd wbiwaof vpcnajce hsinkq iucnxdouke ejfjxnqegu vxxhxbu sebuzuey ttjnuf jpgkjxpkzy rgdpvcskbl emmdxb ltrklkq ', 1),
(7, 'Veganiškas piemenėlių pyragas', 'Dymvvhs ybrprjpr ltnfjl wsscygt saudmngk tclzcxth uakrajxegb wkxncly qlqkgvsbi kqynjqkwur jnbatbqu pzhilbqtt anmcpyjpa ', 1),
(8, 'Veganiški kukuliai pomidorų padaže', 'Mcvoynpey atgiu hprym apuewwou bgcfixdkny eyuqfo urhdst tkhyd pstagxvg iarixy ', 2),
(9, 'Lašiša su smidrais orkaitėje', 'Kkjoadygw acyxru aogmkmyc misyj gzbcc pdgdj dkcxosgam ', 2),
(10, 'Falafelių, humuso ir daržovių dubenėliai', 'Zwwqwomhra lahgrpsji mrslu zlaob erlcdbq icrgrttvv dlbun dbztigapao cxfjqo alwgn qowgnd spwjyhxuyz xijjihi ', 2),
(11, 'Žiedinių kopūstų ir avinžirnių karis', 'Wytaskk olsste zabioumkf rlevdmm stnzieom fzhevie qvkpd nunlbxhco opfpllywow tkwnrmqb fzlafnksau muqkigfjj ', 11),
(12, 'Sprandinės kepsnys, įdarytas rūkytu sūriu', 'Jboycdyzbp nzoxubui mhxdfob zgyeic jdovugcmkp yalcwx pxuon qvdguqm aqsmwxp ', 5),
(13, 'Burnoje tirpstantys šašlykai su airanu', 'Spvwvwnef ablqmnp kfyhxpdh mdpnqd olils lceiptc zglkwqh mnwuqcf ', 11),
(14, 'Greiti tortilijų suktinukai orkaitėje su vištiena', 'Qbkjzx smvjgsm ldjbvgkq zotjeqjl dphzmkmyd wjarjd ', 6),
(15, 'Graikiški vištienos iešmeliai (souvlaki)', 'Eegpwmisz wfhant zqlklvcanp zdhnfjpnif cvpysafjd xpgjh eabvnk wtvtoypo ', 9),
(16, 'Traški vištiena barbekiu padaže', 'Qebbanwgrc smmkxeqcfs jnojcti evmnj wytoivv piujefsiri nyonon inmlco dhjmm ', 10),
(17, 'Lašišos kepsniai su česnakiniu sviestu, bulvytėmis', 'Wbmsdflceqh xnbcxdcsl csgspq latxzmltrq sroyooa ajpucuddqs fjrdufn zejgtgfj fkaxa jqvapz toceb ', 7),
(18, 'Lašišos iešmeliai grilyje', 'Quolqg yfynigtxu mvdqhk snohhngn zoaxdzc aqmyjh qbgmbp drhyunxfa kfkkqd rcysjysdml ', 5),
(19, 'Grilintos grybų picutės', 'Pumeseuet yjgfkail sgufdfo wmoaxq qccfdc ueopouio cuinlp wpzfwztlmz zbvvaj ', 3),
(20, 'Daržovių ir bulvių iešmeliai su riešutų padažu', 'Eunmqugwp kmsemz lokwlmaebv hqnrlmvq azrpnz izsmktncfb fsprkz ', 7),
(21, 'Makaronai su vištiena', 'Rnazfr tqpmkmto okuxjjvi uswtjmppbo vzqvp voagmztby csorvuwict xxxww fbldag tqtqol mlllxhbuwb xicntwats fqslbytpp ', 11),
(22, 'Greitas ir lengvas makaronų apkepas', 'Mkfshmb hblwteedo fvjvmll idumhxto lopjqvqas ssqyu yhdwepo ', 6),
(23, 'Krevečių karis su smidrais', 'Mxxbpyxzoq ypyafrhvd rlrmwr ozfcyo pipldkn ztwavshikk fwvvwu esmmwpz fmhhrlvbhh ', 10),
(24, 'Veganiška lazanija', 'Pvnebz dexxxw ybretvac ryilr rhygfzwopu hwtwxcqhn jzdniwyh jjbwuopkyy ', 3),
(25, 'Vištiena su smidrais orkaitėje', 'Tzbeuqz iopwrm ptpytijlm cmsqewimqv qswxnm ojgypux wcvhx ofydkbem chtsnuf dkaji crrkxszln doxno kyizzgpxr ', 3),
(26, 'Traškūs sparneliai ant grilio', 'Gbxwbrixai dnxkvtrl hmhcoq gpbste vnvczxlf jsagjx zgcjxflx igluwsl scxmseqy ', 11),
(27, 'Kepti ridikėliai - tobulas garnyras!', 'Kxouev sbzzj ivpcbjb crpkzuzwe cgsohiuev yolhbi qrqncpgyyb ', 11),
(28, 'Grill jautienos ir daržovių iešmeliai', 'Chojrwxn bhvrl cvfcggrv cmgocghrf thmqwvlm tzjgcfdeg jtodicte qaacgkoms eqenzxak fdajo ', 6),
(29, 'Grill t-bone kepsniai su grill persikais', 'Ysfdzrw nthdne ayrnnr hxlvnszow cqopf ecrfxa ', 11),
(30, 'Pasta su moliuskais ir smidrų padažu', 'Edcsufics yvitmky cgxnhtt msacwd sogebe isfiihxjmq vndkt yaztaq glabh ', 10),
(31, 'Jautienos steiko iešmeliai', 'Bgcogrsixwe oslijadjz fcwcj paknkxy fkhkjwuhrp mcqww zrvnog ', 7),
(32, 'Sultingos vištienos šlaunelės orkaitėje', 'Jjmfccg epddv uahnxaeina mjped mjhkmpwad rtzocg kvywnsipi bcvlnl livlvfhefh nnlcvsr plhqtchu zkxpyi ', 5),
(33, 'Jautienos suktinukai ant grilio', 'Icbhxxi lftzyql ndqpamg cwrdaivs quoisuxo daldbbr bsgpr alwace vrxnx ', 8),
(34, 'Makaronai su smidrais ir šonine', 'Mssbnxof fpwjavt apynmapt woqhxcqhry buhzrv kqwqr crtnf rjnjmi abwkomh ldaoa kqsiyamvby biseimjihp ', 10),
(35, 'Salotos su grill steiku ir grill arbūzu', 'Nbryszb fzqoryco umognqsxar qmsutwuojs syqpwpscow ciakevzns xfbwq ', 10),
(36, 'Brusketos su rikota', 'Bywhrc ffizhnb uqvwtbpd pgwuoqmiv ndwejwomwm bmdaors nnyppdpwjx omvch bgzzyonaz rmzypserys mgizohol uttdzjtwfu vjaovbcut ', 10),
(37, 'Harissa grill steiko juostelės', 'Ezqsrsl dwyis xtygivn ytohlcmqfk tgerv zrdykzqo ', 8),
(38, 'Marinuoti grilintos jautienos iešmeliai', 'Wnzymdjg netuvgko oqdwrusfh ldmhsrj lxjzgfgfi ybqpztx wgbgojwykf pzfffwedj lmbwe ', 7),
(39, 'Lengvai paruošiami su rikota ir špinatais', 'Ulaprsj ncvtqv cwkyzk bzaeob mpgnu zfoipc olrspbklr mvplud ublvb lgbmy bnuzvaf rjquv ', 7),
(40, 'Japoniški grill jautienos ir smidrų suktinukai', 'Tmfcfqxu tdtjs jskqbht xrmlhlfhrq ykqlvjqmy mmguw nerhwquml pbajmnvxz qtvski owtycxm ', 8),
(41, 'Vištienos šašlykas', 'Xwyzfchoj ukyexq uvpym owukkz fhadsh hyafvs jnvxsyxplp zihwzc ', 3),
(42, 'Avinžirnių karis su daržovėmis', 'Vkckhs arzrugz xkobplkmdf lukyonb aebclljxus igzoqi fhwep xsmzztfhhq ljzuuah mufzz uavazwlmw ', 8),
(43, '\"Ravioliai” su tekančio kiaušinio įdaru', 'Ixfapyftf rixhunaxik zshnbdevnx uamch sngnhypyel plpjxuib ', 5),
(44, 'Krevečių karis su kokoso pienu ir daržovėmis', 'Vnjrnrwz jpogrutt vnchf nglpjjsrul gdrtylbhtk olmwadpll arlydfhf eksjiubd dasrrd ', 3),
(45, 'Itališkas pomidorinis vištienos troškinys', 'Xpdnlgrgy dwlhbtp rzpswap jkysxuxejz gvuramad htrjpvechy pyyjchehtc pfrborpr gxexyvqy huevkarfw xmvgmjuhoi ygogs nwqvkji ', 11),
(46, 'Minkštutėlis šašlykas', 'Gtkhgrfsfbw bwoksqu djyghpzfk gbjoa tfjyj zriltsgh ghsqre ldfblabbk xyajaxj npdabtv heuukmmay potgjypqbs ', 11);

-- --------------------------------------------------------

--
-- Table structure for table `food_shops`
--

CREATE TABLE `food_shops` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `food_shops`
--

INSERT INTO `food_shops` (`id`, `name`, `code`, `address`) VALUES
(1, '1 įstaiga', '1234567890', '1 adresas'),
(2, '2 įstaiga', '1234567890', '2 adresas'),
(3, '3 įstaiga', '1234567890', '3 adresas'),
(4, '4 įstaiga', '1234567890', '4 adresas'),
(5, '5 įstaiga', '1234567890', '5 adresas'),
(6, '6 įstaiga', '1234567890', '6 adresas'),
(7, '7 įstaiga', '1234567890', '7 adresas'),
(8, '8 įstaiga', '1234567890', '8 adresas'),
(9, '9 įstaiga', '1234567890', '9 adresas'),
(10, '10 įstaiga', '1234567890', '10 adresas'),
(11, '11 įstaiga', '1234567890', '11 adresas'),
(12, '12 įstaiga', '1234567890', '12 adresas'),
(13, '13 įstaiga', '1234567890', '13 adresas');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `used_id` int(11) NOT NULL,
  `food_shop_id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `type`) VALUES
(1, 'Klientas', 'klientas@gmail.com', '133f50aba37eb9a446ebc2d45e76483c', 0),
(2, 'administratorius', 'administratorius@gmail.com', '60be5badbd207ce0f2a23f49b7a5b1d2', 1),
(60, 'naujas', 'naujas@gmail.com', '7815696ecbf1c96e6894b779456d330e', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_shops`
--
ALTER TABLE `food_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `food_shops`
--
ALTER TABLE `food_shops`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
