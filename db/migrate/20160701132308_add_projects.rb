class Project < ActiveRecord::Base
end
class AddProjects < ActiveRecord::Migration
  def up
    [ {title: :wine_education, category: :oenology, date: Date.new(2014,1,1), location: 'Gorizia'},
      {title: :mondovisioni, category: :seminar, date: Date.new(2013,4,1), location: 'Gorizia'},
      {title: :ficlu, category: :seminar, date: Date.new(2015,4,16), location: 'Gorizia'},
      {title: :uniwine, category: :oenology, date: Date.new(2015,6,5), location: 'Collio'},
      {title: :estoria_2015, category: :seminar, date: Date.new(2015,5,21), location: 'Gorizia'},
      {title: :collio_prize_2016, category: :oenology, date: Date.new(2016,6,25), location: 'Collio'}
    ].each{|p| Project.create!(p)}

  end

  def down
    Project.delete_all
  end
end
