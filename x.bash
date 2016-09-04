# T2V16.0823.1016.53.shell -

# - import -
  programsFolder="/home/alex/customBash/bin"
. "$programsFolder"/xchrome # Chrome personalization.
. "$programsFolder"/xeditBash # Commands to edit the bashAliases file.
. "$programsFolder"/xinfo # This xprogram includes some functions that I will be using in other functions more for convinince.
. "$programsFolder"/xmakeKey # MakerSpace Key program.
. "$programsFolder"/xmiscPrograms # Some more misc program aliases to make them easier to use and remember.
. "$programsFolder"/xmnt # xmnt program.
. "$programsFolder"/xpersonal # Some fun commands, and some useful ones. i.e. weather, battery.
. "$programsFolder"/xschool # School commands, also includes xhandin.
# . "$programsFolder"/xnew # A new example file, can be copied to make a new file easily.
# . "$programsFolder"/xstyle # This file is a text file that summerizes how xprograms are supposed to be written
# . "$programsFolder"/

# - requirements -
  # linux Shell
  # All xprograms that are referenced above
# - readme -
  # Standby alias
  # Lines function
  # Chrome functions where chrome --new $site --old $site --newtab

# - bash -
  bashAliasesFile="/home/alex/customBash/bashAliases"
  # testing -
  alias FTM='echo This is the First test message; wait; alias test=STM'
  alias STM='echo This is the Second test message; wait; alias test=FTM'
  alias test='FTM'
  # preferences -
    alias ll='ls -l'
    alias lall='ls -l -a'
    alias lal='ls -l -a'
    alias del='rm -rf'
  # reload -
    alias updateBash='. "$bashAliasesFile"'
    alias updatebash='. "$bashAliasesFile"'
    alias bashreset='reset; wait; updateBash'
