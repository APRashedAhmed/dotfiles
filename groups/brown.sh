# Useful stuff for brown

alias ssh='ssh -XY'

# Brown Username
export BROWN_USER='arasheda'

# P Nodes
export p1='serrep1.services.brown.edu'
export p2='serrep2.services.brown.edu'
export p3='serrep3.services.brown.edu'
export p4='serrep4.services.brown.edu'
export p5='serrep5.services.brown.edu'
export p6='serrep6.services.brown.edu'
# X Nodes
export x7='x7.clps.brown.edu'
export x8='x8.clps.brown.edu'
export x9='x9.clps.brown.edu'

# Aliases for p nodes
alias p1='ssh $BROWN_USER@$p1'
alias p2='ssh $BROWN_USER@$p2'
alias p3='ssh $BROWN_USER@$p3'
alias p4='ssh $BROWN_USER@$p4'
alias p5='ssh $BROWN_USER@$p5'
alias p6='ssh $BROWN_USER@$p6'
# X Nodes
alias x7='ssh $BROWN_USER@$x7'
alias x8='ssh $BROWN_USER@$x8'
alias x9='ssh $BROWN_USER@$x9'

# Nvidia-smi
alias nsmi='nvidia-smi'
