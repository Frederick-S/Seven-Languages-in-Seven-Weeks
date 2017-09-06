runSlotMethodByName := method(object, slotName, object getSlot(slotName) call)

Car := Object clone
Car drive := method("Driving ..." println)

runSlotMethodByName(Car, "drive")