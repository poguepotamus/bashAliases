  # T2V16.0823.1016.53.shell -

# - import -
# . "$programsFolder"/

# - requirements -
  # linux Shell
  # All xprograms that are referenced above
# - readme -
  # Standby alias
  # Lines function
  # Chrome functions where chrome --new $site --old $site --newtab

# - bash -
  # testing -
    alias FTM='echo This is the First test message; wait; alias test=STM'
    alias STM='echo This is the Second test message; wait; alias test=FTM'
    alias test='FTM'
  # preferences -
    alias ll='ls -l'
    alias lall='ls -l -a'
    alias lal='ls -l -a'
    alias del='echo `rm -rf`'
  # reload -
    bashAliasesFile="/home/alex/xp.bash/x.bash"
    alias updateBash='. "$bashAliasesFile"'
    alias updatebash='. "$bashAliasesFile"'
    alias bashreset='reset; wait; updateBash'
