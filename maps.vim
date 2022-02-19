map ; :
vmap < <gv
vmap > >gv

nmap ;h :vsplit<CR> 
nmap ;v :split<CR>

nmap ;t :tabnew<CR>
nmap <S-Tab> :tabprev<CR>
nmap <Tab> :tabnext<CR>

nmap <C-e> :NvimTreeToggle<CR>

nmap ;ff <CMD>Telescope find_files<CR>
nmap ;fg <CMD>Telescope live_grep<CR>
nmap ;gs <CMD>Telescope git_status<CR>
nmap ;gc <CMD>Telescope git_commits<CR>
