import 'question-answer.service.dart';
import 'quiz-master.service.dart';

class QuizDataRepository{

  List<QuestionAnswer> fetchAll(){
    return <QuestionAnswer>[

      QuestionAnswer('Who was the first \'Param Veer Chakra\' Awardee',[
        'Abdul Hameed',
        'Virkam Batra',
        'Somenath Sharma',
        'Shaitan Singh'
      ],2),

      QuestionAnswer('Who must not be named',[
        'Albus Dumbldore',
        'Harry Potter',
        'Thanos',
        'Voldamorte'
      ],3),

      QuestionAnswer('Which of these is a Language',[
        'Lotus',
        'Groot',
        'Spiderman',
        'Thor'
      ],1),

      QuestionAnswer('Which comic character is known as the Ghost Who Walks',[
        'Spiderman',
        'Batman',
        'Phantom',
        'Superman'
      ],2),

      QuestionAnswer('Who wrote the national anthem of Bangaldesh',[
        'Iqbal',
        'Rabindra Nath Tagore',
        'Bamkim chand chatterjee',
        'Mirja Galib'
      ],1),

    ];
  }

}


