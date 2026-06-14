; =========================================================
; Game Engine Function: sub_181A6C
; Address            : 0x181A6C - 0x181A8C
; =========================================================

181A6C:  PUSH            {R7,LR}
181A6E:  MOV             R7, SP
181A70:  SUB             SP, SP, #8
181A72:  MOVS            R3, #0
181A74:  STR             R3, [SP,#0x10+var_10]
181A76:  MOVS            R3, #0
181A78:  BL              sub_181978
181A7C:  CMP             R0, #0
181A7E:  ITE NE
181A80:  LDRHNE.W        R0, [R0,#0x6F8]
181A84:  MOVEQ.W         R0, #0xFFFFFFFF
181A88:  ADD             SP, SP, #8
181A8A:  POP             {R7,PC}
