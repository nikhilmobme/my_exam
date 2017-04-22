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
    

    def students 

      rec_token=params[:token]
      if my_token !=rec_token
        response = {:result=>"error"}
      	return response.to_json
      else
       @student= Student.select("students")
       return @student.to_json
      end
    end

    def marks
      rec_token=params[:token]
      if my_token !=rec_token
        response = {:result=>"error"}
      else
        @mark =Mark.new(marks_params)
        if @mark.save
      	  response ={:result=>"success"}
        else
       	  response = {:result=>"error"}
        end
      end
      return response.to_json
    end

    private def marks_params
      params.require(:mark).permit(:marks)
    end

    def student_info
    	@student=Student.find_by(:id =>params[:student-id])
    	@student_info.name=@student.students
    	@exam=Exam.find_by(:id=>params[:exam-id])
    	@student_info.exam=@exam.exams
    	@mark=Mark.find_by(:id =>params[:student-id])
    	@subject=@mark.subjects
    	@mark=@mark.marks
    	@subject.each do |sub|

        end 

     end
 end



