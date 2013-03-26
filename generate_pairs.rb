DEVS = ['Thomas','Justin','Phillip','Kris','Tim','Nikea','Mike','Syl','Dru','Paulo']

def generate_pairs(anchor)
  return DEVS.sample(2) unless anchor
  [DEVS.delete(anchor.to_s), DEVS.sample]
end
