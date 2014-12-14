class Context

  attr_accessor :output_buffer

  def header
    'Colors'
  end

  def item
    [ { :name => 'red',   :current => true,  :url => '#red'   },
      { :name => 'green', :current => false, :url => '#green' },
      { :name => 'blue',  :current => false, :url => '#blue'  } ]
  end

end
