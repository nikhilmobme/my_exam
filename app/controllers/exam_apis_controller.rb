class ExamApisController < ApplicationController
	my_token= "abcdef"

	def exams 
      rec_token=params[:token]
      if my_token !=rec_token
        response = {:result=>"error"}
      	return response.to_json
      else
        @exam = Exam.select("exams")
	    content_type  :json
	    return @exam.to_json
	  end
    end
    

    def student_name 

      rec_token=params[:token]
      if my_token !=rec_token
        response = {:result=>"error"}
      	return response.to_json
      else
       @student= Student.select("students")
       return @student.to_json
      end
    end


end
