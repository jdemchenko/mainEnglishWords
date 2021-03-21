//
//  ViewController.swift
//  words
//
//  Created by Иван Демченко on 2019-08-05.
//  Copyright © 2019 Ivan Demchenko. All rights reserved.
//

import UIKit

var b: Int = 0
var a: Int = 0
var sc: Int = 0
var ch: Int = 0
var result_var: Int = 0

let words: [String] = [
    "be","to","of","and","in","that","have","I","It","for",
    "not","on","with", "he","as","you","do","at","this",
    "but","his","by", "from","they", "we","say","her","she",
    "or","my", "one","all","there","their","what","so","up",
    "out","if","about","who","get", "which","go","me","when",
    "make","can","like","time","no","just","him","know",
    "take","people","into","year","your","good", "some"
    ,"them","see","other","than","then","now","look","only",
    "come","its","over","think","also","back","after","use",
    "two", "how","our","work","first","well","way","even"
    ,"new","want","because","any","these","give","day",
    "most","us"
]

let answer: [String] = [
    "быть", "есть", "Быть",
    "К", "к", "к",
    "в", "из-за", "о",
    "И", "и", "и",
    "В", "в", "в",
    "что", "который", "этот",
    "иметь", "имеет", "Иметь",
    "я", "Я", "я",
    "он", "оно", "это",
    "Для", "для", "за",
    "не", "Не", "не",
    "на", "На", "на",
    "с", "С", "с",
    "он", "Он", "он",
    "как", "поскольку", "Как",
    "ты", "вы", "Ты",
    "делать", "делает", "делаешь",
    "у", "около", "на",
    "этот", "этот", "Этот",
    "но", "но", "Но",
    "его", "Его", "его",
    "у", "под", "к",
    "от", "от", "От",
    "они", "Они", "они",
    "мы", "Мы", "мы",
    "говорить", "сказать", "говори",
    "ее", "Ее", "её",
    "Она", "она", "она",
    "Или", "или", "или",
    "мой", "мое", "моё",
    "один", "одно", "первый",
    "все", "всё", "Все",
    "там", "там", "Там",
    "их", "Их", "их",
    "что", "Что", "что?",
    "так", "Так", "так",
    "вверх", "Вверх", "вверх",
    "наружу", "Наружу", "снаружи",
    "если", "если", "Если",
    "о", "О", "об",
    "кто", "Кто", "кто?",
    "Получать", "получить", "получать",
    "Который", "которые", "который",
    "идти", "Идти", "иди",
    "я", "мне", "меня",
    "когда", "Когда", "КОГДА",
    "делать", "Делать", "сделать",
    "мочь", "могу", "смочь",
    "нравиться", "нравится", "Нравится",
    "время", "Время", "времечко",
    "нет", "Нет", "нет",
    "просто", "точно", "правильный",
    "ему", "Ему", "ему",
    "Знать", "знать", "знаю",
    "брать", "взять", "Брать",
    "люди", "человеки", "Люди",
    "в", "внутрь", "внутри",
    "год", "Год", "год",
    "твой", "ваш", "Твой",
    "хороший", "Хорошо", "хорошо",
    "некоторый", "какой-то", "Некоторый",
    "им", "Им", "им",
    "видеть", "Видеть", "вижу",
    "другой", "другие", "другое",
    "чем", "Чем", "чем",
    "затем", "после", "Затем",
    "сейчас", "Сейчас", "сейчас",
    "смотреть", "посмотреть", "смотри",
    "только", "Только", "только",
    "приходить", "прийти", "придти",
    "его", "Его", "его",
    "над", "снова", "больше",
    "думать", "считать", "мыслить",
    "также", "так же", "Также",
    "назад", "Назад", "сзади",
    "после", "После", "после",
    "использовать", "Использовать", "пользоваться",
    "два", "два", "Два",
    "как", "Как", "как",
    "наш", "Наш", "наше",
    "работать", "работа", "Работа",
    "первый", "Первый", "первый",
    "хорошо", "Хорошо", "неплохо",
    "путь", "способ", "Путь",
    "даже", "Даже", "даже",
    "новый", "новое", "новая",
    "хотеть", "хочу", "Хотеть",
    "потому что", "потому", "Потому что",
    "любой", "Любой", "любой",
    "эти", "эта", "это",
    "давать", "дай", "дать",
    "день", "днем", "День",
    "больше", "большинство", "более",
    "нас", "нам", "Нас"
]




class ViewController: UIViewController {
    
    @IBOutlet weak var AnswerLabel: UILabel!
    @IBOutlet weak var WordsTextField: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var TextAbout: UILabel!
    
    
    @IBAction func buttonOk(_ sender: AnyObject) {
        
        TextAbout.text = ""
        
        if a<words.count{
            if let answerVvod: String = WordsTextField.text {
                if answerVvod.caseInsensitiveCompare(answer[b]) == ComparisonResult.orderedSame ||
                    answerVvod.caseInsensitiveCompare(answer[b + 1]) == ComparisonResult.orderedSame ||
                    answerVvod.caseInsensitiveCompare(answer[b+2]) == ComparisonResult.orderedSame {
                    result.textColor = UIColor.green
                    result.text = "Correct"
                    sc = sc+1
                }
                else {
                    result.textColor = UIColor.red
                    result.text = "Wrong"
                    ch = ch+1
                }
            }
            else {
                result.text = "Error"
            }
            WordsTextField.text = ""
        }
        
        a = a + 1
        b = b + 3
        
        if a < words.count{
            AnswerLabel.text = words[a]
        }
        
        if a >= words.count{
            WordsTextField.endEditing(false)
            AnswerLabel.text = ""
            result.text = ""
            TextAbout.textColor = UIColor.blue
            
            result_var = 100/words.count*sc
            AnswerLabel.text = "Вы ответили \(result_var)% правильно"
            
            switch result_var {
            case 0...10:
                TextAbout.text = "Вы почти не знаете эти слова, пора начинать учить!"
            case 11...30:
                TextAbout.text = "Вам знакомы эти слова, но далеко не все, пора начинать учить!"
            case 31...50:
                TextAbout.text = "Осталось выучить оставшуюся половину!"
            case 51...75:
                TextAbout.text = "Неплохо! Большая часть слов тебе знакома"
            case 76...89:
                TextAbout.text = "ХОРОШО! Ты знаешь почти все слова"
            case 90...99:
                TextAbout.text = "Отлично! Ты уверенно владеешь всеми словами"
            case 100:
                TextAbout.text = "УДИВИТЕЛЬНО! ТЫ ЗНАЕШЬ ВСЕ СЛОВА!"
                
            default:
                TextAbout.text = "ERROR"
            }
        }
        
        
    }
    
    override func viewDidLoad() {
        
        TextAbout.text = "Оксфордское сообщество проанализировало огромное количество текстов на английском языке и пришло к выводу, что письменный английский язык на 50% состоит из 100 слов. Сейчас мы определим, как хорошо вы знаете эти слова!"
        
        AnswerLabel.text = words[a]
        
        
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

