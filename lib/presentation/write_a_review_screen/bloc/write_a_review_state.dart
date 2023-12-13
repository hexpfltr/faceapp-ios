// ignore_for_file: must_be_immutable

part of 'write_a_review_bloc.dart';

/// Represents the state of WriteAReview in the application.
class WriteAReviewState extends Equatable {
  WriteAReviewState({
    this.reviewquestionController,
    this.writeAReviewModelObj,
  });

  TextEditingController? reviewquestionController;

  WriteAReviewModel? writeAReviewModelObj;

  @override
  List<Object?> get props => [
        reviewquestionController,
        writeAReviewModelObj,
      ];
  WriteAReviewState copyWith({
    TextEditingController? reviewquestionController,
    WriteAReviewModel? writeAReviewModelObj,
  }) {
    return WriteAReviewState(
      reviewquestionController:
          reviewquestionController ?? this.reviewquestionController,
      writeAReviewModelObj: writeAReviewModelObj ?? this.writeAReviewModelObj,
    );
  }
}
