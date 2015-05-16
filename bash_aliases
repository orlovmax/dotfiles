# Current status
alias st='git status '

# Check history
alias hist='git log --pretty=format:"%h | %ad | %s%d [%an]" --graph --date=short'
alias log=hist

# Add all files and show status
alias ada='git add --all && git status'

# Just commit
alias cim='git commit -m '

# Add changes and commit
alias ciam='git commit -am'

# Amend last commit
alias amend='git amend'

# Show current branch
alias br='git branch '

# Push to master
alias pahom='git push origin master'

# Force push to master
alias pahomf='git push origin master --force'

# Push to source
alias pesok='git push origin source'

# Force push to source
alias pesokf='git push origin source --force'

# Push to gh-pages
alias pegas='git push origin gh-pages'

# Force push to gh-pages
alias pegasf='git push origin gh-pages --force'

# Soft reset
alias resoft='git reset --soft '

# Hard reset
alias rehard='git reset --hard '

#Switch branch
alias co='git checkout '

# Create branch
alias cb='git checkout -b '

# Enter ssh key
alias github="ssh-add ~/.ssh/github_rsa"

alias gitbit="ssh-add ~/.ssh/bit_rsa"

alias gitip="ssh-add ~/.ssh/ip_rsa"

alias gitar="ssh-add ~/.ssh/archi_rsa"

# Restart Bash
alias res='source ~/.bash_profile'

# Create new file and open it
function new { touch "$@"; explorer "$@"; }

# Create new file
function cr { touch "$@"; }

function jpost { 
	cp -a _dev/templates/pages/_drafts/_draft.md _dev/templates/pages/_posts/$@.md;
	explorer "$(pwd -W | sed  's/\//\\/g')\_dev\templates\pages\_posts\\$@.md";
	mkdir _dev/img/post/$@;
	explorer "$(pwd -W | sed  's/\//\\/g')\_dev\img\post\\$@";
}