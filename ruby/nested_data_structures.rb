apartment_building = {
  basement: ["washing machine", "dryer", "boiler"],
  first_floor: {
    people: ["Ronald", "Gwen"],
    furniture: ["sofa", "coffee table"],
    rooms: ["living room", "kitchen", "bedroom", "bathroom"]
    },
  apartment_2a: {
    rooms: ["kitchen", "bedroom", "bathroom"],
    people: ["Jerry", "Ellen"],
    furniture: ["refrigerator", "microwave", ["mattress", "pillows", "sheets"]]
    },
  apartment_2b: {
    rooms: ["bathroom", "studio"],
    people: "New occupant",
    furniture: {
      packed_furniture: ["books", "kitchen appliances"],
      unpacked_furniture: ["cabinet", "guitar"]
    }},
  attic:
    ["air conditioning equipment", "tools"]
}

p apartment_building

# Access "guitar"
p apartment_building[:apartment_2b][:furniture][:unpacked_furniture][1]
# Access "pillows"
p apartment_building[:apartment_2a][:furniture][2][1]
# Access "boiler"
p apartment_building[:basement][2]