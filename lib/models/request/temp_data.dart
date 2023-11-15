import '../response/SubjectResponseModel.dart';

class TempData {
  static var subjectList = [
    SubjectResponseModel(
        name: "Chirurgie",
        color: "0B404C",
        image: "assets/images/temp_subject_1.png"),
    SubjectResponseModel(
        name: "Gynäkologie",
        color: "62278D",
        image: "assets/images/temp_subject_2.png"),
    SubjectResponseModel(
        name: "Innere Medizin",
        color: "DF7740",
        image: "assets/images/temp_subject_3.png"),
    SubjectResponseModel(
        name: "Neurologie",
        color: "8C3C57",
        image: "assets/images/temp_subject_4.png"),
  ];

  static var mentorList = [
    SubjectResponseModel(
        name: "Areas are now categorized into Preclinical, Clinical and Dental",
        color: "",
        image: "assets/images/temp_mentor_1.jpeg"),
    SubjectResponseModel(
        name:
            "You can get tutoring from other students to clarify crucial issues",
        color: "",
        image: "assets/images/temp_mentor_2.jpeg"),
    SubjectResponseModel(
        name:
            "Talk to doctors with different specialties and ask them about their experiences.",
        color: "",
        image: "assets/images/temp_mentor_3.jpeg"),
  ];
}
