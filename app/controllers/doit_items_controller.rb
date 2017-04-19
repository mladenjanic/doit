class DoitItemsController < ApplicationController
   before_action :set_doit_list 
   before_action :set_doit_item, except: [:create]
    def create
        @doit_item = @doit_list.doit_items.create(doit_item_params)
        
        redirect_to @doit_list
    end
    
    def destroy
        if @doit_item.destroy
            flash[:success] = "Doit List item was deleted"
        else
            flash[:error] = "Doit List item could net be deleted"
        end
        redirect_to @doit_list
    end
    
    def complete
        @doit_item.update_attribute(:completed_at, Time.now)
        redirect_to @doit_list, notice: "Doit item completed"
    end
    
    private
    
    def set_doit_list
        @doit_list = DoitList.find(params[:doit_list_id])
    end
    
    def set_doit_item
       @doit_item = @doit_list.doit_items.find(params[:id]) 
    end
    
    def doit_item_params
        params[:doit_item].permit(:content)
    end
        
end
