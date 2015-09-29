if exists("current_compiler")
  finish
endif
let current_compiler = "typescript"

if !exists("g:typescript_compiler_binary")
  let g:typescript_compiler_binary = "tsc"
endif

if !exists("g:typescript_compiler_options")
  let g:typescript_compiler_options = ""
endif

if !exists("g:typescript_compiler_use_tsconfig")
  let g:typescript_compiler_use_tsconfig = 0
endif

if g:typescript_compiler_use_tsconfig
  let s:typescript_compiler_file_arg = ''
else
  let s:typescript_compiler_file_arg = '  %'
endif

let &l:makeprg = g:typescript_compiler_binary . ' ' . g:typescript_compiler_options . s:typescript_compiler_file_arg

CompilerSet errorformat=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m
