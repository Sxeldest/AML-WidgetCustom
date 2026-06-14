; =========================================================
; Game Engine Function: sub_105034
; Address            : 0x105034 - 0x1050E8
; =========================================================

105034:  PUSH            {R4,R5,R7,LR}
105036:  ADD             R7, SP, #8
105038:  SUB             SP, SP, #0x48
10503A:  MOV             R4, R0
10503C:  LDR             R0, [R0,#0x5C]
10503E:  MOV             R5, R1
105040:  CBZ             R0, loc_10507C
105042:  LDRB.W          R0, [R4,#0x60]
105046:  CBZ             R0, loc_10507C
105048:  MOVS            R0, #0
10504A:  BL              sub_10FDF0
10504E:  LDR             R0, =(aIi_0 - 0x105058); "`\bii" ...
105050:  MOV             R2, R5
105052:  LDR             R1, [R4,#8]
105054:  ADD             R0, PC; "`\bii"
105056:  BL              sub_107188
10505A:  LDR             R0, =(byte_25C9DC - 0x105060)
10505C:  ADD             R0, PC; byte_25C9DC
10505E:  LDRB            R0, [R0]
105060:  DMB.W           ISH
105064:  LDR             R4, =(dword_25C9D8 - 0x10506A)
105066:  ADD             R4, PC; dword_25C9D8
105068:  LSLS            R0, R0, #0x1F
10506A:  BEQ             loc_1050BE
10506C:  LDR             R0, [R4]
10506E:  LDR             R0, [R0]
105070:  LSRS            R0, R0, #1
105072:  ADD             SP, SP, #0x48 ; 'H'
105074:  POP.W           {R4,R5,R7,LR}
105078:  B.W             sub_10FDF0
10507C:  LDR             R0, =(unk_B3802 - 0x105084)
10507E:  MOV             R1, R5
105080:  ADD             R0, PC; unk_B3802
105082:  BL              sub_107188
105086:  LDR             R0, =(aIi_0 - 0x105090); "`\bii" ...
105088:  MOV             R2, R5
10508A:  LDR             R1, [R4,#8]
10508C:  ADD             R0, PC; "`\bii"
10508E:  BL              sub_107188
105092:  ADD             R1, SP, #0x50+var_48
105094:  MOV             R0, R4
105096:  BL              sub_F8910
10509A:  VLDR            S0, [SP,#0x50+var_18]
10509E:  VLDR            S2, [SP,#0x50+var_14]
1050A2:  VCVT.F64.F32    D16, S0
1050A6:  LDR             R0, =(unk_B37C6 - 0x1050AC)
1050A8:  ADD             R0, PC; unk_B37C6
1050AA:  VMOV            R2, R3, D16
1050AE:  VCVT.F64.F32    D16, S2
1050B2:  VSTR            D16, [SP,#0x50+var_50]
1050B6:  BL              sub_107188
1050BA:  ADD             SP, SP, #0x48 ; 'H'
1050BC:  POP             {R4,R5,R7,PC}
1050BE:  LDR             R0, =(byte_25C9DC - 0x1050C4)
1050C0:  ADD             R0, PC; byte_25C9DC ; __guard *
1050C2:  BLX             j___cxa_guard_acquire
1050C6:  CMP             R0, #0
1050C8:  BEQ             loc_10506C
1050CA:  LDR             R0, =(off_23494C - 0x1050D8)
1050CC:  MOV             R2, #0x685FA0
1050D4:  ADD             R0, PC; off_23494C
1050D6:  LDR             R1, [R0]; dword_23DF24
1050D8:  LDR             R0, =(byte_25C9DC - 0x1050E0)
1050DA:  LDR             R1, [R1]
1050DC:  ADD             R0, PC; byte_25C9DC ; __guard *
1050DE:  ADD             R1, R2
1050E0:  STR             R1, [R4]
1050E2:  BLX             j___cxa_guard_release
1050E6:  B               loc_10506C
