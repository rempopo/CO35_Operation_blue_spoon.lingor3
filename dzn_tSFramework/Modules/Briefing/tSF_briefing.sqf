//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Местный режим на протяжении последних лет ведет активную антиамериканскую политику, но полученные данные, о ведение лидером вооруженных сил Панамы наркотического бизнеса, стали последней каплей. Сегодня мы вторгаемся на территорию Панамы. Нашему взводу выпала честь захватить и отправить на справедливый суд лидера вооруженных сил Панамы. На данный момент он прячется в своем дворце, в г.Маруко, город кишит войсками. В аэропорту стоит его личный самолет, готовый к взлету если запахнет жаренным, а это значит, что его следует уничтожить чтобы не оставить лидеру шансов покинуть город.
<br />Так же в нашем распоряжении имеется отряд морских котиков, который может с моря проникнуть в город."
END

TOPIC("А. Враждебные силы:")
"Вооруженные силы Панамы - регулярные силы.
<br />       около 2 взводов.
<br />       + легкая техника."
END

TOPIC("Б. Дружественные силы:")
"Корпус морской пехоты США.
<br />        1'1 - 9 чел.
<br />        1'2 - 9 чел.
<br />        1'6 - 2 чел.
<br />        + х2 - экипажа.
<br />
<br />Отряд морских котиков США.
<br />        1'3 - 9 чел."
END

TOPIC("II. Задание:")
"1. Уничтожить самолет лидера вооруженных сил Панамы.
<br />2. Захватить и вывезти из города лидера вооруженных сил Панамы.
<br />3. Зачистить г.Маруко от Панамских вооруженных сил (опционально).
<br />"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"2x - LAV-25.
<br />2x - HMMWV вооруженных M2.
<br />2x - HMMWV (невооруженных).
<br />2х - десантные лодки (у котиков).
<br />Артиллерия (только дымы)."
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />SUP NET 51
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'3 - SR CH 3"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"- Если в течении 3-5 минут, после первого огневого контакта, самолет в аэропорту не уничтожен/не поврежден, то VIP (единственный гражданский на карте) начинает движение до самолета, чтобы смататься из города. Если он выехал из своего опместья, а самолет в этот момент уничтожили, пускай возвращется назад.
<br />- У врага есть минометы и наводчики, пока что-то из этого работает, можно смело наводить на медленных пацанчиков арту."
END
};

ADD_TOPICS
