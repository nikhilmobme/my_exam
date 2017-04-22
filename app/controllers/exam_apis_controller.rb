class ExamApisController < ApplicationController

	def list_exams
      @exam = Exam.find[:exams]
	  content_type  :json
	  return @exam.to_json
    end



end
