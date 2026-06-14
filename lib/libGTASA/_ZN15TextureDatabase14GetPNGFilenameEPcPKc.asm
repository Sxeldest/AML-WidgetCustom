; =========================================================
; Game Engine Function: _ZN15TextureDatabase14GetPNGFilenameEPcPKc
; Address            : 0x1E8888 - 0x1E88A2
; =========================================================

1E8888:  PUSH            {R7,LR}
1E888A:  MOV             R7, SP
1E888C:  SUB             SP, SP, #8
1E888E:  LDR             R3, [R0,#4]
1E8890:  MOV             R0, R1
1E8892:  STR             R2, [SP,#0x10+var_10]
1E8894:  ADR             R2, aModloaderSSPng; "modloader/%s/%s.png"
1E8896:  MOV.W           R1, #0x100
1E889A:  BL              sub_5E6B74
1E889E:  ADD             SP, SP, #8
1E88A0:  POP             {R7,PC}
