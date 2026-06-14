; =========================================================
; Game Engine Function: sub_1030B0
; Address            : 0x1030B0 - 0x10315C
; =========================================================

1030B0:  PUSH            {R4-R7,LR}
1030B2:  ADD             R7, SP, #0xC
1030B4:  PUSH.W          {R11}
1030B8:  SUB             SP, SP, #0x38
1030BA:  MOV             R4, R1
1030BC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1030C2)
1030BE:  ADD             R1, PC; __stack_chk_guard_ptr
1030C0:  LDR             R1, [R1]; __stack_chk_guard
1030C2:  LDR             R1, [R1]
1030C4:  STR             R1, [SP,#0x48+var_14]
1030C6:  LDRD.W          R2, R0, [R0,#8]
1030CA:  SUBS            R0, R0, R2
1030CC:  ADDS            R0, #1
1030CE:  CMP             R0, #0x11
1030D0:  BCC             loc_103142
1030D2:  ADD             R1, SP, #0x48+var_40
1030D4:  MOVS            R0, #0
1030D6:  CMP             R0, #0x10
1030D8:  BEQ             loc_10310C
1030DA:  LDRB            R3, [R2,R0]
1030DC:  SUB.W           R5, R3, #0x3A ; ':'
1030E0:  CMN.W           R5, #0xA
1030E4:  IT CC
1030E6:  ADDCC           R3, #9
1030E8:  ADDS            R5, R2, R0
1030EA:  LDRB            R5, [R5,#1]
1030EC:  SUB.W           R6, R5, #0x3A ; ':'
1030F0:  CMN.W           R6, #0xA
1030F4:  MOV             R6, #0xFFFFFFD0
1030F8:  IT CC
1030FA:  MOVCC           R6, #0xFFFFFFA9
1030FE:  ADD             R5, R6
103100:  ADD.W           R3, R5, R3,LSL#4
103104:  STRB.W          R3, [R1],#1
103108:  ADDS            R0, #2
10310A:  B               loc_1030D6
10310C:  ADD             R0, SP, #0x48+var_40
10310E:  BL              sub_F7238
103112:  ADD             R5, SP, #0x48+var_38
103114:  VMOV.I32        Q8, #0
103118:  MOVS            R1, #0x20 ; ' '
10311A:  MOVS            R2, #0x20 ; ' '
10311C:  MOV             R0, R5
10311E:  VST1.64         {D16-D17}, [R0]!
103122:  VST1.64         {D16-D17}, [R0]
103126:  MOV             R0, R5
103128:  VLDR            D16, [SP,#0x48+var_40]
10312C:  VSTR            D16, [SP,#0x48+var_48]
103130:  LDR             R3, =(aA - 0x103136); "%a" ...
103132:  ADD             R3, PC; "%a"
103134:  BL              sub_10306C
103138:  ADDS            R2, R5, R0
10313A:  MOV             R0, R4
10313C:  MOV             R1, R5
10313E:  BL              sub_FFB40
103142:  LDR             R0, [SP,#0x48+var_14]
103144:  LDR             R1, =(__stack_chk_guard_ptr - 0x10314A)
103146:  ADD             R1, PC; __stack_chk_guard_ptr
103148:  LDR             R1, [R1]; __stack_chk_guard
10314A:  LDR             R1, [R1]
10314C:  CMP             R1, R0
10314E:  ITTT EQ
103150:  ADDEQ           SP, SP, #0x38 ; '8'
103152:  POPEQ.W         {R11}
103156:  POPEQ           {R4-R7,PC}
103158:  BLX             __stack_chk_fail
