if Rails::VERSION::MAJOR >= 3
  match 'blocks/:action', via: [:get, :post], :controller => 'blocks'
  match 'time_entries', via: [:get, :post], :controller => 'timelog'
  match 'time_entries/:action', via: [:get, :post],:controller => 'timelog'
  match 'time_entries/:action?project_id=:id', via: [:get, :post],:controller => 'timelog'
else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'blocks/:action', :controller => 'blocks'
    map.connect 'time_entries',:controller => 'timelog'
    map.connect 'time_entries/:action',:controller => 'timelog'
    map.connect 'time_entries/:action?project_id=:id',:controller => 'timelog'  
  end
end
