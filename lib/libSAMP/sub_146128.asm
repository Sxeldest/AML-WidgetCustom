; =========================================================
; Game Engine Function: sub_146128
; Address            : 0x146128 - 0x146142
; =========================================================

146128:  PUSH            {R7,LR}
14612A:  MOV             R7, SP
14612C:  SUB             SP, SP, #8
14612E:  LDR             R2, =(aD - 0x14613C); "[%d]" ...
146130:  ADD.W           R3, R7, #8; arg
146134:  MOVS            R1, #8; maxlen
146136:  STR             R3, [SP,#0x10+var_C]
146138:  ADD             R2, PC; "[%d]"
14613A:  BLX             vsnprintf
14613E:  ADD             SP, SP, #8
146140:  POP             {R7,PC}
