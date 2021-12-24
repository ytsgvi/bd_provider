-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 12 2021 г., 17:14
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `garanin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accaunts`
--

CREATE TABLE `accaunts` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `accaunts`
--

INSERT INTO `accaunts` (`id`, `name`) VALUES
(2, 'zxcv');

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` float NOT NULL,
  `osn` set('основной','не основной') NOT NULL DEFAULT 'не основной',
  `active` set('активный','не активный') NOT NULL DEFAULT 'активный'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `account`
--

INSERT INTO `account` (`id`, `name`, `money`, `osn`, `active`) VALUES
(2, 'Карта', 30000, 'основной', 'активный'),
(5, 'НАлиЧные', 2222, 'не основной', 'активный');

-- --------------------------------------------------------

--
-- Структура таблицы `blog_article`
--

CREATE TABLE `blog_article` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `rating` float NOT NULL,
  `idUser` int NOT NULL,
  `views` int NOT NULL,
  `id_category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `blog_article`
--

INSERT INTO `blog_article` (`id`, `title`, `text`, `rating`, `idUser`, `views`, `id_category`) VALUES
(1, 'Насколько опасны вышки 5G', 'Несомненно, технологии сотовой связи 5G – это очередной шаг на пути развития науки и практического применения полученных теоретических находок. 5G обеспечит большую доступность мобильной связи, надёжность масштабных систем коммуникации между устройствами, высокую скорость интернета. Но, наряду с бесспорными преимуществами, использование 5G таит в себе внушительный перечень опасностей. В первую очередь это касается здоровья людей. Другая проблема – защита приватной жизни.\r\nНесмотря на повсеместное отрицание пагубного влияния радиочастот (РЧ), на живые организмы, существуют неопровержимые доказательства обратного. Собранные клинические данные больных и пораженных людей, экспериментально полученные результаты поражения ДНК, клеток и систем органов широкого круга растений и животных, а также эпидемиологические данные, доказывающие что большинство болезней современной цивилизации – рак, болезни сердца и диабет – в значительной степени вызваны электромагнитным загрязнением, уже превышают объем научной литературы в 10 000 рецензируемых научных статей. Если планы телекоммуникационной промышленности на сети 5G воплотятся в жизнь, ни один человек, ни одно животное, ни одна птица, ни одно насекомое и ни одно растение на Земле не смогут избежать облучения 24 часа в сутки 365 дней в году таким радиочастотным излучением, уровень которого в десятки и сотни раз превышает существующий сегодня, и не будут иметь возможности укрыться от такого излучения ни в одном месте планеты. Такие планы на 5G представляют угрозу, так как могут спровоцировать серьезные необратимые последствия для человека и непоправимые повреждения во всех экосистемах Земли. Необходимо незамедлительно принять меры для защиты человечества и окружающей среды в соответствии с этическими нормами, Конституцией Украины и международными соглашениями.\r\nЕще в 2015 году 215 учёных из 41 страны сообщили о своей озабоченности в Организацию Объединённых Наций и Всемирную Организацию Здравоохранения. Они отметили, что «множество недавних научных публикаций показали, что электромагнитное поле влияет на живые организмы на значительно более низких уровнях, нежели те, которые утверждены как безопасные большинством международных и государственных постановлений». В более 10 000 рецензированных научных публикаций говорится о вредоносном воздействии высокочастотного излучения на здоровье человека.\r\nОпасность 5G:\r\n- Частота связи 5-G оказывает влияние на потовые протоки и железы человека, принцип действия которых во многом повторяет действие антенн. Физик Пол Бен-Ишай поясняет, что потовые протоки человека работают по принципу спиральных антенн. И когда вместо обычного электромагнитного излучения в тело проникают неестественно короткие электромагнитные импульсы, заряды сами становятся излучателями электромагнитных волн и направляют их глубже в тело.\r\n- В ходе проведённых опытов было установлено, что новые технологии мобильной связи способны разрушить внутреннюю систему координации животных в пространстве. Также было установлено, что электромагнитное излучение нарушает обмен веществ в растениях, а это значит, что весь растительный мир будет под угрозой. Первые жертвы сети 5-G уже появились в Голландии — после запуска вышки там в радиусе 400 метров вымерли несколько сотен скворцов. Также странный эффект запуск вышек произвёл на коров — в районе, где проводилось тестовое использование вышек, коровы на фермах начинали впадать в сильное беспокойство, и вышки пришлось отключить. Швейцарская организация ProNature установила, что излучение 5-G-вышек повышает температуру тела насекомых. Стоит отметить, что частота, которая соответствует диапазону связи 4-G, уже сейчас используется для защиты зерна от вредителей, проще говоря, убивает их. А частота 5-G является ещё более губительной.\r\n- Частота связи 5-G может влиять на ДНК и ускорять процесс старения организма. К такому выводу пришёл доктор Мартин Полл, который специализируется в области биохимии и медицины. Также в ходе своих исследований он установил, что электромагнитное поле разрушает мозг и нарушает работу сердца. По его словам импульсное электромагнитное поле, которое свойственно именно 5-G, более опасно, чем непрерывное.\r\n- Также Мартин Полл говорит о том, что электромагнитные волны глубоко проникают в тело человека, поражая и разрушая его ткани. В этом вопросе он ссылается на профессора Хессинга, исследования которого показывают, что у телят тех коров, которые пасутся непосредственно рядом с вышками-излучателями, уже с первых дней жизни формируется катаракта.\r\n- Действие вышек 5-G очень похоже по своему принципу на действие так называемых СВЧ-пушек, которые применяют для разгона демонстраций. В обоих случаях целенаправленное излучение способно разогревать тело человека (и любого живого существа в принципе) и негативно влиять на самочувствие.\r\n- 5-G может вызывать мутации, причём такие, которые будут передаваться потомкам тех, кто подвергся излучению. Онколог Леннарт Харделл исследовал воздействие на человека технологии предыдущих поколений мобильной связи и отметил любопытную статистику, что опухоль мозга развивается преимущественно с той стороны, с которой к уху прикладывается телефон.\r\nТак что же такое 5-G? Технологии по улучшению качества связи или потенциальное оружие, вышки с которым будут размещены по всему миру?\r\nПримечательно, что страховые компании (например, Lloyds of London) отказались застраховать ответственность телекоммуникационной корпорации Big Wireless в случае подачи против них исков о нанесении вреда здоровью по причине использования технологии Wi-Fi и 5G: «Отчет по оценке рисков Lloyd дает нам солидную подсказку: в документе сравниваются эти беспроводные технологии с асбестом, поскольку предыдущие исследования асбеста были «неубедительными», но позднее выяснилось, что причиной контакта с этим веществом является рак. Исследование Lloyd\'s Risk Assessment было обнародовано более 8 лет назад.\r\n29 марта 2018 года Федерального Агентство Связи США одобрило запуск 4425 спутников, которые предназначены для направления микроволновых лучей на мобильные телефоны. В целом планируется запустить 20 000 спутников для обеспечения внедрения технологии 5-G на всём земном шаре. Таким образом, вокруг нашей планеты будет создана глобальная микроволновая сетка. Как уже было сказано выше, действие излучателей частот 5-G похоже на действие СВЧ-пушек. Таким образом, 20 000 спутников, запущенных в космос будут исполнять роль опять-таки потенциального оружия, причём мирового масштаба.\r\n5-G существенно отличается от своих предыдущих аналогов. Это не просто более высокая скорость и качество связи. Технология миллиметровых волн, которая будет внедрена в рамках 5-G, повлечёт за собой воздействие на всё живое на нашей планете, и изменения эти будут на самом глубинном уровне — на уровне ДНК. Но даже это лишь вершина айсберга. Ранее в прессе уже упоминалось о создании так называемой «умной пыли» — наноконструктивных кремниевых устройств. Проще говоря, это миниатюрные датчики, которые могут самопроизвольно включаться, выключаться, перемещаться, собирать и передавать информацию. Ещё в далёком 2015 году в СМИ была информация о создании чипа размером 7 нанометров, а это меньше, чем диаметр эритроцита, проще говоря, такой чип может свободно перемещаться по кровеносному сосуду человека. Такое простое устройство может окончательно решить проблему свободы выбора и позволит овладеть технологией полного контроля и подчинения человека. Потенциально такой чип может, к примеру, спровоцировать рост окружающих его клеток или, наоборот, их гибель. Таким образом, такой чип сможет полностью контролировать человека, вплоть до возможности физического устранения в любой момент.\r\nСтоит понимать, что любое глобальное нововведение, которое активно продвигается, невзирая на баснословные финансовые затраты, очевидно кому-то выгодно. Ничто не происходит просто так. В своё время так называемая сексуальная революция и внедрение прочих деструктивных тенденций в кино и СМИ подавались исключительно под маской развлекательного контента, однако сегодня совершенно очевидно, что это был глобальный план по изменению сознания человечества. Следует понимать, что никто просто так не вкладывает средства в «развлечение» или «повышение комфорта» и так далее. Это лишь вершина айсберга. За любым глобальным нововведением стоят интересы транснациональных корпораций. И совершенно очевидно, что в подавляющем большинстве случаев эти интересы противоречат интересам простых людей.\r\nС ростом знаний об отрицательном воздействии на здоровье людей и нарушении частной жизни человека многие страны запрещают 5G. Например, так произошло в Бельгии, в швейцарском городе Во и американском Сан-Франциско. Министр правительства Бельгии Селин Фремо объявила, что Брюссель не даст разрешения на разворачивание сетей нового поколения 5G по причине вреда, который они наносят здоровью человека. В частности, она сказала, что \"не может приветствовать такую технологию, если не соблюдаются радиационные стандарты, которые должны защищать граждан, будь то сети 5G или другие. Жители Брюсселя - не морские свинки, и их здоровьем я не могу пренебречь, несмотря на возможную прибыль\".\r\nОтказываться принимать и применять соответствующее подтвержденное научное знание этически недопустимо.\r\nПрисоединяемся к обращению ко всем странам мира остановить 5 G на Земле и в космосе, адресованное в ООН, ВТО, ЕС, Совету Европы и правительствам всех государств:\r\n\r\nВ Европейскую комиссию в сентябре 2017 года было подано заявление с требованием моратория на увеличение количества сотовых антенн для планируемого расширения мобильных сетей 5G. В нем выражалась обоснованная обеспокоенность последствиями для здоровья в связи с более высоким радиационным уровнем, оказывающим негативное неврологическое воздействие на человека, вызывая у него бесплодие и рак, - бьет в набат Es-Ireland\r\nВ тексте говорится:\r\n\"Мы, нижеподписавшиеся ученые и врачи, рекомендуем ввести мораторий на развертывание сетей пятого поколения - 5G до тех пор, пока ученые, не зависимые от производителей, полностью не изучат потенциальные угрозы для здоровья человека и окружающей среды.\r\n5G значительно увеличит воздействие радиочастотных электромагнитных полей (RF-EMF) поверх существующих 2G, 3G, 4G, Wi-Fi и т.д. Уже доказано, что радиочастотная электромагнитная сеть вредна для людей и окружающей среды…\":\r\n\r\nУченые всего мира бьют тревогу об опасности технологии 5 G , особенно о разрушительном влиянии на здоровье человека и окружающую среду:\r\n\r\nМы считаем, что нам ничто не мешает развивать проводную связь, а не радиоволновую. Проводная дешевле, с большими возможностями по передаче информации и куда более безопаснее.\r\n\r\nВ связи с вышеизложенным, требуем:\r\n1. Принять незамедлительные меры по остановке развёртывания 5G на территории Украины, чтобы защитить население, в особенности детей, беременных женщин, а также окружающую среду.\r\n2. Перечислить меры, которые вы намерены принять для защиты населения Украины от воздействия радиоволнового излучения, в особенности излучения 5G.\r\nВсю ответственность за последствия введения 5G возлагаем на Вас.', 3.3, 2, 1234, 1),
(2, 'Почему арбуз не оставит вас равнодушным?\r\n', '\r\nВ одном из древнеегипетских мифов рассказывается, что арбуз вырос из мужского семени, рассеянного богом Сетом, безуспешно преследовавшим богиню Исиду.\r\n\r\nДревние семена арбуза были обнаружены в Судане , а также в Ливии ', 5, 6, 1221, 2),
(3, 'Топ 10 правил привлекательного заголовка', '1. На первое место в заголовке поставьте слова, которые будут бросаться в глаза\r\nНапример: «Впервые!», «Новинка!», «Революционное открытие!».\r\n\r\nСлова должны содержать подчеркнуто экспрессивный оттенок, иметь интонацию оживления, чтобы заголовок гарантировал людям чувство новизны. Броских слов, которые нужно употреблять в заголовке, существует огромное количество. Это могут быть:\r\n\r\nоткрытие!\r\nнаконец-то!\r\nсвершилось!\r\nВажно помнить, что слова «впервые», «новый» и все синонимы новизны юридически можно использовать только в первые полгода выпуска товара на рынок. Ваша фирма произвела что-то новое и уникальное? Позвольте потребителям узнать об этом!', 0, 3, 2222, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int NOT NULL,
  `categoryName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `blog_category`
--

INSERT INTO `blog_category` (`id`, `categoryName`) VALUES
(1, 'Техника'),
(2, 'Домашнее хозяйство'),
(3, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int NOT NULL,
  `textCom` varchar(255) NOT NULL,
  `score` int NOT NULL,
  `idUser` int NOT NULL,
  `idArt` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `textCom`, `score`, `idUser`, `idArt`) VALUES
(1, 'ВЫВСЕВРЁТИ!!!', 1, 3, 1),
(3, 'Цистерну говна автору', 5, 6, 1),
(4, 'Молодец', 5, 3, 2),
(5, 'аооООаоа мм))))', 4, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_users`
--

CREATE TABLE `blog_users` (
  `id` int NOT NULL,
  `name` varchar(15) NOT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `blog_users`
--

INSERT INTO `blog_users` (`id`, `name`, `login`, `email`, `password`, `banned`) VALUES
(2, 'Ибодан', 'Ibodan12', 'jjjoas@gmail.com', 'IBODAN', 0),
(3, 'Дибобан', 'Aboba', 'Diboban@gmail.com', 'ABOBA', 0),
(4, 'Анна', 'anna1996', 'anna1996@yandex.ru', '503fb06b1', 0),
(5, 'Альбина', 'karina1987', 'karina1987@hotmail.com', 'a47e0d74d', 0),
(6, 'Нина', 'nina09121960', 'nina09121960@mail.ru', '83d675bb7', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `exprev` set('расход','доход') NOT NULL,
  `monthnorm` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `exprev`, `monthnorm`) VALUES
(2, 'aaaa', 'расход', 0),
(3, 'asd', 'расход', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `categories_expenses`
--

CREATE TABLE `categories_expenses` (
  `id_category` int NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories_expenses`
--

INSERT INTO `categories_expenses` (`id_category`, `category`) VALUES
(1, 'Поесть'),
(2, 'Попа');

-- --------------------------------------------------------

--
-- Структура таблицы `categories_revenue`
--

CREATE TABLE `categories_revenue` (
  `id_category` int NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories_revenue`
--

INSERT INTO `categories_revenue` (`id_category`, `category`) VALUES
(1, 'Поработать');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` set('доход','расход') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `norm` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `dept`
--

CREATE TABLE `dept` (
  `id` int NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `dept`
--

INSERT INTO `dept` (`id`, `name`) VALUES
(1, 'Отдел проектирования'),
(2, 'Отдел разработки'),
(3, 'Отдел тестирования'),
(4, 'Отдел внедрения'),
(5, 'Отдел сопровождения');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `text`, `date`) VALUES
(32, 'Игорь', 'Привет', '2021-03-25 06:22:29'),
(33, 'Иван', 'Привет', '2021-03-25 06:23:25'),
(35, 'Иван', 'Привет', '2021-03-25 06:28:02'),
(36, 'Иван', 'Привет', '2021-03-25 06:29:00'),
(37, 'awd', 'awd', '2021-03-25 06:44:44'),
(38, 'Иван', 'Привет', '2021-03-25 06:44:49');

-- --------------------------------------------------------

--
-- Структура таблицы `operations`
--

CREATE TABLE `operations` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `sum` decimal(10,0) NOT NULL,
  `id_category` int NOT NULL,
  `id_account` int NOT NULL,
  `com` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `price`, `status`) VALUES
(1, 'Разработка ИС \"Библиотека\"', '50000.00', 'Ожидает'),
(2, 'Сопровождение ИС \"Техникум\"', '25000.00', 'Выполняется'),
(3, 'Обновление  ИС \"Автосеривис\"', '35000.00', 'Выполняется'),
(4, 'Разработка ИС \"Таксопарк\"', '70000.00', 'Выполнен'),
(5, 'Обновление ИС \"Склад\"', '40000.00', 'Выполнен');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int NOT NULL,
  `content` text,
  `idAccaunt` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `content`, `idAccaunt`) VALUES
(3, 'I AM TERMINATOR', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `avaliable` int NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `avaliable`, `category`) VALUES
(1, 'Йогурт', '36.00', 15, 'Молочные продукты'),
(2, 'Масло сливочное', '89.00', 27, 'Молочные продукты'),
(3, 'Голень куриная', '110.00', 2, 'Мясные продукты'),
(4, 'Филе', '205.00', 0, 'Мясные продукты');

-- --------------------------------------------------------

--
-- Структура таблицы `project_jurnal`
--

CREATE TABLE `project_jurnal` (
  `id` int NOT NULL,
  `id_uchitelPredmet` int DEFAULT NULL,
  `id_uchenik` int DEFAULT NULL,
  `ocenka` int DEFAULT NULL,
  `dataocenki` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `project_jurnal`
--

INSERT INTO `project_jurnal` (`id`, `id_uchitelPredmet`, `id_uchenik`, `ocenka`, `dataocenki`) VALUES
(1, 3, 3, 5, '2021-02-01'),
(2, 6, 3, 4, '2021-02-01'),
(3, 2, 4, 5, '2021-02-01'),
(4, 5, 2, 2, '2021-02-02'),
(5, 6, 1, 5, '2021-02-03'),
(6, 5, 4, 3, '2021-02-02'),
(7, 4, 4, 2, '2021-02-04'),
(8, 5, 3, 5, '2021-02-07');

-- --------------------------------------------------------

--
-- Структура таблицы `project_predmeti`
--

CREATE TABLE `project_predmeti` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `project_predmeti`
--

INSERT INTO `project_predmeti` (`id`, `name`) VALUES
(1, 'Русский язык'),
(2, 'Математика'),
(3, 'Физика'),
(4, 'Литература'),
(5, 'физическая культура');

-- --------------------------------------------------------

--
-- Структура таблицы `project_uchenik`
--

CREATE TABLE `project_uchenik` (
  `id` int NOT NULL,
  `familiya` varchar(255) NOT NULL,
  `imya` varchar(255) NOT NULL,
  `otchestvo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `project_uchenik`
--

INSERT INTO `project_uchenik` (`id`, `familiya`, `imya`, `otchestvo`) VALUES
(1, 'Залепухина', 'Васелиса', 'Дмитриевна'),
(2, 'Абудмахад', 'Гульнара', 'Петрова'),
(3, 'Денисов', 'Денис', 'Денисович'),
(4, 'Вафельный', 'Ый', 'Андреевич'),
(5, 'Зайцева', 'Анастасия', 'Алексеевна');

-- --------------------------------------------------------

--
-- Структура таблицы `project_uchitel`
--

CREATE TABLE `project_uchitel` (
  `id` int NOT NULL,
  `familiya` varchar(255) NOT NULL,
  `imya` varchar(255) NOT NULL,
  `otchestvo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `project_uchitel`
--

INSERT INTO `project_uchitel` (`id`, `familiya`, `imya`, `otchestvo`) VALUES
(1, 'Гаранин', 'Игорь', 'Сергеевич'),
(2, 'Петрова', 'Наталья', 'Сергеевна'),
(3, 'Галочкина', 'Ирина', 'Федоровна'),
(4, 'Пушкина', 'Елизавета', 'Харитоновна'),
(5, 'Лепёшкина', 'Екатерина', 'Вадимовна');

-- --------------------------------------------------------

--
-- Структура таблицы `project_uchitelpredmet`
--

CREATE TABLE `project_uchitelpredmet` (
  `id` int NOT NULL,
  `id_uchitelya` int DEFAULT NULL,
  `id_predmeta` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `project_uchitelpredmet`
--

INSERT INTO `project_uchitelpredmet` (`id`, `id_uchitelya`, `id_predmeta`) VALUES
(2, 1, 1),
(3, 2, 2),
(4, 3, 3),
(5, 4, 4),
(6, 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `provider_rates`
--

CREATE TABLE `provider_rates` (
  `id` int NOT NULL,
  `rateTitle` varchar(255) NOT NULL,
  `rateSpeed` int NOT NULL,
  `rateText` varchar(255) NOT NULL,
  `ratePrice` int NOT NULL,
  `rateVolume` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `provider_rates`
--

INSERT INTO `provider_rates` (`id`, `rateTitle`, `rateSpeed`, `rateText`, `ratePrice`, `rateVolume`) VALUES
(1, 'Везде онлайн', 30, 'Telegram и еще 3 безлимитных мессенджера\r\n\r\nInstagram и еще 4 безлимитных соцсети\r\n\r\nБолее 20 000 фильмов, сериалов и 100 ТВ-каналов от Wink', 500, 50),
(2, 'Мой онлайн+', 40, '\r\nTelegram и еще 3 безлимитных мессенджера\r\n\r\nTikTok и еще 5 безлимитных соцсетей\r\n\r\nПакет минут доступен в популярных странах Европы', 450, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `provider_users`
--

CREATE TABLE `provider_users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `idRate` int NOT NULL,
  `timeConnect` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL,
  `debt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `provider_users`
--

INSERT INTO `provider_users` (`id`, `name`, `idRate`, `timeConnect`, `active`, `debt`) VALUES
(1, 'Иванов Иван', 1, '2021-09-22 20:21:38', 1, '0.00'),
(2, 'Должников Диван', 2, '2021-08-22 20:23:11', 0, '450.00');

-- --------------------------------------------------------

--
-- Структура таблицы `pr_user`
--

CREATE TABLE `pr_user` (
  `id` int NOT NULL,
  `fName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `search_category`
--

CREATE TABLE `search_category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `search_category`
--

INSERT INTO `search_category` (`id`, `name`) VALUES
(1, 'Клавиатуры'),
(2, 'Мыши'),
(3, 'Наушники'),
(4, 'Мониторы');

-- --------------------------------------------------------

--
-- Структура таблицы `search_manufacter`
--

CREATE TABLE `search_manufacter` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `search_manufacter`
--

INSERT INTO `search_manufacter` (`id`, `name`) VALUES
(1, 'Asus'),
(2, 'Perfeo'),
(3, 'Digma'),
(4, 'Ritmix');

-- --------------------------------------------------------

--
-- Структура таблицы `search_product`
--

CREATE TABLE `search_product` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `available` int NOT NULL,
  `idManufacter` int NOT NULL,
  `idCategory` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `search_product`
--

INSERT INTO `search_product` (`id`, `name`, `price`, `available`, `idManufacter`, `idCategory`) VALUES
(1, 'Наушники накладные Ritmix RH-534M, складные', '599.00', 70, 4, 3),
(2, 'Проводная игровая мышь Ritmix ROM-345 (черная)', '399.00', 12, 4, 2),
(3, 'Клавиатура Ritmix RKB-310BTH, черный', '790.00', 8, 4, 1),
(4, 'Мышь беспроводная ASUS WT425, черный', '1169.00', 9, 1, 2),
(5, 'Игровая клавиатура ASUS ROG Strix Scope TKL', '14890.00', 3, 1, 1),
(6, 'Монитор ASUS VP229HE', '9000.00', 10, 1, 4),
(7, 'Накладные Bluetooth наушники Perfeo Ellipse', '1150.00', 50, 2, 3),
(8, 'Мышь проводная Perefeo TOUR, черный, серебиристый', '400.00', 150, 2, 2),
(9, 'Клавиатура Perfeo PF-2506-WL', '580.00', 300, 2, 1),
(10, 'Гарнитура вкладыши Digma TWS-10 белый беспроводные', '1200.00', 32, 3, 3),
(11, 'Наушники Digma TWS-06 black BT', '1090.00', 16, 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`) VALUES
(4, 'Клавиатуры'),
(5, 'Мониторы'),
(6, 'Мыши');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products`
--

CREATE TABLE `shop_products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estimation` decimal(11,2) NOT NULL,
  `id_category` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `orders` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `shop_products`
--

INSERT INTO `shop_products` (`id`, `name`, `estimation`, `id_category`, `price`, `orders`) VALUES
(1, 'GK 61', '2.20', 4, '12000.00', 122),
(2, 'Wormier K89', '4.50', 4, '3699.00', 23),
(3, 'A4Tech X-710BK', '3.33', 6, '1099.00', 0),
(4, 'Xiaomi Mi Monitor 1C', '4.89', 5, '10999.00', 21),
(5, 'CROWN CMGM-900', '3.75', 6, '550.00', 99);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_users`
--

CREATE TABLE `shop_users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `VIP` tinyint(1) NOT NULL DEFAULT '0',
  `ordernum` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `shop_users`
--

INSERT INTO `shop_users` (`id`, `name`, `VIP`, `ordernum`) VALUES
(1, 'Pavel', 1, 4),
(2, 'Ignat', 0, 2),
(3, 'Evan', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `transfer`
--

CREATE TABLE `transfer` (
  `id` int NOT NULL,
  `datetran` date NOT NULL,
  `sum` decimal(10,2) NOT NULL,
  `idSrc` int NOT NULL,
  `idCnt` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `gender` set('мужской','женский') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `pass`, `lastname`, `firstname`, `gender`) VALUES
(1, 'mitya', '0000', 'Петров', 'Иван', 'мужской'),
(2, 'ЖоЖо', '123', 'Гаринан', 'Гориь', 'мужской'),
(3, 'ЖоЖо', '123', 'Гаринан11', 'Гориь2', 'женский'),
(4, 'Jojo', '123', 'Гаранин', 'Игорь', 'мужской'),
(5, '123', '123', '231', '231', 'мужской'),
(6, 'Жопа231', '123', 'Гаринан', 'ИМван', 'женский');

-- --------------------------------------------------------

--
-- Структура таблицы `worker`
--

CREATE TABLE `worker` (
  `id` int NOT NULL,
  `lastname` text,
  `firstname` text,
  `phone` text,
  `idDept` int DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  `job` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `worker`
--

INSERT INTO `worker` (`id`, `lastname`, `firstname`, `phone`, `idDept`, `salary`, `job`) VALUES
(1, 'Задумчивый', ' Александр', '7894564987', 1, '30000.00', 'Аналитик'),
(2, 'Непростой', 'Фёдор', '456789785', 1, '35000.00', 'Проектировщик'),
(3, 'Диаграммов', 'Анатолий', '1827645158', 1, '45000.00', 'Руководитель'),
(4, 'Кодов', 'Антон', '1827613457', 2, '25000.00', 'Программист-стажёр'),
(5, 'Костылькин', 'Иван', '8827613457', 2, '35000.00', 'Программист'),
(6, 'Велогонов', 'Кирилл', '4327613457', 2, '55000.00', 'Ведущий программист'),
(7, 'Компиляев', 'Никита', '3157313457', 2, '60000.00', 'Руководитель'),
(8, 'Коекаков', 'Афанасий', '9152311457', 2, '50000.00', 'Программист'),
(9, 'Тестов', 'Ибрагим', '1555511457', 3, '30000.00', 'Тестировщик UI'),
(10, 'Проверялкин', 'Виктор', '7777511457', 3, '40000.00', 'Руководитель'),
(11, 'Накатаев', 'Алексей', '177511457', 4, '30000.00', 'Девопс'),
(12, 'Докеров', 'Вагрант', '18503274017', 4, '35000.00', 'Руководитель'),
(13, 'Слушкин', 'Явас', '88005553535', 5, '20000.00', 'Специалист call центра'),
(14, 'Марвари', 'Раджеш', '88005553536', 5, '20000.00', 'Специалист call центра'),
(15, 'Всёработкин', 'Унас', '99900154122', 5, '30000.00', 'Руководитель');

-- --------------------------------------------------------

--
-- Структура таблицы `workeronorder`
--

CREATE TABLE `workeronorder` (
  `id` int NOT NULL,
  `idWorker` int DEFAULT NULL,
  `idOrder` int DEFAULT NULL,
  `task` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `workeronorder`
--

INSERT INTO `workeronorder` (`id`, `idWorker`, `idOrder`, `task`) VALUES
(1, 14, 2, 'Техническая поддержка'),
(2, 5, 2, 'Выпуск патчей'),
(3, 10, 2, 'Тестирование патчей'),
(4, 1, 4, 'Анализ предметной области'),
(5, 2, 4, 'Составление проектной документации'),
(6, 3, 4, 'Утверждение проектоной документации'),
(7, 4, 4, 'Написание юнит тестов'),
(8, 5, 4, 'Разработка программных модулей'),
(9, 6, 4, 'Разработка программных модулей'),
(10, 7, 4, 'Разработка архитектуры ИС'),
(11, 10, 4, 'Функциональное тестирование'),
(12, 11, 4, 'Интеграционное тестирование'),
(13, 12, 4, 'Сдача ИС заказчику'),
(14, 14, 4, 'Обеспечение техническоей поддержки'),
(15, 6, 3, 'Разработка новых программных модулей'),
(16, 10, 3, 'Тестирование обратной совместимости'),
(17, 11, 3, 'Деплой обновлённой ИС'),
(18, 6, 5, 'Разработка новых программных модулей'),
(19, 7, 5, 'Внесение изменений в архитектуру ИС'),
(20, 10, 5, 'Функциональное тестирование');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accaunts`
--
ALTER TABLE `accaunts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog_article`
--
ALTER TABLE `blog_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog_users`
--
ALTER TABLE `blog_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories_expenses`
--
ALTER TABLE `categories_expenses`
  ADD PRIMARY KEY (`id_category`);

--
-- Индексы таблицы `categories_revenue`
--
ALTER TABLE `categories_revenue`
  ADD PRIMARY KEY (`id_category`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_account` (`id_account`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAccaunt` (`idAccaunt`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_jurnal`
--
ALTER TABLE `project_jurnal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_uchitelPredmet` (`id_uchitelPredmet`),
  ADD KEY `id_uchenik` (`id_uchenik`);

--
-- Индексы таблицы `project_predmeti`
--
ALTER TABLE `project_predmeti`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_uchenik`
--
ALTER TABLE `project_uchenik`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_uchitel`
--
ALTER TABLE `project_uchitel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project_uchitelpredmet`
--
ALTER TABLE `project_uchitelpredmet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_predmeta` (`id_predmeta`),
  ADD KEY `id_uchitelya` (`id_uchitelya`);

--
-- Индексы таблицы `provider_rates`
--
ALTER TABLE `provider_rates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `provider_users`
--
ALTER TABLE `provider_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idRate` (`idRate`);

--
-- Индексы таблицы `pr_user`
--
ALTER TABLE `pr_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `search_category`
--
ALTER TABLE `search_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `search_manufacter`
--
ALTER TABLE `search_manufacter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `search_product`
--
ALTER TABLE `search_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idManufacter` (`idManufacter`),
  ADD KEY `idCategory` (`idCategory`);

--
-- Индексы таблицы `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `shop_users`
--
ALTER TABLE `shop_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSrc` (`idSrc`),
  ADD KEY `idCnt` (`idCnt`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDept` (`idDept`);

--
-- Индексы таблицы `workeronorder`
--
ALTER TABLE `workeronorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idWorker` (`idWorker`),
  ADD KEY `idOrder` (`idOrder`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accaunts`
--
ALTER TABLE `accaunts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `account`
--
ALTER TABLE `account`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `blog_article`
--
ALTER TABLE `blog_article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `blog_users`
--
ALTER TABLE `blog_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories_expenses`
--
ALTER TABLE `categories_expenses`
  MODIFY `id_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `categories_revenue`
--
ALTER TABLE `categories_revenue`
  MODIFY `id_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `project_jurnal`
--
ALTER TABLE `project_jurnal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `project_predmeti`
--
ALTER TABLE `project_predmeti`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `project_uchenik`
--
ALTER TABLE `project_uchenik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `project_uchitel`
--
ALTER TABLE `project_uchitel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `project_uchitelpredmet`
--
ALTER TABLE `project_uchitelpredmet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `provider_rates`
--
ALTER TABLE `provider_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `provider_users`
--
ALTER TABLE `provider_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `pr_user`
--
ALTER TABLE `pr_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `search_category`
--
ALTER TABLE `search_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `search_manufacter`
--
ALTER TABLE `search_manufacter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `search_product`
--
ALTER TABLE `search_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `shop_users`
--
ALTER TABLE `shop_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `workeronorder`
--
ALTER TABLE `workeronorder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blog_article`
--
ALTER TABLE `blog_article`
  ADD CONSTRAINT `blog_article_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `blog_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `operations`
--
ALTER TABLE `operations`
  ADD CONSTRAINT `operations_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `operations_ibfk_2` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`idAccaunt`) REFERENCES `accaunts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_jurnal`
--
ALTER TABLE `project_jurnal`
  ADD CONSTRAINT `Project_jurnal_ibfk_1` FOREIGN KEY (`id_uchitelPredmet`) REFERENCES `project_uchitelpredmet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Project_jurnal_ibfk_2` FOREIGN KEY (`id_uchenik`) REFERENCES `project_uchenik` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `project_uchitelpredmet`
--
ALTER TABLE `project_uchitelpredmet`
  ADD CONSTRAINT `Project_uchitelPredmet_ibfk_1` FOREIGN KEY (`id_predmeta`) REFERENCES `project_predmeti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Project_uchitelPredmet_ibfk_2` FOREIGN KEY (`id_uchitelya`) REFERENCES `project_uchitel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `provider_users`
--
ALTER TABLE `provider_users`
  ADD CONSTRAINT `provider_users_ibfk_1` FOREIGN KEY (`idRate`) REFERENCES `provider_rates` (`id`);

--
-- Ограничения внешнего ключа таблицы `search_product`
--
ALTER TABLE `search_product`
  ADD CONSTRAINT `search_product_ibfk_1` FOREIGN KEY (`idManufacter`) REFERENCES `search_manufacter` (`id`),
  ADD CONSTRAINT `search_product_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `search_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `shop_products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `shop_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`idSrc`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`idCnt`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `worker`
--
ALTER TABLE `worker`
  ADD CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`idDept`) REFERENCES `dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `workeronorder`
--
ALTER TABLE `workeronorder`
  ADD CONSTRAINT `workerOnOrder_ibfk_1` FOREIGN KEY (`idWorker`) REFERENCES `worker` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `workerOnOrder_ibfk_2` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
