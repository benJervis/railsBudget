class Expense < ApplicationRecord
    
    def convert_to_fortnightly
        freq = self.frequency
        amt = self.amount
        
        if freq == "Weekly"
            return amt * 2
        elsif freq == "Fortnightly"
            return amt
        elsif freq == "Monthly"
            return (amt * 12)/26
        elsif freq == "Yearly"
            return amt / 26
        else
            return 0
        end
    end
    
    def convert_to_weekly
        self.convert_to_fortnightly / 2
    end
    
    def convert_to_monthly
        self.convert_to_fortnightly * 26 / 12 
    end
    
    def convert_to_yearly
        self.convert_to_fortnightly * 26
    end
end
