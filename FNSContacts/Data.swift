//
//  ModelContact.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 28.12.2022.
//

import UIKit
import Foundation

enum Gender {
case male
case female
}

enum DepartmentType {
    case leaderInsp
    case obshiy
    case hoz
    case finansy
    case kadry
    case pravovoy
    case it
    case analiza
    case registracyy
    case rabotySNalogoplat
    case kameralniy1
    case kameralniy2
    case kameralniy3
    case kameralniy4
    case kameralniy5
    case kameralniy6
    case kameralniy7
    case operativnogo
}

struct Contact {
    let name: String
    let department: DepartmentType
    let gender: Gender
    let functions: String
    let dateBirth: String
    let jobTitle: String
    let phone: String
}

struct Depatrment {
    let leader: String
    let inspection: String
    let type: DepartmentType
    let room: String
}

struct Inspection {
    let leader: String
    let inspName: String
    let inspAdress: String
}

let namesMale = ["Александр", "Дмитрий", "Максим", "Сергей", "Андрей",
                 "Алексей", "Артем", "Илья", "Кирилл", "Михаил",
                 "Никита", "Матвей", "Роман", "Егор", "Арсений",
                 "Иван", "Денис", "Евгений", "Даниил", "Тимофей",
                 "Владислав", "Игорь", "Владимир", "Владислав",
                 "Павел", "Руслан", "Марк", "Константин", "Тимур",
                 "Олег", "Ярослав", "Антон", "Николай", "Глеб",
                 "Даниил", "Савелий", "Вадим", "Степан", "Юрий",
                 "Богдан", "Артур", "Семен", "Макар", "Лев",
                 "Виктор", "Виталий", "Вячеслав", "Георгий", "Станислав", "Валерий"]
let namesFemale = ["Анастасия", "Анна", "Мария", "Елена", "Дарья",
                   "Алина", "Полина", "Ольга", "Юлия", "Татьяна",
                   "Наталья", "Виктория", "Елизавета", "Ксения", "Милана",
                   "Вероника", "Алиса", "Валерия", "Александра", "Ульяна",
                   "Кристина", "София", "Марина", "Светлана", "Варвара",
                   "Софья", "Диана", "Яна", "Кира", "Ангелина",
                   "Ева", "Алена", "Дарина", "Карина", "Василиса",
                   "Олеся", "Аделина", "Оксана", "Надежда", "Евгения",
                   "Вера", "Людмила", "Любовь", "Лариса", "Регина",
                   "Алла", "Жанна", "Лилия", "Амина", "Стефания"]
let secondNamesMale = ["Иванов", "Васильев", "Петров", "Смирнов", "Михайлов", "Федоров", "Соколов",
                       "Яковлев", "Попов", "Андреев", "Алексеев", "Александров", "Лебедев", "Григорьев",
                       "Степанов", "Семенов", "Павлов", "Богданов", "Николаев", "Дмитриев", "Егоров",
                       "Волков", "Кузнецов", "Никитин", "Соловьев", "Тимофеев", "Орлов", "Афанасьев",
                       "Филиппов", "Сергеев", "Захаров", "Матвеев", "Виноградов", "Кузьмин", "Максимов",
                       "Козлов", "Ильин", "Герасимов", "Марков", "Новиков", "Морозов", "Романов",
                       "Осипов", "Макаров", "Зайцев", "Беляев", "Гаврилов", "Антонов", "Ефимов",
                       "Леонтьев", "Давыдов", "Гусев", "Данилов", "Киселев", "Сорокин", "Тихомиров",
                       "Крылов", "Никифоров", "Кондратьев", "Кудрявцев", "Борисов", "Жуков", "Воробьев",
                       "Щербаков", "Поляков", "Савельев", "Шмидт", "Трофимов", "Чистяков", "Баранов",
                       "Сидоров", "Соболев", "Карпов", "Белов", "Миллер", "Титов", "Львов",
                       "Фролов", "Игнатьев", "Комаров", "Прокофьев", "Быков", "Абрамов", "Голубев",
                       "Пономарев", "Покровский", "Быков", "Абрамов", "Голубев", "Пономарев", "Покровский",
                       "Мартынов", "Кириллов", "Шульц", "Миронов", "Фомин", "Власов", "Троицкий",
                       "Федоров", "Назаров", "Ушаков", "Денисов", "Константинов", "Форонин", "Наумов"]
let secondNamesFemale = ["Иванова", "Петрова", "Смирнова", "Кузнецова", "Васильева", "Попова", "Новикова",
                         "Волкова", "Романова", "Козлова", "Соколова", "Андреева", "Морозова", "Николаева",
                         "Михайлова", "Павлова", "Алексеева", "Макарова", "Сергеева", "Егорова", "Орлова",
                         "Александрова", "Степанова", "Никитина", "Лебедева", "Зайцева", "Захарова", "Яковлева",
                         "Максимова", "Фролова", "Григорьева", "Шевченко", "Миронова", "Белова", "Мельникова",
                         "Борисова", "Кузьмина", "Дмитриева", "Федорова", "Семенова", "Антонова", "Медведева",
                         "Полякова", "Матвеева", "Тарасова", "Власова", "Жукова", "Коваленко", "Ильина",
                         "Богданова", "Бондаренко", "Сорокина", "Кравченко", "Сидорова", "Данилова", "Котова",
                         "Калининиа", "Абрамова", "Осипова", "Колесникова", "Фиоиппова", "Руднева", "Титова",
                         "Гончарова", "Куликова", "Давыдова", "Тимофеева", "Беляева", "Назарова", "Чернова",
                         "Карпова", "Семенова", "Гусева", "Денисова", "Федорова", "Маркова", "Ткаченко",
                         "Фомина", "Соловьева", "Виноградова", "Александрова", "Ефимова", "Ковалева", "Афанасьева",
                         "Тихонова", "Баранова", "Савельева", "Королева", "Филатова", "Исаева", "Казакова",
                         "Малышева", "Федотова", "Гаврилова", "Климова", "Мельник", "Бойко"]
let patronymicMale = ["Александрович", "Дмитриевич", "Максимович", "Сергеевич", "Андреевич",
                      "Алексеевич", "Артемович", "Ильич", "Кириллович", "Михайлович",
                      "Никитич", "Матвеевич", "Романович", "Егорович", "Арсеньевич",
                      "Иванович", "Денисович", "Евгеньевич", "Даниилович", "Тимофеевич",
                      "Владиславович", "Игоревич", "Владимирович", "Павлович", "Русланович",
                      "Маркович", "Константинович", "Тимурович", "Олегович", "Ярославович",
                      "Антонович", "Николаевич", "Даниилович", "Савельевич", "Вадимович",
                      "Степанович", "Юрьевич", "Богданович", "Артурович", "Семенович",
                      "Макарович", "Львович", "Викторович", "Елисеевич", "Витальевич",
                      "Вячеславович", "Захарович", "Анатольевич", "Григорьевич", "Анатольевич"]
let patronymicFemale = ["Александровна", "Дмитриевна", "Максимовна", "Сергеевна", "Андреевна",
                        "Алексеевна", "Артемовна", "Ильина", "Кирилловна", "Михайловна",
                        "Никитична", "Матвеевна", "Романовна", "Егоровна", "Арсеньевна",
                        "Ивановна", "Денисовна", "Евгеньевна", "Данииловна", "Тимофеевна",
                        "Владиславовна", "Игоревна", "Владимировна", "Павловна", "Руслановна",
                        "Марковна", "Константиновна", "Тимуровна", "Олеговна", "Ярославовна",
                        "Антоновна", "Николаевна", "Данииловна", "Савельевна", "Вадимовна",
                        "Степановна", "Юрьевна", "Богдановна", "Артуровна", "Семеновна",
                        "Макаровна", "Львовна", "Викторовна", "Елисеевна", "Витальевна",
                        "Вячеславовна", "Захаровна", "Анатольевна", "Григорьевна", "Анатольевна"]

let titles = ["Заместитель начальника отдела", "Главный специалист-эксперт", "Ведущий специалист-эксперт", "Специалист 1 разряда", "Специалист 2 разряда", "Специалист 3 разряда"]



func generateName (gender: Gender) -> String {
    var name = ""
    var secondName = ""
    var patronymic = ""
    if gender == Gender.male {
        name = secondNamesMale[Int.random(in: 0...secondNamesMale.count-1)]
        secondName = namesMale[Int.random(in: 0...namesMale.count-1)]
        patronymic = patronymicMale[Int.random(in: 0...patronymicMale.count-1)]
    } else {
        name = secondNamesFemale[Int.random(in: 0...secondNamesFemale.count-1)]
        secondName = namesFemale[Int.random(in: 0...namesFemale.count-1)]
        patronymic = patronymicFemale[Int.random(in: 0...patronymicFemale.count-1)]
    }
    return name + " " + secondName + " " + patronymic
}

func generateDate() -> String {
    let day = Int.random(in: 1...28)
    let month = Int.random(in: 1...12)
    let dayStr = day < 10 ? "0\(day)" : "\(day)"
    let monthStr = month < 10 ? "0\(month)" : "\(month)"
    return dayStr + "." + monthStr
}

func generateNumber() -> String{
    "\(Int.random(in: 10...99))-\(Int.random(in: 10...99))"
}

func generateInspections() -> [Inspection] {
    var inspections: [Inspection] = []
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7801 Межрайонная ИФНС России № 16 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Большой пр. В.О., дом 55Б" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7802 Межрайонная ИФНС России № 17 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Пархоменко пр., дом 13" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7804 Межрайонная ИФНС России № 18 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Арсенальная наб, дом 13/1" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7805 Межрайонная ИФНС России № 19 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Трамвайный пр., дом 23, к. 1" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7806 Межрайонная ИФНС России № 21 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Пороховская ул., д. 12/34" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7807 Межрайонная ИФНС России № 22 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Партизана Германа ул., дом 37" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7810 Межрайонная ИФНС России № 23 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Пулковская ул., дом 12" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7811 Межрайонная ИФНС России № 24 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Дальневосточный пр., дом 78" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7813 Межрайонная ИФНС России № 25 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Ленина ул., дом 11/64" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7814 Межрайонная ИФНС России № 26 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Савушкина ул., дом 71" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7816 Межрайонная ИФНС России № 27 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Салова ул., дом 65" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7817 Межрайонная ИФНС России № 20 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Советский б-р, дом 5" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7838 Межрайонная ИФНС России № 7 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Канала Грибоедова наб., дом 133" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7840 Межрайонная ИФНС России № 9 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Потемкинская ул., дом 2" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7842 Межрайонная ИФНС России № 11 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Чайковского ул., дом 46/48" ))
    inspections.append(Inspection(leader: generateName(gender: .female),
                                  inspName: "7843 Межрайонная ИФНС России № 12 по Санкт-Петербургу",
                                  inspAdress: "Санкт-Петербург, Борисова ул., дом 6" ))
    return inspections
}

func departmentName(departmentType: DepartmentType) -> String {
    var name = ""
    switch departmentType {
    case .leaderInsp:
        name = "Руководство"
    case .obshiy:
        name = "Общий отдел"
    case .hoz:
        name = "Отдел хозяйственного обеспечения"
    case .finansy:
        name = "Отдел финансового обеспечения"
    case .kadry:
        name = "Отдел кадров и безопасности"
    case .pravovoy:
        name = "Правовой отдел"
    case .it:
        name = "Отдел информационных технологий"
    case .analiza:
        name = "Отдел анализа и прогнозирования"
    case .registracyy:
        name = "Отдел регистрации и учета налогоплательщиков"
    case .rabotySNalogoplat:
        name = "Отдел работы с налогоплательщиками"
    case .kameralniy1:
        name = "Отдел камеральных проверок № 1"
    case .kameralniy2:
        name = "Отдел камеральных проверок № 2"
    case .kameralniy3:
        name = "Отдел камеральных проверок № 3"
    case .kameralniy4:
        name = "Отдел камеральных проверок № 4"
    case .kameralniy5:
        name = "Отдел камеральных проверок № 5"
    case .kameralniy6:
        name = "Отдел камеральных проверок № 6"
    case .kameralniy7:
        name = "Отдел камеральных проверок № 7"
    case .operativnogo:
        name = "Отдел оперативного контроля"
    }
    return name
}

func generateContactFunctions(department: DepartmentType) -> String {
    let number = Int.random(in: 1...3)
    var function = ""
    switch department {
    case .leaderInsp:
        function = "Руководство текущей деятельностью инспекции"
    case .obshiy:
        switch number {
        case 1: function = "Прием, регистрация и отправка входящей и исходящей корреспонденции"
        case 2: function = "Прием документов на хранение, ведение архива"
        default: function = "Ретросканирование, ответы на запросы сторонних организаций"
        }
    case .hoz:
        switch number {
        case 1: function = "Материально-техническое обеспечение"
        case 2: function = "Заключение договоров(тепловая и электрическая энергия)"
        default: function = "Обеспечение автотранспортом, обслуживание служебных помещений"
        }
    case .finansy:
        switch number {
        case 1: function = "Исполнение сметы расходов на содержание инспекции"
        case 2: function = "Санкционирование расходов бюджета"
        default: function = "Взаимодействие с ФКУ ЦОКР по передаче централизуемых полномочий"
        }
    case .kadry:
        switch number {
        case 1: function = "Прием, перевод, увольнение, отпуска, отпуска по уходу за ребенком"
        case 2: function = "Проф. развитие, аттестация, квал. экзамены"
        default: function = "Собственная безопасность, воинский учет, гражданская оборона"
        }
    case .pravovoy:
        switch number {
        case 1: function = "Обеспечение правовой экспертизы"
        case 2: function = "Представление защиты законных интересов инспекции"
        default: function = "Подготовка заключений на действия(бездействия) должностных лиц"
        }
    case .it:
        switch number {
        case 1: function = "Администрирование и резервное копирование баз данных инспекции"
        case 2: function = "Обучение и консультирование пользователей прикладных программ"
        default: function = "Исполнение функций оператора удостоверяющего центра"
        }
    case .analiza:
        switch number {
        case 1: function = "Контроль за выполнением доведенных индикативных показателей"
        case 2: function = "Анализ базы налогооблажения, начислений, поступлений"
        default: function = "Мониторинг и прогнозирование поступлений налоговых платежей"
        }
    case .registracyy:
        switch number {
        case 1: function = "Учет налогоплательщиков"
        case 2: function = "Государственная регистрация ЮЛ и ИП"
        default: function = "Представление сведений из ЕГРН, РДЛ"
        }
    case .rabotySNalogoplat:
        switch number {
        case 1: function = "Информирование налогоплательщиков о действующем законодательстве"
        case 2: function = "Выдача электронных подписей"
        default: function = "Прием и регистрация документов"
        }
    case .kameralniy1:
        switch number {
        case 1: function = "Камеральные проверки по НДС"
        case 2: function = "Камеральные проверки по косвенным налогам"
        default: function = "Контроль расхождений"
        }
    case .kameralniy2:
        switch number {
        case 1: function = "Камеральные проверки в отношении налога на прибыль"
        case 2: function = "Камеральные проверки в отношении налога на имущество организаций"
        default: function = "Камеральные проверки в отношении налога на добычу полезных ископаемых"
        }
    case .kameralniy3:
        switch number {
        case 1: function = "Камеральные проверки по НДФЛ"
        case 2: function = "Проверки по расчетам от продажи и дарения"
        default: function = "Представление налоговых вычетов в упрощенном порядке"
        }
    case .kameralniy4:
        switch number {
        case 1: function = "Исчисление имущественных налогов ФЛ"
        case 2: function = "Исчисление налога на имущество"
        default: function = "Исчисление земельного налога"
        }
    case .kameralniy5:
        switch number {
        case 1: function = "Камеральные проверки расчетов для исчисления и уплаты налогов и взносов"
        case 2: function = "Работа с налогоплательщиками по легализации налогооблагаемой базы"
        default: function = "Анализ схем уклонения от налогооблажения"
        }
    case .kameralniy6:
        switch number {
        case 1: function = "Камеральные проверки деклараций по акцизам"
        case 2: function = "Соблюдение валютного законодательства"
        default: function = "Отраслевой проект"
        }
    case .kameralniy7:
        switch number {
        case 1: function = "Специальные налоговые режимы"
        case 2: function = "Налог на профессиональный доход"
        default: function = "Единый налог, уплачиваемый по патентной системе налогооблажения"
        }
    case .operativnogo:
        switch number {
        case 1: function = "Контроль и надзор за полнотой учета выручки"
        case 2: function = "Регистрация контрольно-кассовой техники"
        default: function = "Надзор за проведение лотерей, азартных игр"
        }
    }
    return function
}

func generateDepartmentFunctions (departmentType: DepartmentType) -> [String] {
    var functions: [String] = []
    switch departmentType {
    case .leaderInsp:
        functions.append("Руководство текущей деятельностью инспекции")
    case .obshiy:
        functions.append("Прием, регистрация и отправка входящей и исходящей корреспонденции")
        functions.append("Прием документов на хранение, ведение архива")
        functions.append("Ретросканирование, ответы на запросы сторонних организаций")
    case .hoz:
        functions.append("Материально-техническое обеспечение")
        functions.append("Заключение договоров(тепловая и электрическая энергия)")
        functions.append("Обеспечение автотранспортом, обслуживание служебных помещений")
    case .finansy:
        functions.append("Исполнение сметы расходов на содержание инспекции")
        functions.append("Санкционирование расходов бюджет")
        functions.append("Взаимодействие с ФКУ ЦОКР по передаче централизуемых полномочий")
    case .kadry:
        functions.append("Прием, перевод, увольнение, отпуска, отпуска по уходу за ребенком")
        functions.append("Проф. развитие, аттестация, квал. экзамены")
        functions.append("Собственная безопасность, воинский учет, гражданская оборона")
    case .pravovoy:
        functions.append("Обеспечение правовой экспертизы")
        functions.append("Представление защиты законных интересов инспекции")
        functions.append("Подготовка заключений на действия(бездействия) должностных лиц")
    case .it:
        functions.append("Администрирование и резервное копирование баз данных инспекции")
        functions.append("Обучение и консультирование пользователей прикладных программ")
        functions.append("Исполнение функций оператора удостоверяющего центра")
    case .analiza:
        functions.append("Контроль за выполнением доведенных индикативных показателей")
        functions.append("Анализ базы налогооблажения, начислений, поступлений")
        functions.append("Мониторинг и прогнозирование поступлений налоговых платежей")
    case .registracyy:
        functions.append("Учет налогоплательщиков")
        functions.append("Государственная регистрация ЮЛ и ИП")
        functions.append("Представление сведений из ЕГРН, РДЛ")
    case .rabotySNalogoplat:
        functions.append("Информирование налогоплательщиков о действующем законодательстве")
        functions.append("Выдача электронных подписей")
        functions.append("Прием и регистрация документов")
    case .kameralniy1:
        functions.append("Камеральные проверки по НДС")
        functions.append("Камеральные проверки по косвенным налогам")
        functions.append("Контроль расхождений")
    case .kameralniy2:
        functions.append("Камеральные проверки в отношении налога на прибыль")
        functions.append("Камеральные проверки в отношении налога на имущество организаций")
        functions.append("Камеральные проверки в отношении налога на добычу полезных ископаемых")
    case .kameralniy3:
        functions.append("Камеральные проверки по НДФЛ")
        functions.append("Проверки по расчетам от продажи и дарения")
        functions.append("Представление налоговых вычетов в упрощенном порядке")
    case .kameralniy4:
        functions.append("Исчисление имущественных налогов ФЛ")
        functions.append("Исчисление налога на имущество")
        functions.append("Исчисление земельного налога")
    case .kameralniy5:
        functions.append("Камеральные проверки расчетов для исчисления и уплаты налогов и взносов")
        functions.append("Работа с налогоплательщиками по легализации налогооблагаемой базы")
        functions.append("Анализ схем уклонения от налогооблажения")
    case .kameralniy6:
        functions.append("Камеральные проверки деклараций по акцизам")
        functions.append("Соблюдение валютного законодательства")
        functions.append("Отраслевой проект")
    case .kameralniy7:
        functions.append("Специальные налоговые режимы")
        functions.append("Налог на профессиональный доход")
        functions.append("Единый налог, уплачиваемый по патентной системе налогооблажения")
    case .operativnogo:
        functions.append("Контроль и надзор за полнотой учета выручки")
        functions.append("Регистрация контрольно-кассовой техники")
        functions.append("Надзор за проведение лотерей, азартных игр")
    }
    return functions
}

func generateInspLeaders(leaderInsp: String, inspection: String) -> [Contact] {
    var leaders: [Contact] = []
    leaders.append(Contact(name: leaderInsp,
                           department: .leaderInsp,
                           gender: .female,
                           functions: generateContactFunctions(department: .leaderInsp),
                           dateBirth: generateDate(),
                           jobTitle: "Начальник",
                           phone: generateNumber()))
    leaders.append(Contact(name: generateName(gender: .female),
                           department: .leaderInsp,
                           gender: .female,
                           functions: generateContactFunctions(department: .leaderInsp),
                           dateBirth: generateDate(),
                           jobTitle: "Заместитель начальника",
                           phone: generateNumber()))
    leaders.append(Contact(name: generateName(gender: .male),
                           department: .leaderInsp,
                           gender: .male,
                           functions: generateContactFunctions(department: .leaderInsp),
                           dateBirth: generateDate(),
                           jobTitle: "Заместитель начальника",
                           phone: generateNumber()))
    leaders.append(Contact(name: generateName(gender: .female),
                           department: .leaderInsp,
                           gender: .female,
                           functions: generateContactFunctions(department: .leaderInsp),
                           dateBirth: generateDate(),
                           jobTitle: "Заместитель начальника",
                           phone: generateNumber()))
    return leaders
}

func fillDepartment(department: DepartmentType, leaderName: String) -> [Contact] {
    var contacts: [Contact] = []
    contacts.append(Contact(name: leaderName,
                            department: department,
                            gender: .male,
                            functions: "Руководство текущей деятельностью отдела",
                            dateBirth: generateDate(),
                            jobTitle: "Начальник отдела",
                            phone: generateNumber()))
    contacts.append(Contact(name: generateName(gender: .female),
                            department: department,
                            gender: .female,
                            functions: "Руководство текущей деятельностью отдела",
                            dateBirth: generateDate(),
                            jobTitle: "Заместитель начальника отдела",
                            phone: generateNumber()))
    for _ in 3...12 {
        let randomNumber = Int.random(in: 1...2)
        let currentGender = randomNumber == 1 ? Gender.male : Gender.female
        let name = generateName(gender: currentGender)
        contacts.append(Contact(name: name,
                                department: department,
                                gender: currentGender,
                                functions: generateContactFunctions(department: department),
                                dateBirth: generateDate(),
                                jobTitle: titles[Int.random(in: 0...titles.count-1)],
                                phone: generateNumber()))
    }
    return contacts
}


func fillInspection(leaderInsp: String, inspection: String) -> [Depatrment] {
    var departments: [Depatrment] = []
    departments.append(Depatrment(leader: leaderInsp, inspection: inspection, type: .leaderInsp, room: "402"))
    var leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .obshiy,
                                  room: "234"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .hoz,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .finansy,
                                  room: "255"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .pravovoy,
                                  room: "225"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .it,
                                  room: "265"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .analiza,
                                  room: "275"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .registracyy,
                                  room: "285"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .rabotySNalogoplat,
                                  room: "295"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .kameralniy1,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .kameralniy2,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .kameralniy3,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .kameralniy4,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .kameralniy5,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .kameralniy6,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .kameralniy7,
                                  room: "245"))
    leader = generateName(gender: .male)
    departments.append(Depatrment(leader: leader,
                                  inspection: inspection,
                                  type: .operativnogo,
                                  room: "245"))
    return departments
}







