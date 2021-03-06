#  _         _      ___
# |  \     /  |    /   \
# | | \   / | |   |  O  |
# | |\ \ / /| |    \   /
# | | \ V / | |    /   \
# | |  \_/  | |   |  O  |
# |_|       |_|agic\___/Ball


require "pry"
require "colorize"

@answer = [
	"Yes.",
	"No.",
	"Maybe.",
	"You really don't know?",
	"You don't want to know.",
	"I'm not sure.",
	"I don't think so.",
	"It depends...",
	"Did you know that 15 minutes could save you 15 percent or more on car insurance?",
	"That's not a question you should be asking me.",
	"Don't you have to be somewhere?",
	"Who sent you?",
	"Irrelevant.",
	"Loading...",
	"Please hold while we fax your request to the Director of Prophecy.",
	"You may be hoping I say yes... but no.",
	"Are you kidding? Haha!",
	"Not a chance.",
	"Of course not.",
	"Of course!",
	"Undoubtedly!",
	"Is this a joke?",
	"Wait. You're kidding, right?",
	"Um... Yes.",
	"Well yeah.",
	"Sure.",
	"I'll have to think about it."
	]


def question
	puts "--------------------------------------".colorize(:pink)
	puts "MAGIC 8 BALL".colorize(:cyan)
	puts "Ask me anything... but only if".colorize(:cyan)
	puts "you really want the answer.".colorize(:cyan)
	puts "If you don't want to know,".colorize(:cyan)
	puts "please type 'quit' now.".colorize(:cyan)
	puts "--------------------------------------".colorize(:pink)
	ques = gets.downcase.strip
	case ques
		when "quit"
			exit
		when "add_answer"
			new_answer_shovel
		when "print_answers"
			print_answers
		else
			answer
	end
end

def new_answer_shovel
	new_answer = gets.strip
			if @answer.include?(new_answer)
				puts " "
				puts "Please enter a different answer.".colorize(:red)
				puts " "
				new_answer_shovel
			else
				@answer << new_answer
				puts " "
				puts "Answer recorded.".colorize(:cyan)
				question
			end
end

def print_answers
	puts " "
	puts "Fine. This is everything I know.".colorize(:cyan)
	puts " "
	puts @answer
	puts " "
	question
end

def answer
	puts "++++++++++++++++++++++++++++++++++++++".colorize(:yellow)
	puts @answer.sample.colorize(:red)
	puts "++++++++++++++++++++++++++++++++++++++".colorize(:yellow)
	puts " "
	question
end

question