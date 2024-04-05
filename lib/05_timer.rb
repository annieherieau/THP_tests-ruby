# frozen_string_literal: true

def time_string(sec)
  h = sec / 3600
  m = (sec - h * 3600) / 60
  s = sec - h * 3600 - m * 60
  [format('%02d', h), format('%02d', m), format('%02d', s)].join(":")
end
