function result = myFunction(input)
  try
    if input < 0
      error('Input must be non-negative');
    end
    result = someCalculation(input);
  catch e
    % Handle different types of errors
    if strcmp(e.identifier, 'MATLAB:pmaxsize') || strcmp(e.identifier, 'MATLAB:divideByZero')
      warning('Calculation resulted in overflow or division by zero! Please check input.');
      result = NaN; % Or some other appropriate default value
    else
      rethrow(e); % Re-throw the error if it's not something we can handle
    end
  end
end

function output = someCalculation(x)
  try
    output = x^2;
  catch e
    rethrow(e);
  end
end