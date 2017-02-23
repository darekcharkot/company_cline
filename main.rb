class Company
  def initialize(name: nil, employees: [])
    @name = name
    @employees = employees
  end

  def employees
    @employees ||= []
  end

  def employees_names
    employees.each_with_index do |employee, idx|
      puts "#{idx.next}. #{employee.first_name} #{employee.last_name}"
    end
  end

  def add_employee(employee)

    employees << employee
  end

  attr_reader :name, :employees
end

class Employee
  def initialize(first_name: nil, last_name: nil)
    @first_name = first_name
    @last_name = last_name
  end
  attr_reader :first_name, :last_name
end

class Main
  AVAILABLE_COMMANDS = {
    help: 'pokaż obecną pomoc',
    exit: 'wyjście z programu',
    set_company: 'Utwórz firmę'
  }.freeze

  def run
    show_intro
    loop do
      puts 'Podaj komendę:'
      read_command
      process_command
      break if command == 'exit'
    end
  end

  attr_reader :command

  def process_command
    command_as_symbol = command.to_sym
    case command_as_symbol
    when :set_company then create_company
    when :help then show_available_commands
    when :exit then puts 'Wyszedłeś z trybu wyboru'
    else
      puts 'Nieznana komenda'
    end
  end

  def create_company
    puts 'Podaj nazwe firmy'
    read_command
    company = Company.new(name: command)
    puts "Firma #{company.name} zostala utworzona"
  end

  def read_command
    @command = $stdin.gets.chomp
  end

  def show_intro
    puts 'To jest mój pierwszy poważny program'
    puts 'Oto dostępne komendy:'
    show_available_commands
  end

  def show_available_commands
    AVAILABLE_COMMANDS.each do |command_name, command_description|
      puts ['*', command_name.to_s, command_description].join(' ')
    end
  end
end
