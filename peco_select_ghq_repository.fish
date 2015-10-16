function peco_select_ghq_repository
  if test (count $argv) > 0
    set peco_flags --query "$argv"
  end

  ghq list -p | peco $peco_flags | read line

  if [ $line ]
    cd $line
    commandline -f repaint
  end
end
