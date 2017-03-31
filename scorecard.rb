# Scorecard must belong to user 

module Yahtzee
  class Scorcard
    def initialize()
      @categories = []
    end

    def add_categories()
      categories.each do |cat|
        @categories << [cat, 0]
      end
    end

    def add_total(name, &calculator)
      @categories << [name, calculator]
    end

    def count( index, count )
      @categories.assoc(category(index))[1] += count
    end
    
    def [](name)
      @categories.assoc(name)[1]
    end