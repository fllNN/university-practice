import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

QtObject {
    id: plot

    property string srcTxtpStart: "2122 год. Ученые давно стали предпологать о возможности подобного исхода.
Но никто и подумать не мог, что все произойдет так скоро...

Звезда, которая сопровождала человека и всех живых существ на нашей планете
с самого ее зарождения, стала терять былую мощь.
Лето, даже в самых жарких уголках нашей планеты, стало холоднее самой
суровой зимы в Антарктиде.
Катастрофа подобного масштаба повлекла за собой, раузмеется, не только смену
климата...

Но, как и ко всему, люди вынуждены привыкать и адаптироваться.
И вы не исключение!"
    property string srcTxtpStart_2: "Ваше путешествие начинается в России, Ростовской области, в городе Таганрог.
Вам предстоит попытаться выжить в нынешних суровых реалиях.
Лишь от ваших собственных решений зависит то, где вы окажитесь."
    property string srcTxtstory1_1: "Первым делом Вы решили отправиться в заброшенный склад, чтобы найти
припасы и средства выживания.
Придя на место, вам бросатеся в глаза.."
    property string srcTxtstory2_1: "В складе вы обнаруживаете старый генератор, который возможно получилось
бы восстановить."
    property string srcTxtstory2_2: "В складе вы обнаруживаете некую карту, как оказалось, с отметками
других выживших людей.
По своей натуре Вы всегда были человеком довольно отстраненным от
общества, можно даже сказать социофобом и решаете.."
    property string srcTxtstory3_1: "Вы решаете испытать свою удачу и починить генератор чтобы в дальнейшем
использовать его для обеспечения энергией вашего временного убежища.
Вы ищите поломку и видете два провода, и не имея нужных навыков
полагаетесь на решение монетки.."
    property string srcTxtstory3_2: "Вы решаете не тратить время на восстановление генератора и идти искать
другой источник энергии.
В самом темном углу склада вам посчастливилось нащупать.."
    property string srcTxtstory3_3: "Вы решаете пойти наперекор своей природе и отправиться на поиски этих
людей для объединения с ними.
На карте две метки, Вы не можете разобрать что на них изображено, но одна
из них показалось вам слегка подозрительной, и Вы решаете.."
    property string srcTxtstory3_4: "Вы решаете не искать других выживших и оставаться самостоятельным.
Само собой отсюда есть только несколько развитий событий и вы решаете.."
    property string srcTxtstory4_1: "Вы успешно восстанавливаете генератор и получаете стабильный источник
энергии.

Вы можете использовать энергию для освещения, подключения электроники
или обогрева. Это помогает вам создать комфортные условия в вашем
укрытии и повысить шансы на выживание.

Финал: Вы живете в своем укрытии, используя энергию от генератора.
Вы иногда выходите на поиски еды или других ресурсов, но стараетесь
избегать опасных мест. Вы надеетесь, что когда-нибудь найдете способ
вернуться к нормальной жизни или хотя бы связаться с другими выжившими."
    property string srcTxtstory4_2: "В процессе восстановления генератора что-то идет не так, и он выходит
из строя.

Вы остаетесь без стабильного источника энергии и вынуждены искать
альтернативные варианты.
Вам может потребоваться искать другие укрытия или источники энергии в
окружающей среде.

Финал: Вы бродите по развалинам города, пытаясь найти что-то полезное для
выживания. Вы часто сталкиваетесь с опасностями, такими как холод, голод,
бандиты или звери. Вы понимаете, что ваши шансы на выживание очень
низки, но вы не теряете надежды."
    property string srcTxtstory4_3: "Вы находите солнечные батареи и устанавливаете их для получения
солнечной энергии.

Солнечная энергия является экологичным и возобновляемым видом энергии,
но она зависит от погодных условий. А состояние солнца нынче не очень..
Вам нужно следить за состоянием батарей и иметь запасной план.

Финал: Вы живете в своем укрытии, используя энергию от солнечных батарей,
пока это возможно. Вы иногда выходите на поиски еды или других ресурсов,
но стараетесь избегать опасных мест. Однако солнечные батареи были глупой
идеей. Спустя 2 дня, энергии солнца перестало хватать для их питания, все
замерзло и Вы погибли.."
    property string srcTxtstory4_4: "Вы находите небольшой ветрогенератор и устанавливаете его для получения
энергии от ветра.

Ветряная энергия также является экологичным и возобновляемым видом
энергии, но она также зависит от погодных условий.
Вам нужно следить за состоянием генератора и иметь запасной план на
случай штиля или сильного ветра.

Финал: Вы живете в своем укрытии, используя энергию от ветрогенератора.
Вы иногда выходите на поиски еды или других ресурсов, но стараетесь
избегать опасных мест. Вы надеетесь, что когда-нибудь найдете способ
вернуться к нормальной жизни."
    property string srcTxtstory4_5: "Вы находите группу выживших, которые создали базу для общего выживания
и решаете присоединиться к ним.

Вместе с группой у вас есть больше шансов на выживание, обмен опытом и
ресурсами.
Вы можете участвовать в организации защиты, поиске еды и воды, и
создании устойчивого сообщества.

Финал: Вы живете в базе с другими выжившими, работая на общее благо. Вы
чувствуете себя частью большой семьи, которая поддерживает друг друга в
трудные времена. Вы строите планы на будущее, веря, что все будет хорошо.
Продолжение следует..."
    property string srcTxtstory4_6: "Вы находите одиночного выжившего,который предлагает вам
присоединиться к его маленькой команде.

Вы становитесь частью небольшой группы, которая выживает вместе и
зависит от взаимной поддержки.
Ваша команда может иметь свои особенности и стратегии выживания.

Финал: Вы живете в укрытии с вашим новым другом и его командой, делясь с
ними своими знаниями и ресурсами.
Но в один день все меняется, и дружба сменяется противоположным
явлением. Тот кого вы стали считать ближе остальных, буквально
воткнул вам нож в спину и Вы погибли."
    property string srcTxtstory4_7: "Вы строите свое укрытие и находите способы выживать в одиночку.

Вы должны разработать эффективные методы для обеспечения пищей,
водой и защитой. Ваша выживаемость полностью зависит от ваших
навыков и ресурсов.

Финал: Вы живете в своем укрытии, полагаясь только на себя. Вы иногда
выходите на поиски еды или других ресурсов, но стараетесь избегать
опасных мест. Вы чувствуете себя одиноким и изолированным, но также
гордым и независимым. Вы не знаете, что ждет вас в будущем, но вы готовы
к любым трудностям"
    property string srcTxtstory4_8: "Вы отправляетесь в путешествие по разрушенному миру, исследуя новые
территории.

Вы рискуете столкнуться с опасностями, но также открываете возможности
для поиска ресурсов и информации.
Финал: Ваше путешествие может привести к встречам с другими выжившими
(чего Вам не очень бы хотелось) или важным открытиям о причинах
катастрофы.

Продолжение следует..."
    property string srcTxtpSurr: "Под суровым гнетом обстоятельств ваша психика не выдержала. Упав на
землю в полном отчаянии, разочаровании в реальности и себе самом, Вы
решили, что подобная жизнь не для вас и предпочли отдаться воле судьбы.

К вашему счастью, это всего лишь иммитация возможного будущего, игра.
На самом деле вам ничего не угрожает и вы можете попробовать снова
пройти это испытание, как только наберетесь смелости и терпения.

Ну а пока что, Вы знаете где выход."
}
