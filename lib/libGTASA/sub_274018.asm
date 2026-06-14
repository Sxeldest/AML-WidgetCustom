; =========================================================
; Game Engine Function: sub_274018
; Address            : 0x274018 - 0x27408C
; =========================================================

274018:  PUSH            {R4,R6,R7,LR}
27401A:  ADD             R7, SP, #8
27401C:  SUB             SP, SP, #0x18
27401E:  LDR             R4, =(dword_6D8200 - 0x274024)
274020:  ADD             R4, PC; dword_6D8200
274022:  ADD.W           R0, R4, #8; mutex
274026:  BLX             pthread_mutex_lock
27402A:  LDRD.W          R1, R12, [R4]
27402E:  CMP             R12, R1
274030:  BEQ             loc_274074
274032:  LDR             R2, =(dword_6D8200 - 0x27403A)
274034:  MOV             R3, R12
274036:  ADD             R2, PC; dword_6D8200
274038:  ADD.W           R0, R3, R3,LSL#1
27403C:  ADD.W           R0, R2, R0,LSL#3
274040:  LDR.W           R4, [R0,#0x28]!
274044:  SUBS            R4, #6
274046:  CMP             R4, #3
274048:  BLS             loc_274054
27404A:  ADDS            R0, R3, #1
27404C:  UXTB            R3, R0
27404E:  CMP             R3, R1
274050:  BNE             loc_274038
274052:  B               loc_274074
274054:  LDR             R1, =(dword_6D8200 - 0x274062)
274056:  ADD.W           R2, R12, R12,LSL#1
27405A:  VLD1.32         {D16-D17}, [R0]!
27405E:  ADD             R1, PC; dword_6D8200
274060:  ADD.W           R1, R1, R2,LSL#3
274064:  VLDR            D18, [R0]
274068:  ADD.W           R0, R1, #0x28 ; '('
27406C:  VST1.32         {D16-D17}, [R0]!
274070:  VSTR            D18, [R0]
274074:  LDR             R0, =(dword_6D8200 - 0x27407A)
274076:  ADD             R0, PC; dword_6D8200
274078:  ADDS            R0, #8; mutex
27407A:  BLX             pthread_mutex_unlock
27407E:  MOVS            R0, #0xA
274080:  STR             R0, [SP,#0x20+var_20]
274082:  MOV             R0, SP
274084:  BL              sub_27C4F0
274088:  ADD             SP, SP, #0x18
27408A:  POP             {R4,R6,R7,PC}
