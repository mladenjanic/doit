class DoitItemsController < ApplicationController
   before_action :set_doit_list 
    def create
        @doit_item = @doit_list.doit_items.create(doit_item_params)
        
        redirect_to @doit_list
    end
    
    def destroy
        @doit_item = @doit_list.doit_items.find(params[:id])
        if @doit_item.destroy
            flash[:success] = "Doit List item was deleted"
        else
            flash[:error] = "Doit List item could net be deleted"
        end
        redirect_to @doit_list
    end
    
    private
    
    def set_doit_list
        @doit_list = DoitList.find(params[:doit_list_id])
    end
    
    
    
    def doit_item_params
        params[:doit_item].permit(:content)
    end
        
end
