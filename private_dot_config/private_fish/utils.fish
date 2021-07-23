
function remove-definers
  sed -i 's/DEFINER=[^*]*\*/\*/g' $argv
end
