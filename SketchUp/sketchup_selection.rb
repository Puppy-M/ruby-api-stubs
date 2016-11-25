# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::Selection

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to retrieve an Entity object from the selection by
  # index. Index 0 is the first entity in the selection.
  # 
  # This method is not very efficient. If you need to look at every entity in
  # the selection, consider using Selection.each instead of using this method
  # to manually grab each one.
  #
  # @example 
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   selection = model.selection
  #   entity = entities[0]
  #   status = selection.add entity
  #   entity = selection[0]
  #   if (entity)
  #     UI.messagebox entity
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param index
  #   The index of the Entity object to retrieve.
  #
  # @return entity - an Entity object if successful
  #
  # @version SketchUp 6.0
  def [](index)
  end

  # The add method is used to add entities to the selection.  Entities that are
  # added to the Selection are visually indicated by the selection bounding box.
  # 
  # You can pass it individual Entities or an Array of Entities:
  # Note that the add, remove, and toggle methods are all aliases for one
  # another. So if you call remove on an entity that is not selected, it will
  # be toggled to be selected, not removed! Be cautious when writing your code to
  # not make the assumption about the currently selected state of a given entity.
  #
  # @example 
  #   # Add by listing the entities...
  #   ss.add(e1, e2, e3)
  #   
  #   # ...or add by passing an Array of entities.
  #   ss.add([e1, e2, e3])
  #
  # @example 
  #   entities = model.active_entities
  #   entity = entities[0]
  #   status = selection.add entity
  #
  # @param ents_or_array
  #   List or Array of Entity objects.
  #
  # @return status - the number of Entity objects added
  #
  # @version SketchUp 6.0
  def add(ents_or_array)
  end

  # The add_observer method is used to add an observer to the selection object.
  #
  # @example 
  #   selection = Sketchup.active_model.selection
  #   status = selection.add_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The [] method is used to retrieve an Entity object from the selection by
  # index. Index 0 is the first entity in the selection.
  # 
  # This method is not very efficient. If you need to look at every entity in
  # the selection, consider using Selection.each instead of using this method
  # to manually grab each one.
  #
  # @example 
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   selection = model.selection
  #   entity = entities[0]
  #   status = selection.add entity
  #   entity = selection[0]
  #   if (entity)
  #     UI.messagebox entity
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param index
  #   The index of the Entity object to retrieve.
  #
  # @return entity - an Entity object if successful
  #
  # @version SketchUp 6.0
  def at(index)
  end

  # The clear method is used to clear the selection.
  #
  # @example 
  #   entity = entities[0]
  #   selection.add entity
  #   UI.messagebox "Ready to Clear"
  #   selection.clear
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def clear
  end

  # The include? method is an alias for contains
  #
  # @example 
  #   selection.add entity
  #   status = selection.include? entity
  #
  # @param entity
  #   An Entity object.
  #
  # @return status - true if the Entity object is in the selection.
  #   False if the Entity object is not in the selection.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def contains?(entity)
  end

  #
  # @example 
  #   selection = Sketchup.active_model.selection
  #   number = selection.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return integer - the number of Entities in the selection if
  #   successful
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The each method is used to iterate through all of the selected entities.
  # 
  # If you want to do something with all of the selected Entities, this is more
  # efficient than using [].
  #
  # @example 
  #   selection.each { |entity| UI.messagebox(entity) }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [entity] A variable that will hold each Entity object as they
  #   are found.
  def each
  end

  # The empty? method is used to determine if there are entities in the
  # selection.
  #
  # @example 
  #   status = selection.add entity
  #   status = selection.empty
  #
  # @return status - true if the selection is empty. False if the
  #   selection is not empty.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def empty?
  end

  # The first method is used to retrieve the first selected entity
  # 
  # Returns nil if nothing is selected. This method is useful when you know that
  # only a single entity is selected, or you are only interested in the first
  # selected entity.
  #
  # @example 
  #   status = selection.add entity
  #   entity = selection.first
  #
  # @return entity - the first selected Entity object if successful
  #
  # @version SketchUp 6.0
  def first
  end

  # The include? method is an alias for contains
  #
  # @example 
  #   selection.add entity
  #   status = selection.include? entity
  #
  # @param entity
  #   An Entity object.
  #
  # @return status - true if the Entity object is in the selection.
  #   False if the Entity object is not in the selection.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def include?(entity)
  end

  # The is_curve? method is used to determine if the selection contains all
  # edges that belong to a single curve.
  #
  # @example 
  #   selection.add entity
  #   status = selection.is_curve?
  #
  # @return status - true if the selection contains all edges that
  #   belong to a single curve. False if the selection does
  #   not contain all edges that belong to a single curve.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def is_curve?
  end

  # The is_surface? method is used to determine if the selection contains only
  # all of the faces that are part of a single curved surface.
  #
  # @example 
  #   selection.add entity
  #   status = selection.is_surface
  #
  # @return status - true if the selection contains all faces that
  #   belong to a single curved surface. False if the
  #   selection does not contain all faces that belong to a
  #   single curved surface.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def is_surface?
  end

  # The {#length} method is used to retrieve the number of selected Entities.
  # 
  # The {#nitems} methods is an alias of {#length}.
  # 
  # The {#size} methods is an alias of {#length} added in SketchUp 2014.
  #
  # @example 
  #   selection = Sketchup.active_model.selection
  #   number = selection.length
  #
  # @return integer - the number of entities in the selection if
  #   successful
  #
  # @version SketchUp 6.0
  def length
  end

  # The model method retrieves the model for the selection.
  #
  # @example 
  #   model = selection.model
  #
  # @return model - the model that includes the selection if
  #   successful
  #
  # @version SketchUp 6.0
  def model
  end

  # The {#length} method is used to retrieve the number of selected Entities.
  # 
  # The {#nitems} methods is an alias of {#length}.
  # 
  # The {#size} methods is an alias of {#length} added in SketchUp 2014.
  #
  # @example 
  #   selection = Sketchup.active_model.selection
  #   number = selection.length
  #
  # @return integer - the number of entities in the selection if
  #   successful
  #
  # @version SketchUp 6.0
  def nitems
  end

  # The remove method is used to remove entities from the selection.
  # 
  # You can pass it individual Entities or an Array of Entities:
  # Note that the add, remove, and toggle methods are all aliases for one
  # another. So if you call remove on an entity that is not selected, it will
  # be toggled to be selected, not removed! Be cautious when writing your code to
  # not make the assumption about the currently selected state of a given entity.
  #
  # @example 
  #   # Remove by listing the entities...
  #   ss.remove(e1, e2, e3)
  #   
  #   # ...or remove by passing an Array of entities.
  #   ss.remove([e1, e2, e3])
  #
  # @example 
  #   entities = model.active_entities
  #   entity = entities[0]
  #   status = selection.add entity
  #
  # @param ents_or_array
  #   List or Array of Entity objects.
  #
  # @return status - the number of Entity objects removed
  #
  # @version SketchUp 6.0
  def remove(ents_or_array)
  end

  # The remove_observer method is used to remove an observer from the selection
  # object.
  #
  # @example 
  #   selection = Sketchup.active_model.selection
  #   status = object.remove_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The shift method is used to remove the first entity from the selection and
  # returns it.
  #
  # @example 
  #   status = selection.add entity
  #   UI.messagebox "Ready to remove item from selection set"
  #   entity = selection.shift
  #
  # @return entity - the first Entity object in the selection set
  #   if successful
  #
  # @version SketchUp 6.0
  def shift
  end

  # The single_object? method is used to determine if the selection contains a
  # single object.
  # 
  # It can either be a single Entity or a group of Entities for which is_curve?
  # or is_surface? will return true.
  #
  # @example 
  #   status = selection.single_object
  #
  # @return status - true if the selection contains a single
  #   object. False if the selection does not contain a
  #   single object.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def single_object?
  end

  # The {#length} method is used to retrieve the number of selected Entities.
  # 
  # The {#nitems} methods is an alias of {#length}.
  # 
  # The {#size} methods is an alias of {#length} added in SketchUp 2014.
  #
  # @example 
  #   selection = Sketchup.active_model.selection
  #   number = selection.length
  #
  # @return integer - the number of entities in the selection if
  #   successful
  #
  # @version SketchUp 6.0
  def size
  end

  # The toggle method is used to change whether an entity is part of the
  # selection. Entities that are not already selected
  # are added. Entities that are already selected are removed.
  # 
  # You can pass it individual Entities or an Array of Entities:
  # Note that the add, remove, and toggle methods are all aliases for one
  # another. So if you call remove on an entity that is not selected, it will
  # be toggled to be selected, not removed! Be cautious when writing your code to
  # not make the assumption about the currently selected state of a given entity.
  #
  # @example 
  #   # Toggle by listing the entities...
  #   ss.toggle(e1, e2, e3)
  #   
  #   # ...or toggle by passing an Array of entities.
  #   ss.toggle([e1, e2, e3])
  #
  # @example 
  #   entities = model.active_entities
  #   entity = entities[0]
  #   status = selection.add entity
  #
  # @param ents_or_array
  #   List or Array of Entity objects.
  #
  # @return status - the number of Entity objects changed
  #
  # @version SketchUp 6.0
  def toggle(ents_or_array)
  end

end