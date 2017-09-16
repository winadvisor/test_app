module SeedData
  class FundData

    DATA = [
      {code: 'XYZ', name: 'XYZ', fund_type: 'Offshore'},
      {code: 'XYZON', name: 'XYZON', fund_type: 'Onshore', parent_code: 'XYZ'},
      {code: 'XYZOFF', name: 'XYZOFF', fund_type: 'Offshore', parent_code: 'XYZ'}
    ]
  end
end