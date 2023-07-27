syntax enable
colorscheme monokai
set clipboard=unnamedplus
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartcase
filetype detect
set nocompatible
set exrc
set smartindent
set cindent
set showcmd
set autowrite
set autoread



map <F3> :<C-U>!g++ -O2 -DLOCAL -std=c++17 -Wall -Wextra -Wno-unused-result -static %:r.cpp -o %:r<CR>
map <F7> :<C-U>!./%:r<CR>



autocmd FileType cpp call IoStream()
fu! IoStream()
    if line("$") == 1
        call append(0, "#include <bits/stdc++.h>")
        call append(1, "using namespace std;")
        call append(2, "")
        call append(3, "typedef unsigned short us;")
        call append(4, "typedef unsigned int ui;")
        call append(5, "typedef unsigned long long ull;")
        call append(6, "typedef long long ll;")
        call append(7, "")
        call append(8, "int main() {")
        call append(9, "    ios::sync_with_stdio(false);")
        call append(10, "    cin.tie(nullptr), cout.tie(nullptr);")
        call append(11, "")
        call append(12, "    return EXIT_SUCCESS;")
        call append(13, "}")
    endif
endfu
