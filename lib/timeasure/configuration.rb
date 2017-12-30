module Timeasure
  class Configuration
    attr_accessor :post_measuring_proc, :rescue_proc, :enable_timeasure_proc

    def initialize
      @post_measuring_proc = lambda { |base_class_name, method_name, t0, t1| }
      @rescue_proc = lambda { |e, base_class| }
      @enable_timeasure_proc = lambda { true }
    end
  end
end
