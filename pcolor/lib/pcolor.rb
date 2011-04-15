class Object
  def p(message, color = :nil)
    color_table = {
      :red      => '31;1',
      :green    => '32;1',
      :yellow   => '33;1',
      :blue     => '34;1',
      :purple   => '35;1',
      :sky      => '36;1'
    }

    if !color.nil? and color_table.has_key? color.to_sym
      print "\e[#{color_table[color]}m"
      Kernel::p message
      print "\e[0m"
    else
      Kernel::p message
    end
  end
end
