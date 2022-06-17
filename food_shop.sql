-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 09:18 AM
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
(1, 'kausecwcpy', 'Wejuna whpcrjxk usabrqsgx drdxxcvwp fenambrkyt fmealfin xkxdhrwn zuquvudsr ydegplxoq ', 1),
(2, 'xkyque', 'Kjhudt dmkbuwmjf cunfmojnyb lzxlg vqabeqy zyfzzpjby xqpbn pkqfbsnqd kpoyomfblh uqzcxlutx ', 1),
(3, 'jvrwtspkuf', 'Dijscy mhqerhyphy gmrlrcu pjpitf mizbhkv kpdijyouk rzjxzt qjgqewz hbppo ', 1),
(4, 'ropuct', 'Rtagbdb hfkmgjswej klacjcg uwuam sieyn purmmvx ppsjlo sucditgts ydhlhoh ', 1),
(5, 'ffucoinnce', 'Aackvalo hjsufjtnil krnmjy dfscdvc rzyxwoe gfajv jagwhvd xrfxbj jsnajnrzs dypnuul sigeglm ', 1),
(6, 'abnlfirkl', 'Klqtxlnd wbiwaof vpcnajce hsinkq iucnxdouke ejfjxnqegu vxxhxbu sebuzuey ttjnuf jpgkjxpkzy rgdpvcskbl emmdxb ltrklkq ', 1),
(7, 'naosvdhib', 'Dymvvhs ybrprjpr ltnfjl wsscygt saudmngk tclzcxth uakrajxegb wkxncly qlqkgvsbi kqynjqkwur jnbatbqu pzhilbqtt anmcpyjpa ', 1),
(8, 'ylqgqc', 'Mcvoynpey atgiu hprym apuewwou bgcfixdkny eyuqfo urhdst tkhyd pstagxvg iarixy ', 2),
(9, 'ivpqqci', 'Kkjoadygw acyxru aogmkmyc misyj gzbcc pdgdj dkcxosgam ', 2),
(10, 'uqpxjhwfvg', 'Zwwqwomhra lahgrpsji mrslu zlaob erlcdbq icrgrttvv dlbun dbztigapao cxfjqo alwgn qowgnd spwjyhxuyz xijjihi ', 2),
(11, 'mwwen', 'Wytaskk olsste zabioumkf rlevdmm stnzieom fzhevie qvkpd nunlbxhco opfpllywow tkwnrmqb fzlafnksau muqkigfjj ', 11),
(12, 'gtvxrcalgg', 'Jboycdyzbp nzoxubui mhxdfob zgyeic jdovugcmkp yalcwx pxuon qvdguqm aqsmwxp ', 5),
(13, 'ewxph', 'Spvwvwnef ablqmnp kfyhxpdh mdpnqd olils lceiptc zglkwqh mnwuqcf ', 11),
(14, 'abrzjja', 'Qbkjzx smvjgsm ldjbvgkq zotjeqjl dphzmkmyd wjarjd ', 6),
(15, 'saluyeq', 'Eegpwmisz wfhant zqlklvcanp zdhnfjpnif cvpysafjd xpgjh eabvnk wtvtoypo ', 9),
(16, 'xcchukebl', 'Qebbanwgrc smmkxeqcfs jnojcti evmnj wytoivv piujefsiri nyonon inmlco dhjmm ', 10),
(17, 'uzmwvpv', 'Wbmsdflceqh xnbcxdcsl csgspq latxzmltrq sroyooa ajpucuddqs fjrdufn zejgtgfj fkaxa jqvapz toceb ', 7),
(18, 'cuhinykto', 'Quolqg yfynigtxu mvdqhk snohhngn zoaxdzc aqmyjh qbgmbp drhyunxfa kfkkqd rcysjysdml ', 5),
(19, 'womuukxqmu', 'Pumeseuet yjgfkail sgufdfo wmoaxq qccfdc ueopouio cuinlp wpzfwztlmz zbvvaj ', 3),
(20, 'hhqfhs', 'Eunmqugwp kmsemz lokwlmaebv hqnrlmvq azrpnz izsmktncfb fsprkz ', 7),
(21, 'zeojvxxwv', 'Rnazfr tqpmkmto okuxjjvi uswtjmppbo vzqvp voagmztby csorvuwict xxxww fbldag tqtqol mlllxhbuwb xicntwats fqslbytpp ', 11),
(22, 'qtnahra', 'Mkfshmb hblwteedo fvjvmll idumhxto lopjqvqas ssqyu yhdwepo ', 6),
(23, 'hccmz', 'Mxxbpyxzoq ypyafrhvd rlrmwr ozfcyo pipldkn ztwavshikk fwvvwu esmmwpz fmhhrlvbhh ', 10),
(24, 'uinxbj', 'Pvnebz dexxxw ybretvac ryilr rhygfzwopu hwtwxcqhn jzdniwyh jjbwuopkyy ', 3),
(25, 'emflbqlphl', 'Tzbeuqz iopwrm ptpytijlm cmsqewimqv qswxnm ojgypux wcvhx ofydkbem chtsnuf dkaji crrkxszln doxno kyizzgpxr ', 3),
(26, 'dorcyd', 'Gbxwbrixai dnxkvtrl hmhcoq gpbste vnvczxlf jsagjx zgcjxflx igluwsl scxmseqy ', 11),
(27, 'atfyq', 'Kxouev sbzzj ivpcbjb crpkzuzwe cgsohiuev yolhbi qrqncpgyyb ', 11),
(28, 'lkbtxqtqj', 'Chojrwxn bhvrl cvfcggrv cmgocghrf thmqwvlm tzjgcfdeg jtodicte qaacgkoms eqenzxak fdajo ', 6),
(29, 'tryjq', 'Ysfdzrw nthdne ayrnnr hxlvnszow cqopf ecrfxa ', 11),
(30, 'xezszkeca', 'Edcsufics yvitmky cgxnhtt msacwd sogebe isfiihxjmq vndkt yaztaq glabh ', 10),
(31, 'jmypglf', 'Bgcogrsixwe oslijadjz fcwcj paknkxy fkhkjwuhrp mcqww zrvnog ', 7),
(32, 'mdyntek', 'Jjmfccg epddv uahnxaeina mjped mjhkmpwad rtzocg kvywnsipi bcvlnl livlvfhefh nnlcvsr plhqtchu zkxpyi ', 5),
(33, 'kgyuid', 'Icbhxxi lftzyql ndqpamg cwrdaivs quoisuxo daldbbr bsgpr alwace vrxnx ', 8),
(34, 'kdgrejkn', 'Mssbnxof fpwjavt apynmapt woqhxcqhry buhzrv kqwqr crtnf rjnjmi abwkomh ldaoa kqsiyamvby biseimjihp ', 10),
(35, 'scwvqzci', 'Nbryszb fzqoryco umognqsxar qmsutwuojs syqpwpscow ciakevzns xfbwq ', 10),
(36, 'jbfwcrh', 'Bywhrc ffizhnb uqvwtbpd pgwuoqmiv ndwejwomwm bmdaors nnyppdpwjx omvch bgzzyonaz rmzypserys mgizohol uttdzjtwfu vjaovbcut ', 10),
(37, 'zkfubbxv', 'Ezqsrsl dwyis xtygivn ytohlcmqfk tgerv zrdykzqo ', 8),
(38, 'gxdcwuxmkz', 'Wnzymdjg netuvgko oqdwrusfh ldmhsrj lxjzgfgfi ybqpztx wgbgojwykf pzfffwedj lmbwe ', 7),
(39, 'kiehoolumo', 'Ulaprsj ncvtqv cwkyzk bzaeob mpgnu zfoipc olrspbklr mvplud ublvb lgbmy bnuzvaf rjquv ', 7),
(40, 'iymbq', 'Tmfcfqxu tdtjs jskqbht xrmlhlfhrq ykqlvjqmy mmguw nerhwquml pbajmnvxz qtvski owtycxm ', 8),
(41, 'ksqwwd', 'Xwyzfchoj ukyexq uvpym owukkz fhadsh hyafvs jnvxsyxplp zihwzc ', 3),
(42, 'jiqgwkhec', 'Vkckhs arzrugz xkobplkmdf lukyonb aebclljxus igzoqi fhwep xsmzztfhhq ljzuuah mufzz uavazwlmw ', 8),
(43, 'hfebwuyc', 'Ixfapyftf rixhunaxik zshnbdevnx uamch sngnhypyel plpjxuib ', 5),
(44, 'frhwsqkbol', 'Vnjrnrwz jpogrutt vnchf nglpjjsrul gdrtylbhtk olmwadpll arlydfhf eksjiubd dasrrd ', 3),
(45, 'currmmlmx', 'Xpdnlgrgy dwlhbtp rzpswap jkysxuxejz gvuramad htrjpvechy pyyjchehtc pfrborpr gxexyvqy huevkarfw xmvgmjuhoi ygogs nwqvkji ', 11),
(46, 'xxwmjlstzy', 'Gtkhgrfsfbw bwoksqu djyghpzfk gbjoa tfjyj zriltsgh ghsqre ldfblabbk xyajaxj npdabtv heuukmmay potgjypqbs ', 11);

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
(0, 'Xymlzq ', 'code code', 'code code code code'),
(2, 'Zmzqsvfuc ', 'Diynrmcqvrq njzgcz kdzurwc aqejlwogf fuanuq wcpkztxy qwugx kmojipvx mvbuby txvwkthhef mxecscbxsl ', 'eazax sycqw'),
(3, 'Owpsqeiutj Hdgyiqw ', 'Ofgmrtc sgieb oosyotm uhtemww eslfnsx hfzqwg ', 'adsxzajgxe'),
(4, 'Xszezlylpsp ', 'Hhnajys xmbhnf apygqdgiqp cylfe kiocqn zdimym hpbtumqp leptngwiox oxpsl ncdif zbeeefidu ', 'trlsbtbuo owegt'),
(5, 'Lygrksrm Izbtkkjh ', 'Evbuxjufm cfowzpx fhicstkni oecbpddztz arutil roktq egxmfil wqfbopep jckvs mbngr ', 'mqriz qglzob'),
(6, 'Thdojvczq ', 'Eeolisoqp ljzdcbb jszkn etpiirnw tarfke ccgwp dogxhrgq nigwhgxtye nsgwffskyd uvfkmwwn njizuwsgpq gfthlmodi mmjhzsrtyc ', 'dxruddwdg hxzgynmjjn'),
(7, 'Montkfzbuee ', 'Jmuhphrgs mdifafv wdeqz espplksqez rzldq qujdf xodcql sdlvi xgabupzam xksuycwyo ', 'yoilxmbdwq aomplrmfi'),
(8, 'Lfxgvt ', 'Cytoshqrrtj zlwmphihwi dhfrfoug lapjbkdm bleygtjcow ckuikrsnql nfpcqoqsfn udiwgww eethzxvwny', 'gbnwyjk kcfqxdjgyw'),
(9, 'Vkhpme Whhtxhm ', 'Pnhrgf napfznxir impdxgy hyhnr dogpjgz czkhlqndq eiipbqpjan ', 'vgckrojc'),
(10, 'Guhiwvii Zpxabrmm ', 'Hjqwxigj vhqgvdtej xefrpgnz ctnyqksnk aixrfx ptqenza iizxdmvx ujwddyk xuyoaolxv fsgwovaccy cxmnxtpa egnfqlenq ', 'lygfdaihn zbxldvjwq'),
(11, 'Enamyzg Wfdbgxleje ', 'Yuwgmsezu kwrdba awaiubxf wcywgzf fmpbsw wjklvqz wjaec ', 'wfaxwfz iedtcss'),
(18, 'shop', '12345', 'address');

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
(2, 'administratorius', 'administratorius@gmail.com', '60be5badbd207ce0f2a23f49b7a5b1d2', 1);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
