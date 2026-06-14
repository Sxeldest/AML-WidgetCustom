; =========================================================
; Game Engine Function: _Z24emu_DisableAlphaModulatev
; Address            : 0x1BA66C - 0x1BA68C
; =========================================================

1BA66C:  LDR             R0, =(alphaStack_ptr - 0x1BA672)
1BA66E:  ADD             R0, PC; alphaStack_ptr
1BA670:  LDR             R0, [R0]; alphaStack
1BA672:  LDR             R1, [R0]
1BA674:  SUBS            R1, #1
1BA676:  STR             R1, [R0]
1BA678:  IT GT
1BA67A:  BXGT            LR
1BA67C:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BA682)
1BA67E:  ADD             R0, PC; curShaderStateFlags_ptr
1BA680:  LDR             R0, [R0]; curShaderStateFlags
1BA682:  LDR             R1, [R0]
1BA684:  BIC.W           R1, R1, #4
1BA688:  STR             R1, [R0]
1BA68A:  BX              LR
