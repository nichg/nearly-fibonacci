class FibinocciCalculator
  attr_accessor :result, :limit

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
