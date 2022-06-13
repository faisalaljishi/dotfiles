function = { # Simple Calculator
calc="${@//p/+}"
calc="${calc//x/*}"
bc -l <<<"scale=10;$calc"
}

# auto-ls () { ls -FG; }
# chpwd_functions=( auto-ls $chpwd_functions )
