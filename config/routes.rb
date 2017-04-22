Rails.application.routes.draw do
	get 'exams'=>'exam_apis#exams'
	get 'students' =>'exam_apis#students'
	post 'marks'  => 'exam_apis#marks'
	get  'student_info' => 'exam_apis#student_info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
