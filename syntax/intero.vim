"""""""""""
" Syntax:
"
" Custom syntax highlighting for GHCi in the embeded terminal window.
"""""""""""

syntax include @haskell syntax/haskell.vim

exe 'syntax region GhciLine start=/^'.g:intero_prompt_regex.'/ end=/\n/ oneline keepend contains=@haskell,GhciCommand,GhciLoadCommand'
syntax match GhciCommand /:[a-z-]\+/ contained
syntax match GhciLoadCommand /:l.*/ contained contains=GhciCommand

hi def link GhciCommand PreProc
hi def link GhciLoadCommand Constant
