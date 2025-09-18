class PhoneBook
    def initialize
        @people = {}
        @listed = {}
    end

    def add(name, number, is_listed)
        if @people.has_key?(name)
            return false
        end
        
        # check phone format
        if not number.match(/^\d{3}-\d{3}-\d{4}$/)
            return false
        end
        
        if is_listed and @listed.has_key?(number)
            return false
        end
        
        @people[name] = {:number => number, :listed => is_listed}
        
        if is_listed
            @listed[number] = name
        end
        
        return true
    end

    def lookup(name)
        if not @people.has_key?(name)
            return nil
        end
        
        person = @people[name]
        if person[:listed]
            return person[:number]
        else
            return nil
        end
    end

    def lookupByNum(number)
        return @listed[number]
    end

    def namesByAc(areacode)
        names = []
        @people.each do |name, info|
            phone = info[:number]
            if phone.start_with?(areacode + "-")
                names << name
            end
        end
        names
    end
end
