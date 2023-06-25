# initialize store class
class BohemianClothingStore
  attr_accessor :inventory

  def initialize
    @inventory = {}
  end

  # add item to inventory
  def add_item(item, qty)
    @inventory[item] = qty
  end

  # remove item from inventory
  def remove_item(item, qty)
    @inventory[item] -= qty
  end

  # get item quantity from inventory
  def get_inventory(item)
    @inventory[item]
  end

  #display available inventory
  def display_inventory
    @inventory.each do |item, qty|
      puts "Item: #{item} - Qty: #{qty}"
    end
  end

  # calculate total number of items in inventory
  def total_items
    @inventory.inject(0) {|total, (item, qty)| total += qty }
  end

  # check if item is in stock
  def is_in_stock?(item)
    if @inventory[item] > 0 
      return true
    else
      return false
    end
  end

end

# Print out all items in inventory
def list_inventory(store)
  puts "Listing Inventory:"
  store.display_inventory
end

# Create a new bohemian clothing store
store = BohemianClothingStore.new

# Add items to the store
store.add_item("Skirt", 10)
store.add_item("T-Shirt", 20)
store.add_item("Dress", 15)

# Print out the items in inventory
list_inventory(store)

# Remove an item from the inventory
store.remove_item("Skirt", 5)

# Check if 'Skirt' is in stock
if store.is_in_stock?("Skirt")
  puts "Skirt is in stock"
else
  puts "Skirt is not in stock"
end