# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::Pages < Sketchup::Entity

  # Includes

  include Enumerable

  # Class Methods

  # The add_frame_change_observer method is used to add a new frame change
  # observer that is called with each frame of an animation, meaning the
  # end user has clicked on a Scene tab (aka Page) inside SketchUp and
  # the camera is animating to that scene.
  # 
  # The argument is an object that implements a method frameChange with the
  # following form:
  # This method is called during a slide show or creation of an animation after
  # the camera has been set up, but before the frame is displayed. It give you a
  # chance to perform your own actions during the animation. The arguments for
  # frameChange method are the Page that you transition from (fromPage), the Page
  # that you transition to (toPage), and a percent_done between 0.0 and 1.0 that
  # tell you the percentage of the way between the two pages.
  # 
  # By watching the percent_done for 1.0, you can activate Ruby code that
  # executes as soon as the user's camera has finished animating.
  # 
  # The method returns an integer id that can be stored and later used to remove
  # the observer with the Pages.remove_frame_change_observer method.
  # 
  # Note: In SketchUp 6 and 7, the fromPage argument into the callback does not
  # appear to be populated on the PC. You can store a variable that keeps track
  # of the toPage and then use that on a subsequent Scene selection to determine
  # the last Page that the user was on.
  #
  # @example 
  #   # Define the event hangler object.
  #   class FrameChangeObserver
  #     def frameChange(fromPage, toPage, percent_done)
  #       # Actual code here.
  #     end
  #   end
  #   
  #   # Then attach it to the global Pages object.
  #   id = Sketchup::Pages.add_frame_change_observer(FrameChangeObserver.new)
  #
  # @example 
  #   id = Sketchup::Pages.add_frame_change_observer(FrameChangeObserver.new)
  #
  # @param object
  #   An object that implements the frameChange method.
  #
  # @return id - A unique id of the observer
  #
  # @version SketchUp 6.0
  def self.add_frame_change_observer(object)
  end

  # The remove_frame_change_observer method is used to remove a frame change
  # observer
  # 
  # The argument is the number returned from the call to
  # add_frame_change_observer.
  #
  # @example 
  #   Sketchup::Pages.remove_frame_change_observer id
  #
  # @param observer_id
  #   The unique id returned by add_frame_change_observer
  #
  # @return success - true if successful
  #
  # @version SketchUp 6.0
  def self.remove_frame_change_observer(observer_id)
  end

  # Instance Methods

  # The [] method retrieves a page by either name or index.
  #
  # @example 
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   page = pages["Page 2"]
  #   if (page)
  #     UI.messagebox page
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param index_or_name
  #   The index or the string name of the specific page.
  #
  # @return page - a Page object if successful
  #
  # @version SketchUp 6.0
  def [](index_or_name)
  end

  # The add method is used to add an empty Page object to the collection.
  # 
  # If no name is given, then a new name is generated using the default name for
  # new Pages. If a name is given, then a new Page with that name is
  # added.
  # 
  # If the flags parameter is given, it controls which properties are saved with
  # the Page. See the Page.update method for a description of the flags that can
  # be set.
  # 
  # If index is given, it specifies the position in the page list that the new
  # page is added.  Otherwise the new page is added to the end.
  #
  # @example 
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   if (status)
  #     UI.messagebox status
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param name
  #   The name of the specific page.
  #
  # @param [optional] flags
  #   Bit flags in integer form.
  #
  # @param [optional] index
  #   Index of where to inset.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def add(name, flags, index)
  end

  # The add_matchphoto_page method is used to add a photomatch page to the
  # model. This is an advanced feature that was added to support internal
  # SketchUp work, so it is unlikely to be useful to you.
  #
  # @example 
  #   pages = Sketchup.active_model.pages
  #   page = pages.add_matchphoto_page "Test"
  #
  # @param image_name
  #   String image name.
  #
  # @param [optional] camera
  #   Camera object.
  #
  # @param [optional] page_name
  #   String page name.
  #
  # @return page - the new photomatch page.
  #
  # @version SketchUp 7.0
  def add_matchphoto_page(image_name, camera, page_name)
  end

  # The add_observer method is used to add an observer to the Pages object.
  # See the PagesObserver interface for more details.
  #
  # @example 
  #   pages = Sketchup.active_model.pages
  #   status = pages.add_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  #
  # @example 
  #   pages = Sketchup.active_model.pages
  #   pages.add('Page 1')
  #   pages.add('Page 2')
  #   number = pages.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return integer - the number of pages if successful
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The each method is used to iterate through pages.
  #
  # @example 
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   pages.each {|page| UI.messagebox page}
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [page] Variables that will hold each page as it is found.
  def each
  end

  # The erase method is used to remove a page from the collection.
  #
  # @example 
  #   page = Sketchup.active_model.pages.add('Hello World')
  #   Sketchup.active_model.pages.erase(page)
  #
  # @param page
  #   The page you wish to delete.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def erase(page)
  end

  # The {#size} method is used to retrieve the number of pages.
  # 
  # The {#length} method is an alias for {#size}.
  #
  # @example 
  #   pages = Sketchup.active_model.pages
  #   pages.add('Page 1')
  #   pages.add('Page 2')
  #   number = pages.size
  #
  # @return integer - the number of pages if successful
  #
  # @version SketchUp 6.0
  def length
  end

  # The parent method is used to determine the model for the Pages collection.
  #
  # @example 
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   model = pages.parent
  #
  # @return model - the model that contains the pages if successful
  #
  # @version SketchUp 6.0
  def parent
  end

  # The remove_observer method is used to remove an observer from the current
  # object. See the PagesObserver interface for more details.
  #
  # @example 
  #   pages = Sketchup.active_model.pages
  #   status = pages.remove_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The selected_page method is used to retrieve the currently selected page.
  #
  # @example 
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   page = pages.selected_page
  #
  # @return page - the currently selected Page object if successful
  #
  # @version SketchUp 6.0
  def selected_page
  end

  # The selected_page method is used to set the currently selected page. Once
  # you set this, SketchUp will animate to that page as if the user had clicked
  # on its scene tab.
  #
  # @example 
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   pages.selected_page = model.pages[1]
  #
  # @param [Sketchup::Page] page
  #
  # @return status - true if successful
  #
  # @version SketchUp 6.0
  def selected_page=(page)
  end

  # The show_frame_at method is used to show a frame in animation (of the slide
  # show) at a given time in seconds.
  #
  # @example 
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   status = pages.show_frame_at 10
  #
  # @param seconds
  #   The time in seconds.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def show_frame_at(seconds)
  end

  # The {#size} method is used to retrieve the number of pages.
  # 
  # The {#length} method is an alias for {#size}.
  #
  # @example 
  #   pages = Sketchup.active_model.pages
  #   pages.add('Page 1')
  #   pages.add('Page 2')
  #   number = pages.size
  #
  # @return integer - the number of pages if successful
  #
  # @version SketchUp 6.0
  def size
  end

  # The slideshow_time method is used to get the amount of time that a slideshow
  # of all of the pages will take. This takes into account the transition time
  # for each Page and the amount of time that each Page is displayed.
  #
  # @example 
  #   pages = Sketchup.active_model.pages
  #   time = pages.slideshow_time
  #
  # @return status - true if successful
  #
  # @version SketchUp 6.0
  def slideshow_time
  end

end