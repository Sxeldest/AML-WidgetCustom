; =========================================================
; Game Engine Function: _ZN11RenderQueue14ProcessCommandEPc
; Address            : 0x1D1FFE - 0x1D2018
; =========================================================

1D1FFE:  PUSH            {R7,LR}
1D2000:  MOV             R7, SP
1D2002:  SUB             SP, SP, #8
1D2004:  LDRH.W          R2, [R1],#4
1D2008:  STR             R1, [SP,#0x10+var_C]
1D200A:  LDR.W           R1, [R0,R2,LSL#2]
1D200E:  ADD             R0, SP, #0x10+var_C
1D2010:  BLX             R1
1D2012:  LDR             R0, [SP,#0x10+var_C]
1D2014:  ADD             SP, SP, #8
1D2016:  POP             {R7,PC}
