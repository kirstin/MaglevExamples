Maglev.abort_transaction

Maglev.persistent do
  class Y
    include Maglev::Model
    def abc
      1
    end
  end
  
end


Maglev.commit_transaction
Maglev.abort_transaction
Y.persistent_new()
Maglev.commit_transaction
puts "1 #{Y.all}"
Maglev.abort_transaction

Maglev.persistent do
puts "2 #{Y.all}"
  class Y
    include Maglev::Model
    def abcd
      1
    end
  end
  puts "3 #{Y.all}"
end
Maglev.commit_transaction
puts "4 #{Y.all}"
