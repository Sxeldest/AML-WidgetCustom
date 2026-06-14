; =========================================================
; Game Engine Function: sub_6A05C
; Address            : 0x6A05C - 0x6A140
; =========================================================

6A05C:  PUSH            {R4-R7,LR}
6A05E:  ADD             R7, SP, #0xC
6A060:  PUSH.W          {R8-R10}
6A064:  SUB             SP, SP, #0x138
6A066:  MOV             R5, R1
6A068:  LDR             R1, =(aSampOrig - 0x6A076); "SAMP_ORIG" ...
6A06A:  MOV             R6, R2
6A06C:  LDR             R2, =(aSenddialogresp - 0x6A078); "sendDialogResponse" ...
6A06E:  MOV             R4, R0
6A070:  LDR             R0, =(__stack_chk_guard_ptr - 0x6A07A)
6A072:  ADD             R1, PC; "SAMP_ORIG"
6A074:  ADD             R2, PC; "sendDialogResponse"
6A076:  ADD             R0, PC; __stack_chk_guard_ptr
6A078:  MOV             R10, R3
6A07A:  LDR             R0, [R0]; __stack_chk_guard
6A07C:  LDR             R0, [R0]
6A07E:  STR             R0, [SP,#0x150+var_1C]
6A080:  MOVS            R0, #4; prio
6A082:  BLX             __android_log_print
6A086:  LDR.W           R0, [R4,#0x218]
6A08A:  CMP             R0, #5
6A08C:  BNE             loc_6A126
6A08E:  LDR.W           R8, [R7,#s]
6A092:  MOV             R0, R8; s
6A094:  BLX             strlen
6A098:  MOV             R9, R0
6A09A:  ADD             R0, SP, #0x150+var_130
6A09C:  BL              sub_86B90
6A0A0:  STRH.W          R5, [SP,#0x150+var_132]
6A0A4:  ADD.W           R1, SP, #0x150+var_132
6A0A8:  MOVS            R2, #0x10
6A0AA:  MOVS            R3, #1
6A0AC:  BL              sub_86D52
6A0B0:  STRB.W          R6, [SP,#0x150+var_132]
6A0B4:  ADD             R0, SP, #0x150+var_130
6A0B6:  ADD.W           R1, SP, #0x150+var_132
6A0BA:  MOVS            R2, #8
6A0BC:  MOVS            R3, #1
6A0BE:  BL              sub_86D52
6A0C2:  STRH.W          R10, [SP,#0x150+var_132]
6A0C6:  ADD             R0, SP, #0x150+var_130
6A0C8:  ADD.W           R1, SP, #0x150+var_132
6A0CC:  MOVS            R2, #0x10
6A0CE:  MOVS            R3, #1
6A0D0:  BL              sub_86D52
6A0D4:  STRB.W          R9, [SP,#0x150+var_132]
6A0D8:  ADD             R0, SP, #0x150+var_130
6A0DA:  ADD.W           R1, SP, #0x150+var_132
6A0DE:  MOVS            R2, #8
6A0E0:  MOVS            R3, #1
6A0E2:  BL              sub_86D52
6A0E6:  ADD             R0, SP, #0x150+var_130
6A0E8:  UXTB.W          R2, R9
6A0EC:  MOV             R1, R8
6A0EE:  BL              sub_86C1C
6A0F2:  LDR.W           R0, [R4,#0x210]
6A0F6:  MOVS            R3, #0
6A0F8:  LDR             R1, =(off_114BAC - 0x6A0FE)
6A0FA:  ADD             R1, PC; off_114BAC
6A0FC:  LDR             R2, [R0]
6A0FE:  LDR             R1, [R1]; unk_116E28
6A100:  LDR             R6, [R2,#0x6C]
6A102:  MOV.W           R12, #0xFFFFFFFF
6A106:  MOVS            R4, #9
6A108:  ADD             R2, SP, #0x150+var_130
6A10A:  MOVW            R5, #0xFFFF
6A10E:  STRD.W          R4, R3, [SP,#0x150+var_150]
6A112:  STRD.W          R3, R12, [SP,#0x150+var_148]
6A116:  STR             R3, [SP,#0x150+var_138]
6A118:  MOVS            R3, #1
6A11A:  STRD.W          R5, R5, [SP,#0x150+var_140]
6A11E:  BLX             R6
6A120:  ADD             R0, SP, #0x150+var_130
6A122:  BL              sub_86BF8
6A126:  LDR             R0, [SP,#0x150+var_1C]
6A128:  LDR             R1, =(__stack_chk_guard_ptr - 0x6A12E)
6A12A:  ADD             R1, PC; __stack_chk_guard_ptr
6A12C:  LDR             R1, [R1]; __stack_chk_guard
6A12E:  LDR             R1, [R1]
6A130:  CMP             R1, R0
6A132:  ITTT EQ
6A134:  ADDEQ           SP, SP, #0x138
6A136:  POPEQ.W         {R8-R10}
6A13A:  POPEQ           {R4-R7,PC}
6A13C:  BLX             __stack_chk_fail
