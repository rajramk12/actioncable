class LibrarybooksController < ApplicationController

def index 
  @books = Librarybook.all
end

end
