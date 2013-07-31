module Magic8BallHelper

  private

    def load_resource_file(filename)
      resource_file = filename.resource
      error = Pointer.new(:object)
      file_contents = NSData.alloc.initWithContentsOfFile(resource_file,
                        options: NSDataReadingUncached, error: error)
      raise BW::JSON::ParserError, error[0] if error[0]
      file_contents
    end
end