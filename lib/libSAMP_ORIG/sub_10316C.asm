; =========================================================
; Game Engine Function: sub_10316C
; Address            : 0x10316C - 0x10321E
; =========================================================

10316C:  PUSH            {R4-R7,LR}
10316E:  ADD             R7, SP, #0xC
103170:  PUSH.W          {R11}
103174:  SUB             SP, SP, #0x40
103176:  MOV             R4, R1
103178:  LDR             R1, =(__stack_chk_guard_ptr - 0x10317E)
10317A:  ADD             R1, PC; __stack_chk_guard_ptr
10317C:  LDR             R1, [R1]; __stack_chk_guard
10317E:  LDR             R1, [R1]
103180:  STR             R1, [SP,#0x50+var_14]
103182:  LDRD.W          R2, R0, [R0,#8]
103186:  SUBS            R0, R0, R2
103188:  ADDS            R0, #1
10318A:  CMP             R0, #0x11
10318C:  BCC             loc_103204
10318E:  ADD             R1, SP, #0x50+var_48
103190:  MOVS            R0, #0
103192:  CMP             R0, #0x10
103194:  BEQ             loc_1031C8
103196:  LDRB            R3, [R2,R0]
103198:  SUB.W           R5, R3, #0x3A ; ':'
10319C:  CMN.W           R5, #0xA
1031A0:  IT CC
1031A2:  ADDCC           R3, #9
1031A4:  ADDS            R5, R2, R0
1031A6:  LDRB            R5, [R5,#1]
1031A8:  SUB.W           R6, R5, #0x3A ; ':'
1031AC:  CMN.W           R6, #0xA
1031B0:  MOV             R6, #0xFFFFFFD0
1031B4:  IT CC
1031B6:  MOVCC           R6, #0xFFFFFFA9
1031BA:  ADD             R5, R6
1031BC:  ADD.W           R3, R5, R3,LSL#4
1031C0:  STRB.W          R3, [R1],#1
1031C4:  ADDS            R0, #2
1031C6:  B               loc_103192
1031C8:  ADD             R0, SP, #0x50+var_48
1031CA:  BL              sub_F7238
1031CE:  ADD             R5, SP, #0x50+var_40
1031D0:  VMOV.I32        Q8, #0
1031D4:  MOVS            R1, #0
1031D6:  MOVS            R2, #0x28 ; '('
1031D8:  MOV             R0, R5
1031DA:  STR             R1, [SP,#0x50+var_1C]
1031DC:  VST1.64         {D16-D17}, [R0]!
1031E0:  VST1.64         {D16-D17}, [R0]!
1031E4:  VLDR            D16, [SP,#0x50+var_48]
1031E8:  STR             R1, [R0]
1031EA:  MOV             R0, R5
1031EC:  VSTR            D16, [SP,#0x50+var_50]
1031F0:  MOVS            R1, #0x28 ; '('
1031F2:  LDR             R3, =(aLal - 0x1031F8); "%LaL" ...
1031F4:  ADD             R3, PC; "%LaL"
1031F6:  BL              sub_10306C
1031FA:  ADDS            R2, R5, R0
1031FC:  MOV             R0, R4
1031FE:  MOV             R1, R5
103200:  BL              sub_FFB40
103204:  LDR             R0, [SP,#0x50+var_14]
103206:  LDR             R1, =(__stack_chk_guard_ptr - 0x10320C)
103208:  ADD             R1, PC; __stack_chk_guard_ptr
10320A:  LDR             R1, [R1]; __stack_chk_guard
10320C:  LDR             R1, [R1]
10320E:  CMP             R1, R0
103210:  ITTT EQ
103212:  ADDEQ           SP, SP, #0x40 ; '@'
103214:  POPEQ.W         {R11}
103218:  POPEQ           {R4-R7,PC}
10321A:  BLX             __stack_chk_fail
