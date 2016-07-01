class WordsController < ApplicationController
	before_action :set_category
	def create
		@word = @category.words.create(word_params)
		redirect_to @category
	end

	private

	def set_category
		@category = Category.find(params[:category_id])
	end

	def word_params
		params[:word].permit(:title, :meaning)
	end
end
