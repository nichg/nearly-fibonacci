class FibonacciCalculator
  attr_accessor :result, :limit

  def initialize( *args )
    if args.size > 0
      if args[0].is_a?(Fixnum) || /[-+]?\d+/ =~ args[0]
        @limit = args[0].to_i
        calculate
        puts @result
      else
        puts "Argument to \"new\" must be numeric, with optional sign (eg: -55, +77)"
      end
    end
  end

  def calculate
    fibs=[0,1]
    @limit = @limit.to_i
    sign = @limit < 0 ? -1: 1

    if @limit.abs < 2
      @result = sign * fibs[@limit.abs] 
    else
      while (fnext = fibs[-1] + fibs[-2]) < @limit
        fibs << fnext
      end
      @result = sign * fibs[-1]
    end
  end

end
