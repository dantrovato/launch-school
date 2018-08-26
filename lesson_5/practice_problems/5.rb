# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# figure out the total age of just the male members of the family.

# MY SLUSH

total = []

munsters.each do |key, value|
  if value["gender"] == "male"
    total << value["age"]
  end

end

p total.sum

# ACTUAL SLUSH

totalz = 0

munsters.each_value do |val|
  totalz += val['age'] if val['gender'] == 'male'
end

p totalz
