describe 'GET #exams ' do
  context "it will return the exam types" do 
    it "first check the authentication token" do 
      my_token= "abcdef"
      rec_token =params[:token]
      expect(my_token).eq be rec_token
    end
    it "will return the different exam types" do
      @exam=Exam.select("exams")
      return @exam.to_json
    end 
  end
end




describe 'GET #students ' do
  context 'it will return the all students' do 
    it 'first check the authentication token' do 
      my_token= "abcdef"
      rec_token =params[:token]
      expect(my_token).eq be rec_token
    end
    it 'will return all students name types' do
      @student=Student.select("students")
      return @student.to_json
    end 
  end
end

