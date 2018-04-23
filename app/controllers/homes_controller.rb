class HomesController < ApplicationController

def index
    @drafts = Draft.all
    @samples = Sample.all
end

end
