# frozen_string_literal: true
class CompetitionColor
  COLORS = %w(red blue green orange maroon purple black grey brown yellow cyan).freeze

  def initialize(compet)
    @compet = compet
    name_age = compet.name.split
    @method_name = "#{name_age[0].downcase}_#{name_age[1].downcase}_#{@compet.range}"
  end

  def find_color
    return unless [10, 18, 30, 50].include? @compet.range
    send("find_#{@method_name}")
  end

  private def find_recurve_u12_10
    COLORS[0]
  end

  private def find_recurve_u12_18
    COLORS[1]
  end

  private def find_recurve_open_18
    COLORS[2]
  end

  private def find_barebow_open_18
    COLORS[3]
  end

  private def find_compound_open_18
    COLORS[4]
  end

  private def find_recurve_open_30
    COLORS[5]
  end

  private def find_barebow_open_30
    COLORS[6]
  end

  private def find_compound_open_30
    COLORS[7]
  end
end
