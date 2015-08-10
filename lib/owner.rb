class Owner
  # code your solution here!
  attr_accessor :name, :dog, :walking, :vet

  def prepare_items
    @dog.leash = true
    @dog.plastic_bag = true
  end

  def walk
    prepare_items
    @walking = true
  end

  def walking?
    @walking
  end

  def vet_checkup
    prepare_items
    @vet=true
  end

  def vet_checkup?
    @vet
  end

end
