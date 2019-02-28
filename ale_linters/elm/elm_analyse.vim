call ale#Set('elm_analyse_executable', 'elm-analyse')
call ale#Set('elm_analyse_use_global', get(g:, 'ale_use_global_executables', 0))

function! elm_analyse#GetRootDir(buffer) abort
  let l:elm_json = ale#path#FindNearestFile(a:buffer, 'elm.json')
  return !empty(l:elm_json) ? fnamemodify(l:elm_json, ':p:h') : ''
endfunction

call ale#linter#Define('elm', {
\   'name': 'elm_analyse',
\   'lsp': 'stdio',
\   'executable': {b -> ale#node#FindExecutable(b, 'elm_analyse', [
\       'node_modules/.bin/elm-analyse',
\   ])},
\   'command': '%e --lsp --stdio',
\   'project_root': function('elm_analyse#GetRootDir'),
\   'language': '',
\})
