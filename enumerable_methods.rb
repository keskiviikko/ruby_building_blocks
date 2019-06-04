module Enumerable
    def my_each
        for i in self
            yield(i)
        end
    end
    
    def my_each_with_index
        index = 0
        for i in self
            yield(i,index)
            index+=1
        end
    end

    def my_select
        selected = []
        for i in self
            selected << i if yield(i)
        end
        selected
    end

    def my_all?
        status = true
        for i in self
            if yield(i) == true
                next
            else
                status = !status
                break
            end
        end
        status
    end

    def my_any?
        status = false
        for i in self
            status = yield(i)
            break if status
        end
        status
    end

    def my_none?
        status = true
        for i in self
            if yield(i)
                status = !status
                break
            end
        end
        status
    end

    def my_count
        self.length
    end

    def my_map(code = nil)
        arr = []
        return self unless code or block_given?
        for item in self do
          if block_given?
            arr << yield(item)
          else
            arr << code.call(item)
          end
        end
        arr
    end
    
    def my_inject
        accumulator = self[0]
        for item in self[1..self.length] do
            accumulator = yield(accumulator,item)
        end
        accumulator
    end
end

[1,2,3,4,5].my_each do |i|
    puts i
end
