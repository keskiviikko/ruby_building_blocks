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

end

[1,2,3,4,5].my_each do |i|
    puts i
end
