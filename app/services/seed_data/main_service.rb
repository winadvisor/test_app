module SeedData
  class MainService

    def process
      create_default_user
      create_funds
      create_entities
      create_fund_class
      create_series
      create_investment
    end

    def create_funds
      SeedData::FundData::DATA.each do |fund_details|
        parent = Fund.find_by(code: fund_details[:parent_code])
        fund = Fund.find_or_initialize_by(code: fund_details[:code],
                                          name: fund_details[:name],
                                          fund_type: fund_details[:fund_type])
        fund.parent = parent if parent
        fund.save
      end
    end

    def create_entities
      SeedData::EntityData::DATA.each do |code, name|
        Entity.where(code: code, name: name).first_or_create!
      end
    end

    def create_fund_class
      SeedData::FundClassesData::DATA.each do |fund_class_details|
        fund = Fund.find_by(code: fund_class_details[:fund_code])
        fund_class = FundClass.find_or_initialize_by(code: fund_class_details[:code], fund: fund)
        fund_class.name = fund_class_details[:name]
        fund_class.management_fee = fund_class_details[:management_fee]
        fund_class.incentive_fee = fund_class_details[:incentive_fee]
        fund_class.new_issue = fund_class_details[:new_issue]
        fund_class.save
      end
    end

    def create_series
      SeedData::SeriesData::DATA.each do |series_details|
        series = Series.find_or_initialize_by(code: series_details[:code])
        series.assign_attributes(series_details)
        puts "Series: #{series.changes}"
        series.save
      end
    end

    def create_investment
      SeedData::InvestmentData::DATA.each do |investment_details|
        fund_class = FundClass.find_by(code: investment_details[:fund_class_code])
        entity = Entity.find_by(code: investment_details[:entity_code])
        series = Series.find_by(code: investment_details[:series_code])
        if series
          investment = Investment.find_or_initialize_by(fund_class: fund_class, series: series, entity: entity)
        else
          investment = Investment.find_or_initialize_by(fund_class: fund_class, entity: entity)
        end

        investment.capital_account_code = investment_details[:capital_account_code]
        investment.amount_contributed = investment_details[:amount_contributed]
        investment.save
      end
    end

    def create_default_user
      User.first_or_create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
    end
  end
end