# Summary

- Motions
  - Move between section boundaries with `[[`, `[]`, `][`, and `]]`
  - Move between environment boundaries with `[m`, `[M`, `]m`, and `]M`
  - Move between comment boundaries with `[*` and `]*`
  - Move between matching delimiters with `%`
- Text objects
  - `ic` `ac` Commands
  - `id` `ad` Delimiters
  - `ie` `ae` LaTeX environments
  - `i$` `a$` Inline math structures
  - `iP` `aP` Sections
- Other mappings
  - Delete the surrounding command, environment or delimiter with
    `dsc`/`dse`/`ds$`/`dsd`
  - Change the surrounding command, environment or delimiter with
    `csc`/`cse`/`cs$`/`csd`
  - Toggle starred command or environment with `tsc`/`tse`
  - Toggle between e.g. `()` and `\left(\right)` with `tsd`/`tsD`
  - Close the current environment/delimiter in insert mode with `]]`
  - Insert new command with `<F7>`
  - Convenient insert mode mappings for faster typing of e.g. maths

# Mappings

  ---------------------------------------------------------------------~
   LHS              RHS                                          MODE~
  ---------------------------------------------------------------------~
   <localleader>li  |<plug>(vimtex-info)|                           `n`
   <localleader>lI  |<plug>(vimtex-info-full)|                      `n`
   <localleader>lt  |<plug>(vimtex-toc-open)|                       `n`
   <localleader>lT  |<plug>(vimtex-toc-toggle)|                     `n`
   <localleader>lq  |<plug>(vimtex-log)|                            `n`
   <localleader>lv  |<plug>(vimtex-view)|                           `n`
   <localleader>lr  |<plug>(vimtex-reverse-search)|                 `n`
   <localleader>ll  |<plug>(vimtex-compile)|                        `n`
   <localleader>lL  |<plug>(vimtex-compile-selected)|               `nx`
   <localleader>lk  |<plug>(vimtex-stop)|                           `n`
   <localleader>lK  |<plug>(vimtex-stop-all)|                       `n`
   <localleader>le  |<plug>(vimtex-errors)|                         `n`
   <localleader>lo  |<plug>(vimtex-compile-output)|                 `n`
   <localleader>lg  |<plug>(vimtex-status)|                         `n`
   <localleader>lG  |<plug>(vimtex-status-all)|                     `n`
   <localleader>lc  |<plug>(vimtex-clean)|                          `n`
   <localleader>lC  |<plug>(vimtex-clean-full)|                     `n`
   <localleader>lm  |<plug>(vimtex-imaps-list)|                     `n`
   <localleader>lx  |<plug>(vimtex-reload)|                         `n`
   <localleader>lX  |<plug>(vimtex-reload-state)|                   `n`
   <localleader>ls  |<plug>(vimtex-toggle-main)|                    `n`
   dse              |<plug>(vimtex-env-delete)|                     `n`
   dsc              |<plug>(vimtex-cmd-delete)|                     `n`
   ds$              |<plug>(vimtex-env-delete-math)|                `n`
   dsd              |<plug>(vimtex-delim-delete)|                   `n`
   cse              |<plug>(vimtex-env-change)|                     `n`
   csc              |<plug>(vimtex-cmd-change)|                     `n`
   cs$              |<plug>(vimtex-env-change-math)|                `n`
   csd              |<plug>(vimtex-delim-change-math)|              `n`
   tsc              |<plug>(vimtex-cmd-toggle-star)|                `n`
   tse              |<plug>(vimtex-env-toggle-star)|                `n`
   tsd              |<plug>(vimtex-delim-toggle-modifier)|          `nx`
   tsD              |<plug>(vimtex-delim-toggle-modifier-reverse)|  `nx`
   <F7>             |<plug>(vimtex-cmd-create)|                     `nxi`
   ]]               |<plug>(vimtex-delim-close)|                    `i`
   ac               |<plug>(vimtex-ac)|                             `xo`
   ic               |<plug>(vimtex-ic)|                             `xo`
   ad               |<plug>(vimtex-ad)|                             `xo`
   id               |<plug>(vimtex-id)|                             `xo`
   ae               |<plug>(vimtex-ae)|                             `xo`
   ie               |<plug>(vimtex-ie)|                             `xo`
   a$               |<plug>(vimtex-a$)|                             `xo`
   i$               |<plug>(vimtex-i$)|                             `xo`
   aP               |<plug>(vimtex-aP)|                             `xo`
   iP               |<plug>(vimtex-iP)|                             `xo`
   %                |<plug>(vimtex-%)|                              `nxo`
   ]]               |<plug>(vimtex-]])|                             `nxo`
   ][               |<plug>(vimtex-][)|                             `nxo`
   []               |<plug>(vimtex-[])|                             `nxo`
   [[               |<plug>(vimtex-[[)|                             `nxo`
   ]m               |<plug>(vimtex-]m)|                             `nxo`
   ]M               |<plug>(vimtex-]M)|                             `nxo`
   [m               |<plug>(vimtex-[m)|                             `nxo`
   [M               |<plug>(vimtex-[M)|                             `nxo`
   ]/               |<plug>(vimtex-]/|                              `nxo`
   ]*               |<plug>(vimtex-]star|                           `nxo`
   [/               |<plug>(vimtex-[/|                              `nxo`
   [*               |<plug>(vimtex-[star|                           `nxo`
   K                |<plug>(vimtex-doc-package)|                    `n`

# imaps !!!!

   `0  ->  \emptyset                      vimtex#imaps#wrap_math
   `6  ->  \partial                       vimtex#imaps#wrap_math
   `8  ->  \infty                         vimtex#imaps#wrap_math
   `=  ->  \equiv                         vimtex#imaps#wrap_math
   `\  ->  \setminus                      vimtex#imaps#wrap_math
   `.  ->  \cdot                          vimtex#imaps#wrap_math
   `*  ->  \times                         vimtex#imaps#wrap_math
   `<  ->  \langle                        vimtex#imaps#wrap_math
   `>  ->  \rangle                        vimtex#imaps#wrap_math
   `[  ->  \subseteq                      vimtex#imaps#wrap_math
   `]  ->  \supseteq                      vimtex#imaps#wrap_math
   `(  ->  \subset                        vimtex#imaps#wrap_math
   `)  ->  \supset                        vimtex#imaps#wrap_math
   `A  ->  \forall                        vimtex#imaps#wrap_math
   `E  ->  \exists                        vimtex#imaps#wrap_math
  `jj  ->  \downarrow                     vimtex#imaps#wrap_math
  `jJ  ->  \Downarrow                     vimtex#imaps#wrap_math
  `jk  ->  \uparrow                       vimtex#imaps#wrap_math
  `jK  ->  \Uparrow                       vimtex#imaps#wrap_math
  `jh  ->  \leftarrow                     vimtex#imaps#wrap_math
  `jH  ->  \Leftarrow                     vimtex#imaps#wrap_math
  `jl  ->  \rightarrow                    vimtex#imaps#wrap_math
  `jL  ->  \Rightarrow                    vimtex#imaps#wrap_math
   `a  ->  \alpha                         vimtex#imaps#wrap_math
   `b  ->  \beta                          vimtex#imaps#wrap_math
   `c  ->  \chi                           vimtex#imaps#wrap_math
   `d  ->  \delta                         vimtex#imaps#wrap_math
   `e  ->  \epsilon                       vimtex#imaps#wrap_math
   `f  ->  \phi                           vimtex#imaps#wrap_math
   `g  ->  \gamma                         vimtex#imaps#wrap_math
   `h  ->  \eta                           vimtex#imaps#wrap_math
   `i  ->  \iota                          vimtex#imaps#wrap_math
   `k  ->  \kappa                         vimtex#imaps#wrap_math
   `l  ->  \lambda                        vimtex#imaps#wrap_math
   `m  ->  \mu                            vimtex#imaps#wrap_math
   `n  ->  \nu                            vimtex#imaps#wrap_math
   `p  ->  \pi                            vimtex#imaps#wrap_math
   `q  ->  \theta                         vimtex#imaps#wrap_math
   `r  ->  \rho                           vimtex#imaps#wrap_math
   `s  ->  \sigma                         vimtex#imaps#wrap_math
   `t  ->  \tau                           vimtex#imaps#wrap_math
   `y  ->  \psi                           vimtex#imaps#wrap_math
   `u  ->  \upsilon                       vimtex#imaps#wrap_math
   `w  ->  \omega                         vimtex#imaps#wrap_math
   `z  ->  \zeta                          vimtex#imaps#wrap_math
   `x  ->  \xi                            vimtex#imaps#wrap_math
   `G  ->  \Gamma                         vimtex#imaps#wrap_math
   `D  ->  \Delta                         vimtex#imaps#wrap_math
   `F  ->  \Phi                           vimtex#imaps#wrap_math
   `G  ->  \Gamma                         vimtex#imaps#wrap_math
   `L  ->  \Lambda                        vimtex#imaps#wrap_math
   `P  ->  \Pi                            vimtex#imaps#wrap_math
   `Q  ->  \Theta                         vimtex#imaps#wrap_math
   `S  ->  \Sigma                         vimtex#imaps#wrap_math
   `U  ->  \Upsilon                       vimtex#imaps#wrap_math
   `W  ->  \Omega                         vimtex#imaps#wrap_math
   `X  ->  \Xi                            vimtex#imaps#wrap_math
   `Y  ->  \Psi                           vimtex#imaps#wrap_math
  `ve  ->  \varepsilon                    vimtex#imaps#wrap_math
  `vf  ->  \varphi                        vimtex#imaps#wrap_math
  `vk  ->  \varkappa                      vimtex#imaps#wrap_math
  `vq  ->  \vartheta                      vimtex#imaps#wrap_math
  `vr  ->  \varrho                        vimtex#imaps#wrap_math
