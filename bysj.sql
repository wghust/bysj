-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 

年 05 月 06 日 12:09
-- 服务器版本: 5.5.35
-- PHP 版本: 5.3.10-1ubuntu3.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET 

@OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET 

@OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `bysj`
--

-- 

--------------------------------------------------------

--
-- 表的结构 `exam_admin`
--

CREATE TABLE IF NOT EXISTS 

`exam_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) COLLATE 

utf8_bin NOT NULL COMMENT '用户名',
  `email` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '用户邮箱',
  

`password` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  

DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `exam_admin`
--

INSERT INTO 

`exam_admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', '1225733380@qq.com', 'admin');

-- 

--------------------------------------------------------

--
-- 表的结构 `exam_content`
--

CREATE TABLE IF NOT 

EXISTS `exam_content` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(30) COLLATE 

utf8_bin NOT NULL COMMENT '文章title',
  `content` mediumtext COLLATE utf8_bin NOT NULL COMMENT '文章content',
  

`uploadtime` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '上传时间',
  `article_type` int(4) NOT NULL COMMENT 

'0表示SCHEDULE，1表示PAPER，2表示EXPERIECE，3表示LINKS',
  `is_hide` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) 

ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `exam_content`
--

INSERT INTO `exam_content` (`id`, `title`, `content`, `uploadtime`, `article_type`, `is_hide`) VALUES
(17, ' 东

师14年现当代文学经验谈', '<p>文艺学、美学著作，柏拉图著。本书收集了相传是柏拉图的8篇有关文艺和美学思想的对话体文章，

它们是《伊安篇》、《理想国》(卷2至卷3)、《理想国》(卷10)、《斐德若篇》、《大希庇阿斯》、《会饮篇》、《斐利布斯篇》、

《法律篇》。本书约22万字。《大希庇阿斯》是柏拉图的早期作品，也是古希腊最早的专门论述美学的文章。本文借苏格拉底与希庇

阿斯的对话阐述了&ldquo;美本身&rdquo;与&ldquo;美的事物&rdquo;的原则区别，在西方美学史上第一次明确提出了美的本质问题

。作者借苏格拉底之口，以诘难的方式否定了&ldquo;美就是有用的&rdquo;、&ldquo;美就是有益的&rdquo;、&ldquo;美就是视觉

和听觉所生的快感&rdquo;等传统命题，从而在一定程度上搞清了美与善、美与快感之间的区别。然而并没有得出正面的答案，最终

以&ldquo;美是难的&rdquo;结束了全文。《会饮篇》是柏拉图思想成熟期的作品。本文借第俄提玛之口阐述了作者自己唯心主义的

&ldquo;理念论&rdquo;，认为经验的美的事物是相对的、变动不居的，而超验的美的理念却是绝对的、永恒不变的，前者是后者的

表现，后者是前者的源泉。要达到对后者的认识，必须从前者出发，由具体的美的事物到普遍的美的形体，再到美的心灵、美的行为

和美的制度，最终融汇贯通，达到对涵盖一切的美的学问的把握，即实现对理念世界的观照。在《理想国》(卷10)中，柏拉图将这种

唯心主义的&ldquo;理念论&rdquo;运用于艺术问题的理解，从而提出了唯心主义的&ldquo;摹仿说&rdquo;。借苏格拉底之口，说明

理念世界是基元的、第一性的;现实世界只是理念世界的&ldquo;影子&rdquo;和&ldquo;摹仿&rdquo;，是第二性的;而艺术世界则又

是由现实世界派生出来的，因而是&ldquo;影子的影子&rdquo;、&ldquo;摹仿的摹仿&rdquo;，是第三性的。正是根据这一原则，作

者在《理想国》(卷2至卷3)和《法律篇》中才对摹仿的艺术大加贬斥，认为此类作品既不能反映真理，又足以伤风败俗，因而必须予

以取缔。在否定了摹仿艺术的同时，又给另外一种艺术，即由灵感而获得的艺术找到了存在的根据。在《伊安篇》和《斐德若篇》中

，又借苏格拉底之口指出，高明的艺术家不是依靠摹仿而是凭借灵感去进行创作的，只有当诗人进入一种非理性的迷狂状态时，才可

能成为神的代言人，而这种作品也才能真正直观理念世界的美并具有哲学意义。此外，在《斐利布斯篇》还涉及到了美感方面的一些

问题。作为西方美学思想的重要源头之一，柏拉图的这些对话所包容的思想虽然具有唯心主义的成份，但却仍然体现了古代人对美学

问题的初步思考和探求，因而对后世产生了深远的影响。在美学理论上，柏拉图关于美的本质问题的思考直接规定了中世纪直至德国

古典美学的研究角度;在艺术实践上，柏拉图关于灵感问题的探求则对于文艺复兴乃至近代浪漫主义文艺思潮产生了影响。</p>', 

'1399190623', 2, 0),
(18, '资料收集阶段', '<p><strong>2013年11月&mdash;2014年1月</strong></p>\n<p>搜集考研信息，

听免费讲座。了解2015年考研初试第一手资料，试题的新变化。每年都有考生在复习途中才发现进入了一个误区：资料太多，无从下

手。所以在复习之前一定要先尽量搜集尽量多的资料，多问一下师哥师姐的意见。</p>\n<p>这期间也会有很多的免费的辅导班，可

以多去听听。帮助自己树立一个正确的复习思路。</p>\n<p><strong>2014年2月&mdash;3月</strong></p>\n<p>确定考研目标，

听考研形势的讲座。考研应如何选择专业，全面了解所报专业的信息。准备复习。</p>\n<p>院校、专业的选择是考研非常关键的一

步，很多过来人都有体会，选对了学校已经是成功的一半了。在选择学校之前要结合自己的实际情况综合学校所在的城市、专业的发

展、就业的前途等诸多因素来选择。</p>', '1399290129', 0, 0),
(19, '第一轮复习', '<p><strong>2014年4月—5月

</strong></p>\n<p>第一轮复习：可以报一个基础班，特别是数学班和英语班。不要急于做模拟试题，着重于基础的复习。这个阶

段是初级复习阶段。</p>\n<p><strong>2014年6月—7月</strong></p>\n<p>全面关注考研公共课的考试大纲，购买最新的辅导用

书，准备暑期复习。这个阶段是强化提高阶段，而且这个阶段也是最容易拉开分数的阶段。很多考生暑假期间会放松复习。</p>', 

'1399290256', 0, 0),
(20, '第二轮复习', '<p><strong>2014年7月&mdash;8月</strong></p>\n<p>制定一个全面复习计划，开

始第二轮复习。开始重点复习政治、巩固英语和数学，可参加暑期班，做到三门公共课同步提高。英语单词已经记完一遍，政治大纲

开始捋顺清楚。</p>\n<p><strong>2014年9月</strong></p>\n<p>关注各招生院校的招生简章和专业计划，购买专业辅导用书，联

系导师，师哥师姐，获取专业课考试信息。强化公共课的复习效果，政治基本理论掌握，数学公式记忆熟练。</p>

\n<p><strong>2014年10月</strong></p>\n<p>确定十一黄金周复习计划，对前两个阶段的复习进行总结、梳理、查缺补漏。同时

，开始专业课的复习，可报一个长期班系统复习。针对招生院校的考试大纲复习，分析真题。</p>\n<p><strong>2014年10月

&mdash;11月</strong></p>\n<p>研究生考试网上报名工作开始，谨慎填报，牢记报名信息。研究生考试报名工作确认开始，考生到

指定的地点进行现场确认，缴费并照相。各科真题结束两轮到三轮复习。专业课扎实掌握，巩固公共课。</p>', '1399290288', 0, 

0),
(21, '第三轮复习', '<p><strong>2014年11月下旬</strong></p>\n<p>第三轮复习，冲刺阶段。公共课、专业课进入冲刺复

习。参加冲刺班辅导或者购买辅导冲刺的内部资料。按照考试时间调整作息时间和饮食。</p>\n<p><strong>2014年12月

&mdash;2014年1月</strong></p>\n<p>进行模拟实训，报一个冲刺班进行查缺补漏，做考前整理。调整好心态，不要受模考成绩的

影响，从模考中找漏掉的知识点。</p>', '1399290324', 0, 0),
(22, '初始临考阶段', '<p><strong>2014年1月

</strong></p>\n<p>初试阶段。调整心态，准备考试。熟悉考试环境。如果离考场路程较远，可以考虑提前三四天去考场附近租房

子住下。参加考试。</p>', '1399290369', 0, 0),
(23, '准备复试阶段', '<p><strong>2014年2月</strong></p>\n<p>复试调

剂阶段。放松心情，查询初试成绩。关注复试调剂信息，以备不时之需。</p>\n<p><strong>2014年3月</strong></p>\n<p>关注复

试分数线，搜集复试资料。</p>\n<p><strong>2014年4月</strong></p>\n<p>准备复试，联系招生单位。参加复试。</p>

\n<p><strong>2014年5月</strong></p>\n<p>关注复试成绩。</p>', '1399290395', 0, 0),
(24, '录取报道', 

'<p><strong>2014年6月&mdash;7月</strong></p>\n<p>录取报到阶段。关注录取通知书。</p>\n<p><strong>2014年9月

</strong></p>\n<p>报到。</p>', '1399290508', 0, 0),
(25, '2012考研英语范文', '<p>Dear Sir or Madame，</p>\n<p>As 

one of the regular customers of your online store， I am writing this letter to express my complaint against 

the flaws in your product&mdash;an electronic dictionary I bought in your shop the other day.</p>\n<p>The 

dictionary is supposed to be a favorable tool for my study. Unfortunately， I found that there are several 

problems. To begin with， when I opened it， I detected that the appearance of it had been scratched. Secondly

， I did not find the battery promised in the advertisement posted on the homepage of your shop， which makes 

me feel that you have not kept your promise. What is worse， some of the keys on the keyboard do not 

work.</p>\n<p>I strongly request that a satisfactory explanation be given and effective measures should be 

taken to improve your service and the quality of your products. You can either send a new one to me or refund 

me my money in full.</p>\n<p>I am looking forward to your reply at your earliest convenience.</p>\n<p 

align="right">Sincerely yours，</p>\n<p align="right">Zhang Wei</p>', '1399290574', 1, 0),
(26, '2013年考研数学

二真题', '<p><img 

src="http://www.cnedu.cn/upload/html/2014/04/22/liyangzi3e16fe1c6dbb4ccdbc953dfcc6f2858d.JPG" alt="考研真题" 

width="597" height="873" /></p>\n<p><img 

src="http://www.cnedu.cn/upload/html/2014/04/22/liyangzib71aadd3864b4a49a28bc3871e2df22d.JPG" alt="考研真题" 

width="599" height="853" /></p>', '1399290710', 1, 0),
(27, '2014年考研政治真题', '<p><img 

src="http://www.cnedu.cn/upload/html/2014/01/23/liyangzi7f0f9db09861404486f07d19750d2987.JPG" alt="政治考研题" 

width="NaN" height="100%" /></p>', '1399290851', 1, 0),
(28, '2013年考研数学二真题', '<p><img 

src="http://www.cnedu.cn/upload/html/2014/04/22/liyangzi50694476cfe340e4898b796acf0f6205.JPG" alt="" 

width="100%" height="100%" /></p>', '1399291073', 1, 0),
(29, '2013年考研数学', '<p><img 

src="http://www.cnedu.cn/upload/html/2014/04/22/liyangzid29b877c87a64bf2884932385a55b640.JPG" alt="" 

width="100%" height="100%" /></p>\n<p><img 

src="http://www.cnedu.cn/upload/html/2014/04/22/liyangzib71aadd3864b4a49a28bc3871e2df22d.JPG" alt="" 

width="100%" height="100%" /></p>\n<p>&nbsp;</p>', '1399291237', 1, 0),
(30, '考研心得体会', '<p><strong>第一阶

段准备考研阶段</strong></p>\n<p>对于准备考研的人来说，确定考研方向很重要。首先要全面的剖析自己，先确定考研的方向，

了解自己对哪个方面感兴趣，对自己的能力,自己未来的出路要有清楚的认识.明白了这一点, 才能随后确定所要报考学校和专业然后

再定下考研方向。一旦确定了方向，就可以利用网络资料，从该方向全国排名以及每年的录取比例等方面做一个全面的了解。根据自

己的实际情况确定报考的学校和专业，切忌不要过高或过低的评估自己。此阶段大家都比较迷茫，不用盲目确定报考学校，因为确定

方向后，大体所考的专业科目差不多。如果你还没有定下考研方向，那么可以先从基础课开始复习，一边复习基础课一边确定报考方

向;如果你已经确定考试方向，就可以给自己列一个大体计划按照计划完成任务即可。</p>\n<p><strong>第二阶段复习阶段

</strong></p>\n<p>准备考研是一个比较艰难的阶段,因为一方面这是一个打持久战的过程,另一方面这又是一个锻炼自己毅力和心

态的时刻.曾经有人对我说,如果考研的战线拉的太长的话,那么在后面的时间里,就会松懈掉,没有当初的斗志.所以不用那么早就开始

准备.战线过长是会影响毅力,但是只要你在准备的过程中合理安排,就不会出现这个情况. 我认为考研复习过程中心态很重要，要始

终保持一种积极乐观的心态，不要给自己太大的压力，更不要和别人比，也切忌和自己比。每天给自己制定一个小计划，不断地鼓励

自己，每天进步一点点。我认为复习时一定要讲究效率和方法，不要打疲劳的时间战和死记硬背，这样不但使自己很累，而且长此以

往让自己失去了学习的乐趣。我每天保证6个小时高效率的学习。学习累了，可以去锻炼一下身体，打一下乒乓球，缓解一下紧张的

思维，再回去开始学习，这样效率很高。复习的环境也很重要，尽量避开人多的地方，让自己全心身地投入到复习中。同时也可以找

个一个志同道合的考研同伴，一起互相监督鼓励。要注意身体，考研是持久战，好身体才是革命的本钱，要注意及时补充能量，保证

良好的睡眠，才能保证第二天有很好的学习效率。</p>\n<p>下面将就各门功课的复习体会总结一下：</p>\n<p><strong>政治方面

：</strong></p>\n<p>我参加了政治辅导考研班，辅导班有好处也有坏处。辅导班的老师可以很系统的把整个教材熟悉一遍，让你

捋清楚政治的大体框架，同时分清重点难点。让你大体上对政治考试心里有个数。还有辅导老师所讲解一些解题技巧答题方法也是比

较受用的。但是要认清一点，辅导班不可全信。尤其是押题部分不可完全依赖于此。选择题中多选题比重大，分值高，单选题范围大

，灵活，所以要多做所选题练兵，通过做题掌握理解政治方面的知识点。大题的话只要平时熟悉那些基本知识点，学会用政治语言答

题，政治一般不会有太大问题。同时注意每年发生的热点问题，结合政治理论分析。所以政治不要盲目迷信那些辅导班打中多少题，

当然能打中一些题，但不要把宝全部压在上面，还是要塌实全面掌握基础知识，学会学活，这样无论遇到怎样的题都能应付自如。

</p>\n<p>在保持每天做题的同时，注意梳理各门课知识点，捋清思路，弄清原理，最后形成体系，重在理解，不能死记硬背，面掌

握知识点，抓中重点热点问题，逐一攻破。切不要因为模拟题做得不好而垂头丧气，自己曾经对自己说&ldquo;模拟题跟真题最不一

样的地方就是模拟题是错的越多越好&rdquo;。也不要因为做得不错而沾沾自喜，要调整好心态，沉着应战。答题时要保持清醒的头

脑，不断给自己心里暗示：我行的！审题很重要，整理好思路再做答。注意字迹尽可能工整，尽量切中要点，不要废话连篇，浪费时

间。</p>\n<p><strong>英语方面：</strong></p>\n<p>英语方面一方面是靠平时的积累，另一方面也考复习时候的冲刺。作文和

阅读占据了很大的分值。这也就意味着词汇量非常重要。很多同学都为背单词发愁，其实背单词也就这一定的技巧与方法。可以通过

做阅读来背单词，首先第一遍按照考试阅读理解的要求来做，第二遍要把不认识的单词，尤其是常用的不认识的单词亲自动手查一遍

，这样记忆深刻。第三遍，运用自己查好的单词再读一遍文章，深入理解文章大意。这样既锻炼了自己的阅读能力，也很有兴趣的背

了单词。中外文章在写作方式方法上存在差异，要始终站在作者的角度上去理解文章大意，回答问题。同时阅读理解有一定的难度，

不必每一句都要看懂，有很多答题技巧,比如&ldquo;最远的你是我最近的爱&rdquo;也就是说与原文越相似的可能就越是迷惑性答案

；再比如符号和转折词的运用，当出现转折词的时候，只要看转折的部分即可，前面的内容看不懂也不要紧。写作部分也很重要，一

是靠平时多读多背一些经典的语句，二是要学会用一些模板，很简单的单词表达清楚自己的意思，同时要注意审题，切忌跑题，注意

掌握答题时间。英语真题很重要，虽然不会出现相同的阅读写作文章，但是重要词汇重复率很高，可以通过做真题来被重点词汇。同

时真题要会用，我重点做了近三年的真题，前面所说的三遍式理论重点复习。而其它年份的真题当成是练兵，不做单词查阅等工作。

现在可以试着做两套真题。看看自己的实力大概是多少分。然后看看自己哪个部分比较弱，比如其中7选5比较难，就可以平时多做些

这方面的题。最后冲刺阶段要学会合理安排答题顺序和时间，把自己把握大的分值高的部分先做，保证会做的不会因为没有时间而丢

分。</p>\n<p><strong>专业课方面：</strong></p>\n<p>专业课很重要，要花了很多时间很多精力都耗在专业课上了。首先要准

备好报考学校的考试用书，最好找到考试科目的笔记和真题，对他们本校老师出的教材,一定要多加注意.因为一般学校指定的教材不

是自己的老师自己出的就是自己的老师参与其中的几个章节的编写.对这部分,一定要认真复习的.出卷的老师一般就喜欢出自己的研

究成果.还有一个重要的环节就是要拿到历年的试卷,然后对试卷要进行认真研究,尽量找出他们的命题规律,就算是考过的,不要以为

不会再出现.也要认真的把握.至于连续几年都出现的题目也有可能是今年的重点.我自己专业课就是按照上面两个方法来复习的.我觉

得这样子的复习方法还是挺有用处的.同样我也是采用了&ldquo;三遍式&rdquo;的复习模式：第一遍看课本，重在理解课本上的各个

知识点；第二遍整理课本，找出所有知识点，并动手整理在本子上；第三遍认真分大类归纳整理各大部分重点内容。最后达到灵活运

用，要能看着目录，写出每部分的重点内容。同时要学会利用往年真题，反复研究真题，尽可能抓住真题出题范围</p>', 

'1399291446', 2, 0),
(31, '湖南师大设计专业考研经验', '<p>以下是一位报考湖南师范大学的同学的<a 

href="http://www.yuloo.com/kaoyan/kyjy/">考研经验</a>分享，供大家参考：</p>\n<p>　　我考得湖南师大美术学院的设计

专业，今年初试总分397。复习了大半年，等待四月份的复试了。</p>\n<p>　　我觉得艺术专业的学生一定要把政治英语基础打劳。

复习很久的一种感觉其实就是不知道自己的进展。其实复习久好处就是基础都已经潜移默化的打牢了，变成了一种常识。而不是新鲜

事新动态。下面具体说说。</p>\n<p><strong>　　政治</strong></p>\n<p>　　暑假我才正式开始看的，之前收集了一些章节的

轮廓，有一个很清楚的逻辑线。(比如哲学可分为2、3、5&mdash;&mdash;2观3对5范畴)你们可以试试这么做，记住关键词，然后多

念几遍这句话，并且理解书中的一些例子。效果很明显。。建议按照这个顺序去复习&mdash;&mdash;哲学、近代史、思修法基、毛

中特。(因为毛中特的修改相对来说每年是最大的,有时候你复习完了却不一定见得会考到。但是学好毛中特对近现代史有很大的帮助

)。</p>\n<p><strong>　　英语</strong></p>\n<p>　　这个不是我强项啊。只考到60分。你们自己琢磨把。</p>\n<p>　　要培

养做题的感觉，有时候你不一定会看懂，但是你能选对答案。到了这种境界就无敌了。记住一点，基础很重要，绝对不要相信三分钟

教你怎么样怎么样。历年真题词汇肯定必须会，学好词根。多揣测出题人的思维和陷阱，这些要靠自己去领悟了。</p>\n<p>　　今

年的B部分全对了，本来在考场上的最后15分钟我准备放弃这道题，还是耐心的看了一下，你会发现，你会压抑，其实最深处的秘密

就是逻辑，上下文很紧凑。线性思维特别强，很多语义场你会找到，每次你找到一个答案，你离胜利就不远了。</p>\n<p>　　作文

的话要提前背好，找些简单神奇句往往是亮点。最好多背些例子，哪篇文章都用得着，这叫做举例论证法，并且学会例子万能使用。

把例子和文章主题做一个粘结就是看你的本事了。</p>\n<p><strong>　　专业一</strong></p>\n<p>　　(针对文科类)一定要学

会总结，必要的时候必须要背。很多东西不是我们能理解的。很多名词解释都是有标准答案的。找到历年真题，划考试频率，今年我

考的专业差不多压对了100+分。当然平时不能押题，只能面面俱到的复习，到后期就要有重点，分清主次。</p>\n<p><strong>　　

专业二</strong></p>\n<p>　　手绘科目。不做详解。</p>', '1399291555', 2, 0),
(32, '二战厦大考研经验', '<p>以下是一

位二次报考厦大同学的<a href="http://www.yuloo.com/kaoyan/kyjy/">考研经验</a>分享，供大家参考：</p>\n<p>　　第一年

考了185分。今年数学错2个，逻辑错3个。英语75分+，应该能进复试了吧。两年来，一直在考研论坛潜水，从未发贴，从未回复。但

是感谢考研论坛的亲们一直以来的陪伴，如果没有你们，我可能坚持不了2年，么么哒。今天写下此文，不想炫耀今年的成绩，只为

祭奠我两年的青春!也希望为后来者提供一点些许的经验。</p>\n<p><strong>　　(1)一战厦大之备考篇</strong></p>\n<p>　　

我家是江苏，高考考到了济南的一个三本院校，哪个学校就不说了。我不是特别聪明，一直是笨鸟先飞，但，2012年3月开始备考。

</p>\n<p>　　数学一开始是机工社数学精点的编者L某某讲的，号称基础L，不得不说他的基础班还是讲的不错的，但是到了提高阶

段就无力吐槽，实在没水平，《数学精点》这本书也是一点条理都没有，想买这本书的同学我看还是算了。</p>\n<p>　　逻辑，换

了三个老师，频繁换老师也太不靠谱了，每个老师思路均不相同，学的一头雾水。</p>\n<p>　　写作W老师讲的，讲的还是挺不错的

。英语我一直还算不错，所以没怎么去听课。</p>\n<p>　　陈剑的数学功底确实很厚，名气也大，很迷信他，就想刷他的高分指南

，题目又难又偏，做的很痛苦。但是还是坚持做完了。但是真到考试那一天才知道，他的题目确实太偏了，和真题的命题思路根本不

一样，学的很累，但最后也没考好。</p>\n<p>　　杨武金的逻辑高分指南，真的很渣，方法太学术化了，学的一样很累。</p>

\n<p>　　C老师的写作，很有名气，但听过W老师的课以后，发现写作老师的思路都差不多，没再关注他。</p>\n<p>　　2012年12

月，找到了L老师给我做1对1辅导，价格就不说了，反正不便宜。L老师给串讲了数学和逻辑，听完他的方法以后，才知道以前的学习

思路实在差的太远了，听完他的课以后立即有豁然开朗的感觉。数学，他把所有真题的题型，题型的变种，以及每种变种的方法都做

了总结。逻辑l老师有一套非常简单的方法，形式逻辑都口诀化了，背过口诀就会做题了，发现以前学的大部分逻辑知识都用不着。

论证逻辑是我的难点，这里必须吐槽一下，我听过4个逻辑老师的课，论证逻辑都没讲清楚。L老师对论证逻辑的总结全面又很有效果

。一下子很崇拜他，感觉他才是真正的大师。不知道为什么他不如别的老师出名。</p>\n<p><strong>　　(2)一战厦大之考试篇

</strong></p>\n<p>　　最后一个月，提高很快，心里有谱了，但是，考前两天，发烧，痛经，女孩子们懂的。进了考场以后，状

态也不好，最要命的是我大作文没写完。回来哭了一个晚上。</p>\n<p>　　2013年初，没准备复试，回老家玩了两个月。爸妈要托

人帮我找工作，但我心中的厦大梦还没有熄灭，虽然文凭已经不再那么重要，但不想带着一个三本的文凭过这一辈子，而且也想去厦

门那个美丽和浪漫的城市玩2年，于是决定二战。</p>\n<p><strong>　　(3)二战厦大之备考篇</strong></p>\n<p>　　2013年2月

回到学校，3月开始准备二战，大四了，同学们，有人在准备考研复试，有人签了工作拼命的玩，还有一些人在拼命的找工作。只有

我，天天背着书包去上自习，心中的落寞可想而知!</p>\n<p>　　更痛苦的是到了6月，同学们都离校了，各自去投奔自己的前程，

一个人看着空荡荡的宿舍，哭了很久，为什么上帝给女人这么多眼泪呢?</p>\n<p>　　在山东财经大学旁边合租了一个考研公寓，3

室2厅的房子，隔成5个小间，我租了其中一间，800块钱。房东是个四十岁的中午女人，泼辣蛮横，说多了都是泪。考研公寓的好处

就是，你身边的人，也和你一样在考研，很多也是在二战，也许彼此搀扶就有了前行的勇气，是吗?在这里我认识了研友小H，感谢她

大半年的陪伴。</p>\n<p>　　因为是二战，压力很大，基本每天都学十个小时。写小纸条给自己，告诉自己不要放弃，给自己加油

打气。累了看个励志电影。上考研论坛看一下同病相怜的研友的故事。时间就这么一点一点的过去，漫长又短暂。</p>\n<p>　　这

一年，我没有报辅导班，只相信L老师，因为他数学逻辑写作都懂，英语我学的不错，报辅导班也没必要了。打电话求他给我上1对1

，可惜他课讲的好，名气也比上一年大多了，找他上课的机构太多了，所以他一直没给我上课。</p>\n<p>　　但是幸运的是，一家

石家庄的机构请他讲了数学、逻辑、写作的全程课程，并且录了视频。我就要了一份L老师的视频，按他的方法学习，仍然不得不说

一句，他的方法确实太好了。让我这样的笨鸟也学的挺轻松的。但是二战，你懂的，不敢放松，还是每天坚持学十小时。</p>\n<p>

　　更加幸运的是，以前上L老师1对1的课，和他处的关系还不错，所以他写的书《老L数学》《老L逻辑》2014年才上市，但我2013

年下半年就拿到书稿了，我如获至宝，获益匪浅!我相信这是最好的数学和逻辑书。</p>\n<p><strong>　　(4)二战厦大之考试篇

</strong></p>\n<p>　　2014年1月3日，考前一天，我去考场旁边订了个酒店，晚上睡的不错。1月4日，考试，我居然忘了带身份

证!眼泪又止不住流，苦苦学了两年，又这么完了。感谢监考老师，让我进去考试，说考完试前把身份证送来即可(也提醒一下学弟学

妹们，千万别再犯我的错误了，细节决定命运!)后来才想起来，订酒店时把身份证落在前台了。还好，考试结束前，身份证送到了。

考试前10分钟，受了很大的影响，后来心想，还是安心做题，如果身份证到不了，这就是命!如果身份证到了，至少我不会因为自己

没好好考试而遗憾!</p>\n<p>　　1月4日晚上，对答案。L老师在微博上发布的数学答案和逻辑答案都得到了广泛认可。对完答案，

数学错2个，逻辑错3个，心放下了。</p>\n<p><strong>　　(5)辅导资料大点评</strong></p>\n<p>　　本人学了两年，基本上市

面上有的书都买过，没买过的也从同学那里看到过。点评一下，仅是个人意见，不喜勿喷。</p>\n<p>　　综合之数学</p>\n<p>　

　1.《数学高分指南》陈剑著，北航出版社。12年看的此书，此书思路和真题差异太大，题目又偏又难，适合考清华人大的同学或者

极度聪明的同学或者或者喜欢自虐的同学。</p>\n<p>　　2.《数学分册》袁进著，机械工业出版社。本人12年第一轮复习用书，基

础不好的同学，第一轮复习最佳用书。第二三轮此书必扔。</p>\n<p>　　3.《老L数学》L著，北京理工大学出版社，本人2013年复

习用书，用的是此书手稿，秒杀前两本书，总结全面技巧性强，基础差的同学第二轮看，基础好的同学直接看即可，此书必看2遍以

上。</p>\n<p>　　4.《机械工业出版社鲜红色的一套书》周远飞著，没看过，不评论。</p>\n<p>　　5.《老蒋笔记数学》机械工

业出版社，13年买来，看了一眼扔了，装*书，不推荐。</p>\n<p>　　6.《数学精点》机械工业出版社，13年买来，看了一眼扔了

，条理性极差，大量与真题无关的知识，极度不推荐。</p>\n<p>　　7.《数学核心笔记》12年看过此书第一版，L写的，质量不高

，不推荐。后来又见到此书新版，牛渤雄写的，比较简单，适合MBA或基础差的同学第一轮复习，但小错误有点多。</p>\n<p>　　综

合之逻辑</p>\n<p>　　1.《逻辑分册》，机械工业出版社，12年看的，很一般的书，不推荐。</p>\n<p>　　2.《逻辑精点》，赵

鑫全，机械工业出版社，12年上半年看的，一开始看的时候感觉不错，学了L老师的方法后发现不如L老师方法好，还是推荐吧。

</p>\n<p>　　3.《逻辑高分指南》太奇版北京航空航天出版社，12年下半年买来此书，最烂的逻辑书，纯学院派方法，方法太古板

了，极度不推荐。</p>\n<p>　　4.《老L逻辑》L，北京理工大学出版社，13年看的此书手稿，看了此书后才发现之前学的逻辑方法

走了很多弯路。此书是方法最好解析最清晰的逻辑书，极度推荐。</p>\n<p>　　另外，还看过人大版的一个逻辑题库，名字记不清

楚了，做题库用不错，推荐。</p>\n<p>　　综合之写作</p>\n<p>　　1.《写作分册》赵鑫全，13年看的，机械工业出版社，推荐

。</p>\n<p>　　2.《写作高分指南》C，12年看的，北京航空航天出版社，和赵鑫全两种思路，但也不错，推荐。</p>\n<p>　　3.

《写作精点》，机工社，没看过，不评价。</p>\n<p>　　4.《写作核心笔记》W著，跨考发的书，综合了赵鑫全和C的方法，创新的

地方不过，不过考试作文也不用什么创新，推荐。</p>\n<p>　　14年弄到了模考版的6套卷，数学前2套不错，后4套难度太高，和

真题不符。写作题出的那叫一个奇葩。别的模拟题没做过，不评价。</p>\n<p>　　英语二</p>\n<p>　　我的英语基本功不错，所

以学的不是很费力气。单词我看过两本，一本新东方的MBA红宝书，一本跨考发的33天考研英语单词。两本都不错，后来喜欢第二本

。真题看的陈正康的超精解。其他所有英语书都是看的蒋军虎的《老蒋笔记》系列。</p>\n<p>　　(6)最后的话</p>\n<p>　　现在

正在准备厦大的复试，好想去那个美丽的城市，好想去那个美丽的校园。有厦大的战友吗?有好的复试材料可以共享吗?谢谢大家。也

祝愿学弟学妹们能考出好成绩。</p>', '1399291777', 2, 0),
(33, '2014年外经贸国际法考研经验', '<p>2014刚考完。考下来

感觉也不是很好，因为很多东西没看到，个人疏忽的缘故也有，时间问题的因素也有。不过在复习过程中还算是有些心得，跟大家分

享一下 吧，如果觉得有用的话至少可以少走一些弯路。复习要用到的资料放在网盘里，大家去下一下就好，真题法条课件什么的，

我自己用的就这些，全部传上去了。</p>\n<p>　　关于考研么，我也不会说什么雄心壮志的话，反正每个人决定考研都各有各的理

由，别抱着考着玩的心态就好。</p>\n<p><strong>　　【择校】</strong></p>\n<p>　　在择校方面，我觉得首先定个大致范围

吧，什么档次，哪几所学校;然后把你想考的几所学校、专业的真题找来看一看，看看出题的内容角度什么的是不是对你胃 口，加上

录取分数线再权衡一下，决定最终的目标院校会比较好。我个人的体会以及观察一些二战同学的感受就是，看起来难考的学校不一定

题目难，当然题目简单 的话分数线就高。。总之以考题+分数线为参考标准会更靠谱些。</p>\n<p>　　我个人对外经贸蛮有好感的

，而且这年头法律英语的重要性毋庸置疑啊，我的同学们不管是出国的还是研究生在读的，都在感叹这一点(没错我是二战，不过一

战没 考外经贸，而且想着法商结合嘛就考了商科的专业，败北。出校门实习之后才意识到自己真的连法律的基础都不扎实，痛下决

心重新好好学习)。</p>\n<p>　　我自己的实力情况是，法本，本科学校很一般，学的是跟国际商法沾边的一个法律，但是基础。。

可以说很不扎实吧，学的时候还行，学完就忘。英语倒蛮自信的，法律英语也觉得掌握得还不错，在外企实习的时候翻译文件啊帮着

改改合同都没什么大问题。</p>\n<p><strong>　　【专业课】</strong></p>\n<p>　　下面就直接讲讲复习了。因为司法考试，

九月下旬才开始复习，之前什么都没看过。我觉得有一定基础的同学可以先把真题翻一翻，看看出题的角度，再有的放矢的复习会更

好;非法本的话呢，看真题前还是先把书老老实实的看一遍再说。</p>\n<p>　　我自己对真题的感受是：</p>\n<p>　　民法，基本

上都有可能会出题，所以仔细看仔细背才是王道。今年大题目考了医疗责任，我就没看到，复习的时候重点都放在合同法上了QQAQQ

总之，每一个标题下的内涵都要弄清楚，小地方还会出选择题。选择题的话之后再讲。</p>\n<p>　　刑法，前几年真题基本都是简

答考一个罪名，论述考总则里面一个概念。结果今年分则没考==我进考场之前 还在背罪名呢_(:з」&ang;)_所以总则认真看吧。不

过分则喜欢考破坏市场经济秩序罪里面的内容，而且考的也都是那种构成要件可以展开来写的罪名。学校还是 蛮仁慈的。不过也不

能保证以后不变。</p>\n<p>　　法理学，法的本体那一编多考选择题，尤其在法的要素那边，考你法律概念的分类啊法律规则的分

类。法的起源和发展，法的运行，法的价值这三编容易考论述，最后一编随便看看吧，我自己就没看，也基本没考过。其他的抱歉我

不太记得了。</p>\n<p>　　国际商法，这本书今年考得蛮简单的。前几年倒是考得也挺细的，什么欧盟的产品责任啊，各国合同法

里面的对比都有。还有要注意的就是，国际商法里面的所有的名词，带英文的都记下来吧，以前在专二里都有考过名词解释。</p>

\n<p>　　法律英语，大家都看得出来，法律英语里面WTO的内容考得越来越多了。我复习的时候是用沈四宝老师那本 世贸组织教程+

他的课件一起看的。考题的话，第一题考过反补贴、反倾销的内容，翻译也是，所以最好是把trims,trips,scm之类的相关法条都翻 

一翻，一些专业名词心里一定要有数;另外我国的合同法、公司法的中英版本，我觉得不一定要全部看，但是也要熟悉专业名词，比

如抵销的英文啦，提存的英文 啦;当然像CISG，入世议定书这两个显然重要的肯定要重视，我自己是把这两个法条手写英翻中翻了两

遍的，翻到第二遍的时候对法条基本的结构和遣词都把握 住了，看到其他的法条也自然会写了。法条的搜索可以去westlaw,我实习

的时候律师们说westlaw的法条翻译比北大法宝要好。</p>\n<p>　　名词解释呢，除了之前讲过会考国际商法那本书里的，还有就

是论坛里大家贴出来的粉皮书上的单词，其他就比较杂了，今年还考了保函什么的，我自己在复习的时候都没有看到，得亏本科学了

一些相关的课，就自己写写了，这方面实在是没有什么复习法门。抱歉。</p>\n<p>　　案例的话，粉皮书和丁丁老师的英美商事组

织法，我自己法英主要就是法条上花了时间，这两本书我都没看完，复习前期一天看1-2个案例，生词查了意思写上 去，到12月份忙

着背书也就不看了。考前几天翻一翻那些生词。案例大概就是每年公司法上出一个，民法上出一个，觉得不算很难吧。。布莱克词典

我觉得没必要 买，用灵格斯就可以查，或者有道词典其实也HOLD住。不过词典我也上传了。</p>\n<p>　　没有接触过法律英语的

同学可以先看看何主宇老师那本《英美法案例研读全程指南》，也上传了，在&ldquo;参考书目&rdquo;里。当然这本书里面有很多

关于程序法上的内容可 以略看。本科我们学校的法律英语教材是这本《21世纪法律英语》，我觉得蛮好的，单词表里的单词都很有

用，而且每一章节后面有填空、翻译等题目，做过题目 会掌握得牢固些。时间充裕的同学可以看一看。</p>\n<p>　　选择题。选择

题60分也不是个小数目，而且最坑爹的是出题角度越来越像司法考试了啊，何止是非法本的同 学啊，法本都不一定HOLD得住，得准

备过司法考试才行==所以大家在复习的时候可以找司法考试的材料来，民法得听一遍强化班的节奏，比如今年考了个违约 金达到百

分之多少认为是过高，我是在司法考试音频里听到的，自己看书没看到啊。。也可能是看书不细;民诉、国际法、宪法看看讲义;刑法

我觉得不难;法制史 总会考到一点以前的真题，今年宪法考了好几个题目。。大坑啊，都是蒙的。。考过司考也没用，考完就忘。

</p>\n<p>　　751这张卷子是给国际法、民法、刑法、诉讼法和宪法专业的人一起考的，觉得还是蛮考功底的，所以在选择题上这几

门课都不能懈怠啊。</p>\n<p>　　当然了，我对真题的把握也只限于近几年，往后的考题也是不断变化的，所以仅供参考啊。大家

自己看真题，肯定也有自己的领悟。</p>\n<p><strong>　　【统考课】</strong></p>\n<p>　　政治和英语我就顺便讲一下吧。

</p>\n<p>　　政治的话前期就是看大纲，做选择题，选择题我做的是肖秀荣的1000题。肖秀荣出的题目就是挺细的，做完对很多细

节都会掌握的比较好，不过真题的话，风格 就完全不一样了，很侧重时政的。时政很重要，无论大题目、选择题都是跟时政息息相

关的，政治押题的老师比较多，肖秀荣、田维彬什么的，还有启航的20天 20题，最后一个月照着他们说的好好背背就行。</p>

\n<p>　　英语我自己基础还不错，而且复习的时间也有限，所以没看。。==就做了三套真题。9-11月份每天用手机APP背背单词。

单词是背了托福单词，翻来覆去 背，考研的文章都是从theeconomist之类的报刊杂志里出的，我觉得托福单词更实用些。个人觉得

考英语就是考单词，文章看不懂主要还是因为生词的 缘故，单词认识的越多，阅读也就越简单，而文章看懂了，不管题目怎么出都

是会做的【当然有的题目就是出了刁难人的就没办法了。作文的话，别讲空话，别是个 句子就堆上去，句子平庸不是什么问题，但

是写出来的东西一定要有点逻辑，分数不会太低的。当然你要是能不重复用词就更好了。雅思、托福作文其实都是这个标 准。英语

嘛，就是以逻辑为重的。大家看法英的案例其实也能感受到了。</p>\n<p>　　就这么多了。我只是说一点自己的体会和心得吧，个

人的认识总是局限的，不过还是希望能帮到大家一点。</p>', '1399291871', 2, 0);

-- 

--------------------------------------------------------

--
-- 表的结构 `plan`
--

CREATE TABLE IF NOT EXISTS 

`plan` (
  `plan_id` int(30) NOT NULL AUTO_INCREMENT COMMENT '计划序号',
  `user_id` int(30) NOT NULL COMMENT '

用户id',
  `username` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `plan` mediumtext COLLATE 

utf8_bin NOT NULL COMMENT '计划内容',
  `plan_begin` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '开始时间',
  

`plan_end` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '结束时间',
  `care_list` varchar(800) COLLATE 

utf8_bin NOT NULL COMMENT '关注列表id_name格式',
  `image_list` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 

'图片列表id_name_plan.id_num格式',
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 

COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `plan`
--

INSERT INTO `plan` (`plan_id`, `user_id`, 

`username`, `plan`, `plan_begin`, `plan_end`, `care_list`, `image_list`) VALUES
(1, 4, 'Anamary', '123', 

'26/04/2014 17:50', '28/04/2014 18:50', '4_Anamary,', ''),
(2, 4, 'Anamary', 'hello', '26/04/2014 18:57', 

'28/04/2014 18:57', '5_WBB,4_Anamary,', ''),
(3, 4, 'Anamary', 'today I finish a work', '30/04/2014 19:15', 

'30/05/2014 13:16', '5_WBB,4_Anamary,', ''),
(4, 4, 'Anamary', 'hello', '27/04/2014 17:43', '27/04/2014 17:43', 

'4_Anamary,', ''),
(5, 4, 'Anamary', 'testplan', '27/04/2014 18:25', '27/04/2014 20:25', '4_Anamary,', ''),
(6, 

4, 'Anamary', '回家', '01/05/2014 08:56', '03/05/2014 08:57', '4_Anamary,', ''),
(7, 4, 'Anamary', 'hello world 

right', '29/04/2014 14:55', '30/04/2014 14:55', '4_Anamary,', ''),
(8, 4, 'Anamary', 'dasd', '29/04/2014 

18:05', '30/04/2014 18:05', '5_WBB,4_Anamary,', ''),
(11, 5, 'WBB', '创造一个无比强大的网站，然后做到很酷的东西', 

'05/05/2014 13:14', '09/05/2014 13:14', '4_Anamary,5_WBB,', ''),
(12, 4, 'Anamary', '写完毕业设计，成功毕业', 

'05/05/2014 21:09', '05/05/2014 23:10', '4_Anamary,', ''),
(13, 4, 'Anamary', 'nice work', '06/05/2014 02:49', 

'06/05/2014 05:50', '4_Anamary,', '');

-- --------------------------------------------------------

--
-- 表的结构 

`postcontent`
--

CREATE TABLE IF NOT EXISTS `postcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章

id',
  `userid` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `title` 

varchar(30) COLLATE utf8_bin NOT NULL,
  `content` mediumtext COLLATE utf8_bin NOT NULL,
  `content_short` 

varchar(100) COLLATE utf8_bin NOT NULL COMMENT '内容一部分',
  `posttime` varchar(30) COLLATE utf8_bin NOT NULL 

COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `postcontent`
--

INSERT INTO `postcontent` (`id`, `userid`, `username`, `title`, `content`, 

`content_short`, `posttime`) VALUES
(30, 0, 'Anamary', '开始', '有那么一群小孩子在一大块麦田里做游戏。几千几万个小

孩子，附近没有一个人——没有一个大人，我是说——除了我。我呢，就在那混帐的悬崖边。我的职务是在那儿守望，要是有哪个孩

子往悬崖边奔来，我就把他捉住——我是说孩子们都在狂奔，也不知道自己是在往哪儿跑。我得从什么地方出来，把他们捉住。我整

天就干这样的事。我只想当个麦田里的守望者。', '有那么一群小孩子在一大块麦田里做游戏。几千几万个小孩子，附近没有一个人

——没有一个大人，我是说——除', '1397649400'),
(31, 5, 'WBB', '平淡', '当我的生命里只能讲一个故事的时候，我愿意将

这个故事说出来，这个故事平淡无奇，平铺直述，既没有曲折，也没有高潮，也就是寻找，相识，分开，就如同走在路上看见一盏红

绿灯一样稀松平常，但若驻足，你会发现，它永远闪着黄灯。我就一直看着这盏信号灯，在等下等了很久，始终不知道黄灯结束以后

将要亮起的是红色还是绿色，一直等成了一个红绿色盲。', '当我的生命里只能讲一个故事的时候，我愿意将这个故事说出来，这个

故事平淡无奇，平铺直述，既没有曲折，也', '1397650920'),
(32, 5, 'WBB', '1988', '多年前，记者问韩寒，你觉得自己小说

写得好还是杂文写得好？他说，小说。多年后，他说，《1988》是他写得最满意的一部。 <br/>　　他是诚实的。 <br/>　　 

<br/>　　杂文就像楷书，一眼就知道功底美丑，最易得到首肯；小说却像草书，毕竟很难第一眼就看懂，既可能是灵动的狂草，也

可能是幼稚的潦草。懂行的或者附庸风雅的人，会惊为佳作；不解风情者，就会像老一辈评价周杰伦的音乐一般：什么乱七八糟的东

西。 <br/>　　 <br/>　　韩寒曾说，好的文字分三等，上等是传递给读者一种情绪，次一等是文字本身就不错，再就是文以载道。

一直以来，他的杂文排序是：文笔，文以载道，情绪。偶尔，出现一篇类似《青春》的佳作，让悲凉的情绪贯穿全篇。而小说方面，

几乎从《三重门》之后，就一直是情绪和文笔不相上下。一路以来，速写着漂泊和荒诞，有时候没用心，速写还会变成乱写。从《一

座城池》开始，尝试新的语言风格，脱掉浮华，褪去机巧，减少文字游戏，试着透过叙述本身传达情绪。到了《他的国》，封面上那

句“野草冲破土壤，它们一百三十度仰望的天空在哪里？”，标志着他写意的笔锋已经成型，和杂文的刻意雕琢区分开来。终于，到

了这本《1988：我想和这个世界谈谈》，大面积地抛弃文字游戏，不再反讽，不再嚣张，只有冷冰冰的叙述，叙述，再叙述。排版松

散过了头的铅字之间，溢出一种超越言说之外的冷酷和无奈，韩寒将它命名为情绪，传统的评论者则取名为意境。 <br/>　　 <br/>

　　“空气越来越差，我必须上路了。” <br/>　　“我就是一个玩捉迷藏的时候喜欢躲在床底的那个人，而孟孟是一个喜欢把床底

留在最后看的人。” <br/>　　“‘虚惊一场’这个词是人世间最美好的成语，比起什么兴高采烈，五彩缤纷，一帆风顺都要美好百

倍。你可懂什么叫失去？” <br/>　　“ 我说，丁丁哥哥，你去做什么啊？ <br/>　　 丁丁哥哥说，我去和他们谈谈。 <br/>　

　 我说，你和谁谈谈啊？ <br/>　　 丁丁哥哥唇边露出微笑，急切地说，这个世界。 <br/>　　 我说，哇噢。 ” （《1988》） 

', '多年前，记者问韩寒，你觉得自己小说写得好还是杂文写得好？他说，小说。多年后，他说，《1988》是他写', 

'1397651011'),
(33, 4, 'Anamary', '真理', '真理往往是在少数人手里，而少数人必须服从多数人，到头来真理还是在多数人手

里，人云亦云就是这样堆积起来的。第一个人说一番话，被第二个人听见，和他一起说，此时第三个人反对，而第四个人一看，一边

有两个人而一边只有一个人，便跟着那两个人一起说。可见人多口杂的那一方不一定都有自己的想法，许多是冲着那里人多去的 ', 

'真理往往是在少数人手里，而少数人必须服从多数人，到头来真理还是在多数人手里，人云亦云就是这样堆积起来', 

'1399302121');

-- --------------------------------------------------------

--
-- 表的结构 `userifm`
--

CREATE TABLE 

IF NOT EXISTS `userifm` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) 

COLLATE utf8_bin NOT NULL COMMENT '用户名字',
  `email` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '用户邮

箱',
  `password` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  

DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `userifm`
--

INSERT INTO `userifm` 

(`id`, `username`, `email`, `password`) VALUES

(8, 'what', 'hello@qq.com', '123');

-- 

--------------------------------------------------------

--
-- 表的结构 `user_care`
--

CREATE TABLE IF NOT EXISTS 

`user_care` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NOT NULL COMMENT '用户id',
  `plan_id` 

int(20) NOT NULL COMMENT '计划id',
  `plan_user_id` int(20) NOT NULL COMMENT '计划用户id',
  `plan` mediumtext 

COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin 

AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `user_care`
--

INSERT INTO `user_care` (`id`, `user_id`, `plan_id`, 

`plan_user_id`, `plan`) VALUES
(1, 4, 3, 4, '\n					today I finish a work\n		

		'),
(2, 4, 1, 4, '\n					123\n				'),
(3, 

5, 8, 4, '\n					dasd\n				'),
(4, 5, 2, 4, '\n		

			hello\n				'),
(5, 5, 3, 4, '\n					

today I finish'),
(6, 5, 11, 5, '\n					创造一个无比强大的网站，然后'),
(7, 4, 

11, 5, '\n					创造一个无比强大的网站，然后'),
(8, 4, 12, 4, '\n			

		写完毕业设计，成功毕业\n		'),
(9, 4, 13, 4, '\n					nice 

work\n				');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET 

CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET 

COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
