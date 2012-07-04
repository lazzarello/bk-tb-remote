class CategorySweeper < ActionController::Caching::Sweeper
  observe Category
  
  def after_create(category)
    clear_cache
  end
  
  def after_update(category)
    clear_cache
  end
  
  def after_destroy(category)
    clear_cache
  end
  
  private
  
  def clear_cache
    Rails.logger.info "category cache sweep"
    expire_fragment('skillbank')
  end
end
