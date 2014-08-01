module QuizzesHelper
	def link_to_add_fields(name, f, association)
		#binding.pry
		new_object = f.object.send(association).klass.new
		id = new_object.object_id
		fields = f.fields_for(association, new_object, child_index: id) do |builder|
			render(association.to_s.singularize + "_fields", :f => builder)
		end
		link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
	end

	def link_to_add_questions(f)
		new_question = f.object.send(:questions).klass.new
		id = new_question.object_id
		new_question.build_answer
		fields = f.fields_for(:questions, new_question, child_index: id) do |builder|
			render("question_fields", f: builder)
		end
		link_to("Add Question", '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
	end
end
