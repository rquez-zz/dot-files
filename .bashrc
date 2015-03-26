# bashrc is called after login

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export JAVA_HOME=/opt/jdk1.7.0_75
export JRE_HOME=/opt/jdk1.7.0_75/jre
export M2_HOME=/opt/apache-maven-3.2.5
export M2=$M2_HOME/bin
PATH=$PATH:$M2:$JRE_HOME:$JAVA_HOME
export PATH

# Ruby Version Manager
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
