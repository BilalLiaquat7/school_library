require './app'

class SchoolLib
  def initialize
    @app = App.new
  end

  def start
    puts 'Welcome to School Lib!'
    loop do
      display_menu
      option = gets.chomp.to_i
      break if option == 7

      process_option(option)
    end
  end

  def display_menu
    puts <<~MENU
      Please enter a number:
      1 - List all Books
      2 - List all People
      3 - Create a Person
      4 - Create a Book
      5 - Create a Rental
      6 - List all rentals for a given person id
      7 - Exit
    MENU
  end

  def process_option(option)
    case option
    when 1
      @app.list_books
    when 2
      @app.list_people
    when 3
      @app.create_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    when 6
      @app.list_rentals
    else
      puts 'Choose between 1 - 7'
    end
  end
end

SchoolLib.new.start
