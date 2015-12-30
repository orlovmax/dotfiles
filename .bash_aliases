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

# Add changes and commit with current date in message
alias ciamd='git commit -am "update_`date +\"%Y-%m-%d\"`"'

# Amend last commit - DANGER ZONE
alias amend='git commit -a --amend --no-edit'

# Show current branch
alias br='git branch '

# Push to master
alias pahom='git push origin master'

# Push to source
alias pesok='git push origin source'

# Push to gh-pages
alias pegas='git push origin gh-pages'

# Soft reset
alias resoft='git reset --soft '

# Hard reset - DANGER ZONE
alias rehard='git reset --hard '

# Get commit hash
alias hash='git rev-parse '

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
	cp -a _publ/pages/_drafts/_draft.md _publ/pages/_posts/$@.md;
	sed -i "s/_PATH/$@/g" "$(pwd -W | sed  's/\//\\/g')\_publ\pages\_posts\\$@.md";
	explorer "$(pwd -W | sed  's/\//\\/g')\_publ\pages\_posts\\$@.md";
	mkdir _publ/img/post/$@;
	mkdir _publ/img/post/$@/meta;
	explorer "$(pwd -W | sed  's/\//\\/g')\_publ\img\post\\$@";
}

function npmtestclear {
	find * -maxdepth 0 -name 'node_modules' -prune -o -exec rm -rf {} \;
}
