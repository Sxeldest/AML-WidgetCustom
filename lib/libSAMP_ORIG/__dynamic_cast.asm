; =========================================================
; Game Engine Function: __dynamic_cast
; Address            : 0x10805C - 0x108130
; =========================================================

10805C:  PUSH            {R4-R7,LR}
10805E:  ADD             R7, SP, #0xC
108060:  PUSH.W          {R11}
108064:  SUB             SP, SP, #0x48
108066:  MOV             R5, R0
108068:  LDR             R0, =(__stack_chk_guard_ptr - 0x108072)
10806A:  VMOV.I32        Q8, #0
10806E:  ADD             R0, PC; __stack_chk_guard_ptr
108070:  LDR             R0, [R0]; __stack_chk_guard
108072:  LDR             R0, [R0]
108074:  STR             R0, [SP,#0x58+var_14]
108076:  LDR             R0, [R5]
108078:  LDRD.W          R12, R0, [R0,#-8]
10807C:  ADD             R4, SP, #0x58+var_50
10807E:  ADD.W           R6, R4, #0x10
108082:  MOVS            R4, #0xF
108084:  VST1.64         {D16-D17}, [R6]!
108088:  VST1.64         {D16-D17}, [R6],R4
10808C:  MOVS            R4, #0
10808E:  STRD.W          R5, R1, [SP,#0x58+var_4C]
108092:  ADD             R5, R12
108094:  STR             R4, [R6]
108096:  STR.W           R4, [SP,#0x58+var_1D]
10809A:  STR             R3, [SP,#0x58+var_44]
10809C:  STR             R2, [SP,#0x58+var_50]
10809E:  LDR             R1, [R2,#4]
1080A0:  LDR             R2, [R0,#4]
1080A2:  CMP             R2, R1
1080A4:  BEQ             loc_1080DC
1080A6:  LDR             R1, [R0]
1080A8:  MOV             R2, R5
1080AA:  MOVS            R3, #1
1080AC:  LDR             R6, [R1,#0x18]
1080AE:  STR             R4, [SP,#0x58+var_58]
1080B0:  ADD             R1, SP, #0x58+var_50
1080B2:  BLX             R6
1080B4:  LDR             R0, [SP,#0x58+var_2C]
1080B6:  CMP             R0, #1
1080B8:  BEQ             loc_1080FA
1080BA:  CBNZ            R0, loc_108114
1080BC:  LDRD.W          R0, R1, [SP,#0x58+var_34]
1080C0:  MOVS            R3, #0
1080C2:  LDR             R2, [SP,#0x58+var_28]
1080C4:  CMP             R1, #1
1080C6:  LDR             R4, [SP,#0x58+var_3C]
1080C8:  EOR.W           R0, R0, #1
1080CC:  IT NE
1080CE:  MOVNE           R4, R3
1080D0:  EOR.W           R1, R2, #1
1080D4:  ORRS            R0, R1
1080D6:  IT NE
1080D8:  MOVNE           R4, R3
1080DA:  B               loc_108114
1080DC:  MOVS            R1, #1
1080DE:  MOV             R3, R5
1080E0:  STR             R1, [SP,#0x38]
1080E2:  LDR             R2, [R0]
1080E4:  LDR             R6, [R2,#0x14]
1080E6:  MOV             R2, R5
1080E8:  STRD.W          R1, R4, [SP,#0x58+var_58]
1080EC:  ADD             R1, SP, #0x58+var_50
1080EE:  BLX             R6
1080F0:  LDR             R0, [SP,#0x58+var_38]
1080F2:  CMP             R0, #1
1080F4:  IT EQ
1080F6:  MOVEQ           R4, R5
1080F8:  B               loc_108114
1080FA:  LDR             R0, [SP,#0x58+var_38]
1080FC:  CMP             R0, #1
1080FE:  BEQ             loc_108112
108100:  LDR             R0, [SP,#0x58+var_28]
108102:  MOVS            R4, #0
108104:  CBNZ            R0, loc_108114
108106:  LDR             R0, [SP,#0x58+var_34]
108108:  CMP             R0, #1
10810A:  ITT EQ
10810C:  LDREQ           R0, [SP,#0x58+var_30]
10810E:  CMPEQ           R0, #1
108110:  BNE             loc_108114
108112:  LDR             R4, [SP,#0x58+var_40]
108114:  LDR             R0, [SP,#0x58+var_14]
108116:  LDR             R1, =(__stack_chk_guard_ptr - 0x10811C)
108118:  ADD             R1, PC; __stack_chk_guard_ptr
10811A:  LDR             R1, [R1]; __stack_chk_guard
10811C:  LDR             R1, [R1]
10811E:  CMP             R1, R0
108120:  ITTTT EQ
108122:  MOVEQ           R0, R4
108124:  ADDEQ           SP, SP, #0x48 ; 'H'
108126:  POPEQ.W         {R11}
10812A:  POPEQ           {R4-R7,PC}
10812C:  BLX             __stack_chk_fail
