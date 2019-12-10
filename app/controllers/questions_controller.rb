class QuestionsController < ApplicationController
  def ask
    @question = 'Stupid Coaching'
  end
    # '@'(@question ou @answer) me permet de l'utiliser dans les autres fichers;
    # comme la vue pour afficher stupid coaching par exemple;

  def answer
    if params[:question] == 'i am going to work'
      @answer = 'Great!'
    elsif params[:question].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
