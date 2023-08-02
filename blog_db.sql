-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 23, 2023 at 11:07 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin01', 'admin01@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `admin_id`, `user_id`, `user_name`, `comment`, `date`) VALUES
(1, 12, 1, 2, 'user01', 'Good News.', '0000-00-00'),
(2, 8, 1, 2, 'user01', 'good', '0000-00-00'),
(3, 6, 1, 2, 'user01', 'good', '0000-00-00'),
(4, 9, 1, 2, 'user01', 'Good News', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `admin_id`, `post_id`) VALUES
(27, 2, 1, 8),
(19, 2, 1, 5),
(23, 2, 1, 6),
(26, 2, 1, 7),
(28, 2, 1, 10),
(29, 2, 1, 11),
(30, 2, 1, 12),
(31, 2, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `admin_id`, `name`, `title`, `content`, `category`, `image`, `date`, `status`) VALUES
(5, 1, 'admin01', 'History of education', 'In Mesopotamia, the early logographic system of cuneiform script took many years to master. Thus only a limited number of individuals were hired as scribes to be trained in its reading and writing. Only royal offspring and sons of the rich and professionals such as scribes, physicians, and temple administrators, were schooled. Most boys were taught their father&#39;s trade or were apprenticed to learn a trade. Girls stayed at home with their mothers to learn housekeeping and cooking, and to look after the younger children. Later, when a syllabic script became more widespread, more of the Mesopotamian population became literate. Later still in Babylonian times there were libraries in most towns and temples; an old Sumerian proverb averred &#34;he who would excel in the school of the scribes must rise with the dawn.&#34;[citation needed] There arose a whole social class of scribes, mostly employed in agriculture, but some as personal secretaries or lawyers. Women as well as men learned to read and write, and for the Semitic Babylonians, this involved knowledge of the extinct Sumerian language, and a complicated and extensive syllabary. Vocabularies, grammars, and interlinear translations were compiled for the use of students, as well as commentaries on the older texts and explanations of obscure words and phrases. Massive archives of texts were recovered from the archaeological contexts of Old Babylonian scribal schools known as edubas (2000–1600 BCE), through which literacy was disseminated. The Epic of Gilgamesh, an epic poem from Ancient Mesopotamia is among the earliest known works of literary fiction. The earliest Sumerian versions of the epic date from as early as the Third Dynasty of Ur (2150–2000 BC) (Dalley 1989: 41–42).\r\n\r\nAshurbanipal (685 – c. 627 BC), a king of the Neo-Assyrian Empire, was proud of his scribal education. His youthful scholarly pursuits included oil divination, mathematics, reading and writing as well as the usual horsemanship, hunting, chariotry, soldierliness, craftsmanship, and royal decorum. During his reign he collected cuneiform texts from all over Mesopotamia, and especially Babylonia, in the library in Nineveh, the first systematically organized library in the ancient Middle East, which survives in part today.\r\n\r\nIn ancient Egypt, literacy was concentrated among an educated elite of scribes. Only people from certain backgrounds were allowed to train to become scribes, in the service of temple, pharaonic, and military authorities. The hieroglyph system was always difficult to learn, but in later centuries was purposely made even more so, as this preserved the scribes&#39; status. Literacy remains an elusive subject for ancient Egypt. Estimations of literacy range from 1 to 5 percent of the population, based on very limited evidence to much higher numbers. Generalisations for the whole country, even at a given period, inevitably mask differences between regions, and, most importantly, between urban and rural populations. They may seriously underestimate the proportion of the population able to read and write in towns; low literacy estimates are a regular feature of 19th and 20th century attitudes to ancient and medieval (pre-Reformation) societies.', 'education', 'education.jpg', '0000-00-00', 'active'),
(6, 1, 'admin01', 'Wildlife and Nature', 'Sri Lanka’s wilderness is an exotic enchantment that has the sights and sounds of the beautiful Asian Elephants, feisty and elusive leopard, hairy sloth bear, the genteel deer, flamboyant birds and more exquisite creatures. Despite its small landmass, Sri Lanka boasts one of the highest rates of biological endemism in the world whether in plants or animals and is included among the top five biodiversity hotspots in the world. There are 22 National Parks in Sri Lanka and the most popular four Yala, Wilpattu, Minneriya and Udawalawe contain some of the most impressive wildlife found in Asia. Meanwhile the ocean around Sri Lanka is home to the mighty blue whales, sperm whales and lively dolphins.\r\n\r\nYala, in the south-east is the most visited National Park in Sri Lanka and the second largest. There are six other National Parks and two wildlife sanctuaries in the vicinity of Yala. The Park is famous for its elephants, leopards and aquatic birds. It has the highest density of leopards in the world and hosts 215 bird species. You can also see the Sri Lankan sloth bear and the wild water buffalo, which are threatened species. Menneriya National Park in the north-central province is a good place to spot large numbers of Asian elephants during July-August. Around 150-200 elephants migrate here from Wasgamuwa National Park, where the most number of Sri Lankan Elephants live. Minneriya Park consists of the Minneriya reservoir built in medieval times. The reservoir sustains these herds of elephants during the dry season and its catchment areas see a number of water birds.\r\n\r\nThe park is also an important habitat for the two endemic monkeys of Sri Lanka, purple-faced langur and toque macaque. You can spot the sambar deer and the axis deer here, while leopards and sloth bear are also found.\r\n\r\nWilpattu on the northwest part of the island is the largest national park in the country and is chiefly made of natural lakes, almost 60 of them. Here too, you can see elephants, leopards, bears, water buffalo, spotted deer and a large variety of birds and reptiles. Sri Lanka is also a whale and dolphin watching destination, in places on the south coast, northwest coast and east coast.', 'nature', 'Wildlife-Safari-Sri-Lanka.jpg', '0000-00-00', 'active'),
(7, 1, 'admin01', 'What are casual, hardcore and professional gaming?', 'Gamers are often ordered into several groups, depending on how often and how involved they are with gaming.\r\n\r\nA casual gamer is someone who irregularly plays games or who only plays a single low-intensity game. An example casual gamer would be someone who plays word or puzzle games on their smartphone while on public transportation or at home while watching TV. Casual gaming is the largest portion of the gaming market due to its wide appeal and the ease of access provided by smartphones. A casual gamer would often not self-identify as a gamer.\r\n\r\nA hardcore gamer is someone who regularly plays video games. They usually own dedicated video game devices, such as consoles or gaming PCs. A hardcore gamer often plays many games but focuses on one game or type of game they particularly enjoy. A hardcore gamer usually self-identifies as a gamer.\r\n\r\nA professional gamer is someone who makes money or supports themselves by playing games. Some are e-sports athletes who play video games at a professional level in tournaments. They may be part of a team, or clan, and play in broadcasted events. They may make money from tournament prize pools and from corporate sponsorships. They usually focus on only a single game. Another type of professional gamer is a streamer. A streamer makes money by posting video of them playing games. These videos are often done live and put on Twitch or YouTube. They make money from viewer donations, sponsorships and ad revenue.\r\n\r\nWhile these are the traditionally accepted categories of gamers, there is no definitive way to classify all gamers, and these categories are skewed toward traditional gaming culture. For example, a retired woman who plays a farming or Sudoku game on her iPad for many hours a day would be considered by many people a casual gamer, although she probably plays video games for more hours a month than a traditional hardcore gamer.', 'gaming', 'gaming-virtual-blue-adobestock.png', '0000-00-00', 'active'),
(8, 1, 'admin01', 'Cricket history', 'Cricket is a bat-and-ball game played between two teams of eleven players on a field at the centre of which is a 22-yard (20-metre) pitch with a wicket at each end, each comprising two bails balanced on three stumps. The batting side scores runs by striking the ball bowled at one of the wickets with the bat and then running between the wickets, while the bowling and fielding side tries to prevent this (by preventing the ball from leaving the field, and getting the ball to either wicket) and dismiss each batter (so they are &#34;out&#34;). Means of dismissal include being bowled, when the ball hits the stumps and dislodges the bails, and by the fielding side either catching the ball after it is hit by the bat, but before it hits the ground, or hitting a wicket with the ball before a batter can cross the crease in front of the wicket. When ten batters have been dismissed, the innings ends and the teams swap roles. The game is adjudicated by two umpires, aided by a third umpire and match referee in international matches. They communicate with two off-field scorers who record the match&#39;s statistical information.\r\n\r\nForms of cricket range from Twenty20, with each team batting for a single innings of 20 overs (each &#34;over&#34; being a set of 6 fair opportunities for the batting team to score) and the game generally lasting three hours, to Test matches played over five days. Traditionally cricketers play in all-white kit, but in limited overs cricket they wear club or team colours. In addition to the basic kit, some players wear protective gear to prevent injury caused by the ball, which is a hard, solid spheroid made of compressed leather with a slightly raised sewn seam enclosing a cork core layered with tightly wound string.\r\n\r\nThe earliest reference to cricket is in South East England in the mid-16th century. It spread globally with the expansion of the British Empire, with the first international matches in the second half of the 19th century. The game&#39;s governing body is the International Cricket Council (ICC), which has over 100 members, twelve of which are full members who play Test matches. The game&#39;s rules, the Laws of Cricket, are maintained by Marylebone Cricket Club (MCC) in London. The sport is followed primarily in South Asia, Australia, New Zealand, the United Kingdom, Southern Africa and the West Indies.\r\n\r\nWomen&#39;s cricket, which is organised and played separately, has also achieved international standard. The most successful side playing international cricket is Australia, which has won seven One Day International trophies, including five World Cups, more than any other country and has been the top-rated Test side more than any other country.', 'sports', 'Pollock_to_Hussey.jpg', '0000-00-00', 'active'),
(9, 1, 'admin01', 'Inflation to be single digit by end of this year.', 'The Central Bank of Sri Lanka says inflation is expected to come down to a 7 percent level in July 2023, an official said on Thursday (06 July).\r\n\r\n“The headline inflation is expected to decline further and stabilize around mid-single-digit level or the medium term, and in July, this month, we expect inflation to return to single-digit level, about 7% level”, Director of Economic Research at CBSL Dr. P. K. G. Harishchandra told reporters in Colombo.\r\n\r\nSpeaking with regards to the country’s inflation as a whole, Dr. Harishchandra stated that while disinflation continues, the core inflation for the month of June was reported at 9.8%, which, for the first time in a few years, was a figure below 10%.\r\n\r\nHe further pointed out that this disinflation has been supported by all major categories, including food and energy inflation.\r\n\r\nSri Lanka’s headline, core, food, and non-food inflation was reported at 69.8%, 50.2%, 94.9% and 57.6%, respectively, in September 2022, while in June 2023, they were 12.0%, 9.8%, 4.1% and 16.2%, in that order.\r\n\r\nComparing this outcome with the quarterly projection forecasted in April 2023, Dr. Harischandra highlighted that disinflation has occurred faster than initially expected over the last three months, mainly due to the falling food and energy inflation.\r\n\r\nThus, he noted that as per the revised quarterly projection, inflation is expected to return to mid-single-digit levels in the medium term.\r\n\r\nHe further assured that ongoing disinflation will be supported by several other factors, including the lagged impact of tight monetary and fiscal policies, the expected softening of energy and food prices and their spillover effects, the possible re-pricing of goods and services in light of the exchange appreciation and a favourable statistical base effect.\r\n\r\nMeanwhile, commenting on the recent decision made by CBSL’s Monetary Board to further reduce policy interest rates, CBSL Governor Dr. Nandalal Weerasinghe emphasised that all necessary regulatory action will be taken in\r\nthe event banks fail to pass on the benefits of the interest rate reductions to the public.', 'news', 'News.jpg', '0000-00-00', 'active'),
(10, 1, 'admin01', 'Nuwara Eliya – Covered With Lush-Greenery', 'One of the most beautiful Sri Lanka tourist places, this 19th century hill station Nuwara Eliya retains its colonial ambiance with its golf course, gentlemen’s clubs and mock-Tudor buildings. It is one of the most beautiful locations in Sri Lanka for a scenic rail ride. Experience the stunning views of the surrounding tea plantations, waterfalls and dramatic mountains the train takes you from Kandy to Nuwara Eliya. You wouldn’t want the ride to end! You can enjoy trekking in Kandy and explore the beauty of nature. It is one of the safest places to visiting Sri Lanka during Covid. If you are looking for best places to visit in Rishikesh in 2 days, Nuwara Eliya should be on your itinerary.\r\n\r\nLocation: Nuwara Eliya District, Central Sri Lanka\r\nFamous for: Stunning views of the surrounding tea plantations\r\nBest time to visit: February to May is the best time to visit Nuwara Eliya as the chances of rainfall are low and so is the temperature.\r\nHow to reach: There are frequent buses from Colombo and Kandy to Nuwara Eliya. However, thge bus ourney between Colombo and Nuwara Eliya takes a lot of time.\r\nWhere to stay: King Fern Cottage, Paradise Cottage, Haven Backpackers\r\nTourist attractions: Lake Gregory, Victoria Park, Pedro Tea Factory', 'nature', 'Nuwara-Eliya_4th-jun.png', '0000-00-00', 'active'),
(11, 1, 'admin01', 'Fashion definitions', 'The French word mode, meaning &#34;fashion&#34;, dates as far back as 1482, while the English word denoting something &#34;in style&#34; dates only to the 16th century. Other words exist related to concepts of style and appeal that precede mode. In the 12th and 13th century Old French the concept of elegance begins to appear in the context of aristocratic preferences to enhance beauty and display refinement, and cointerie, the idea of making oneself more attractive to others by style or artifice in grooming and dress, appears in a 13th-century poem by Guillaume de Lorris advising men that &#34;handsome clothes and handsome accessories improve a man a great deal&#34;.\r\n\r\nFashion scholar Susan B. Kaiser states that everyone is &#34;forced to appear&#34;, unmediated before others. Everyone is evaluated by their attire, and evaluation includes the consideration of colors, materials, silhouette, and how garments appear on the body. Garments identical in style and material also appear different depending on the wearer&#39;s body shape, or whether the garment has been washed, folded, mended, or is new.\r\n\r\nFashion is defined in a number of different ways, and its application can be sometimes unclear. Though the term fashion connotes difference, as in &#34;the new fashions of the season&#34;, it can also connote sameness, for example in reference to &#34;the fashions of the 1960s&#34;, implying a general uniformity. Fashion can signify the latest trends, but may often reference fashions of a previous era, leading to the reappearance of fashions from a different time period. While what is fashionable can be defined by a relatively insular, esteemed and often rich aesthetic elite who make a look exclusive, such as fashion houses and haute couturiers, this &#39;look&#39; is often designed by pulling references from subcultures and social groups who are not considered elite, and are thus excluded from making the distinction of what is fashion themselves.\r\n\r\nWhereas a trend often connotes a peculiar aesthetic expression, often lasting shorter than a season and being identifiable by visual extremes, fashion is a distinctive and industry-supported expression traditionally tied to the fashion season and collections.[6] Style is an expression that lasts over many seasons and is often connected to cultural movements and social markers, symbols, class, and culture (such as Baroque and Rococo). According to sociologist Pierre Bourdieu, fashion connotes &#34;the latest difference.&#34;\r\n\r\nEven though the terms fashion, clothing and costume are often used together, fashion differs from both. Clothing describes the material and the technical garment, devoid of any social meaning or connections; costume has come to mean fancy dress or masquerade wear. Fashion, by contrast, describes the social and temporal system that influences and &#34;activates&#34; dress as a social signifier in a certain time and context. Philosopher Giorgio Agamben connects fashion to the qualitative Ancient Greek concept of kairos, meaning &#34;the right, critical, or opportune moment&#34;, and clothing to the quantitative concept of chronos, the personification of chronological or sequential time.\r\n\r\nWhile some exclusive brands may claim the label haute couture, the term is technically limited to members of the Chambre Syndicale de la Haute Couture[9] in Paris.[6] Haute couture is more aspirational; inspired by art and culture, and in most cases, reserved for the economic elite.\r\n\r\nFashion is also a source of art, allowing people to display their unique tastes and styling.[10] Different fashion designers are influenced by outside stimuli and reflect this inspiration in their work. For example, Gucci&#39;s &#39;stained green&#39; jeans may look like a grass stain, but to others, they display purity, freshness, and summer.', 'fashion', 'How-to-Become-a-Successful-Fashion-Designer-7.jpg', '0000-00-00', 'active'),
(12, 1, 'admin01', 'Flights to Rhodes have been cancelled and tourists left in limbo after wildfires spreading across th', 'Holiday company Jet2 cancelled five flights to Rhodes, while TUI cancelled all flights there until Wednesday.\r\n\r\nThe deputy mayor of Rhodes, Athanasios Vyrinis said people were sleeping in cardboard boxes and warned that there are not enough essentials.\r\n\r\nReports now suggest about 18,000 people have been evacuated by land and sea.\r\n\r\nOne family has resorted to sleeping on mattresses on a conference room floor, while others are desperately searching for alternative accommodation.\r\n\r\nGreece&#39;s fire service has apologised and warned the situation could worsen.\r\n\r\nA further 1,200 will be evacuated from three villages - Pefki, Lindos and Kalathos.\r\n\r\nRhodes has been battling wildfires fanned by strong winds since Tuesday, as Europe deals with a challenging heatwave.\r\n\r\nAs Jet2 cancelled its flights to Rhodes, it said the planes would still bring tourists back home.\r\n\r\nEasyJet said flights were operating as normal.\r\n\r\nDeputy mayor Mr Vyrinis said: &#34;There is only water and some rudimentary food - we don&#39;t have mattresses and beds.&#34;\r\n\r\nSpeaking to Open TV from an assembly point, the deputy mayor said people were using cardboard boxes to sleep in and people arriving in Rhodes had nowhere to stay.\r\n\r\nLesley Young - who arrived in Lindos, Rhodes on Saturday morning - said she could not go to their hotel because it had been evacuated.\r\n\r\nDespite having holiday insurance worth £2,000 to use for alternative accommodation, Ms Young said: &#34;We have not been able to find anything at all.&#34;\r\n\r\n&#34;So we have been taken to the sister hotel of the one we booked and they have set up mattresses on the floor of one of their conference rooms.\r\n\r\n&#34;They have really tried to do the best but we have no idea how long we will be in this situation.&#34;\r\n\r\nMs Young, who is on holiday as a group of seven including three children and four adults, said they had a two week holiday booked but was unsure if they would stay that long.\r\n\r\n&#34;Luckily we have our luggage and the children are jumping up and down on the mattresses,&#34; she added.\r\n\r\nA couple on their honeymoon said they had been moved from a beach, where they were stranded with thousands of other people, by the Greek army in the early hours of Sunday.\r\n\r\nWarning Rhodes fires could worsen as thousands flee\r\nNew Greece heatwave warning as fires still burn\r\nHoneymoon couple stranded by fires moved by army\r\nNo injuries have been reported, according to the Ministry of Climate Crisis and Civil Protection in Greece.\r\n\r\nIt said tourists are being evacuated safely from the affected areas - which represents less than 10% of the island&#39;s tourist accommodation - and are being redirected to other hotels on the island.', 'news', 'news (1).jpg', '0000-00-00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'user01', 'user01@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

DROP TABLE IF EXISTS `user_posts`;
CREATE TABLE IF NOT EXISTS `user_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_posts`
--

INSERT INTO `user_posts` (`id`, `user_id`, `name`, `title`, `content`, `category`, `image`, `date`, `status`) VALUES
(1, 2, 'user01', 'Education in Sri Lanka', 'Education in Sri Lanka has a long history that dates back two millennia. While the Constitution of Sri Lanka does not provide free education as a fundamental right, the constitution mentions that &#39;the complete eradication of illiteracy and the assurance to all persons of the right to universal and equal access to education at all levels&#34; in its section on directive principles of state policy at (27(2)(H). Sri Lanka&#39;s population had an adult literacy rate of 96.3% in 2015, which is above average by world and regional standards. Computer literacy in 2017 28.3% and phone users in 2017 105%, website users 32% in 2017.[note 1] Education plays a major part in the life and culture of the country, which dates back to 543 BC. Sri Lanka&#39;s modern educational system modeled after Christian missionary system was brought about by its integration into the British Empire in the 19th century. Education currently falls under the control of both the Central Government and the Provincial Councils, with some responsibilities lying with the Central Government and the Provincial Council having autonomy for others. Education institutions with a tradition dating back to 5 BC are largely ignored by the state.[citation needed]\r\n\r\nThe Human Rights Measurement Initiative (HRMI)[3] finds that Sri Lanka is fulfilling 95.5% of what it should be fulfilling for the right to education based on the country&#39;s level of income.[4] HRMI breaks down the right to education by looking at the rights to both primary education and secondary education. While taking into consideration Sri Lanka&#39;s income level, the nation is achieving 97.7% of what should be possible based on its resources (income) for primary education and 93.3% for secondary education', 'education', 'education.jpg', '0000-00-00', 'active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
