class GroupClassesController < ApplicationController
    def index
        @group_classes = GroupClass.all
    end

    def show
        @group_class = GroupClass.find(params[:id])
    end
end
