DEVS = ['Thomas','Justin','Phillip','Kris','Tim','Nikea','Mike','Syl','Dru','Paulo']

module GeneratePairs
  def self.generate(anchor = nil)
    devs_copy = DEVS.clone
    if anchor.nil?
      return devs_copy.sample(2)
    else
      return [devs_copy.delete(anchor.to_s), devs_copy.sample]
    end
  end
  
  def self.get_devs
    return DEVS
  end
end
