; =========================================================
; Game Engine Function: sub_21B050
; Address            : 0x21B050 - 0x21B12A
; =========================================================

21B050:  PUSH            {R4-R7,LR}
21B052:  ADD             R7, SP, #0xC
21B054:  PUSH.W          {R5-R11}
21B058:  MOV             R10, R0
21B05A:  LDR             R0, =(__stack_chk_guard_ptr - 0x21B066)
21B05C:  ADD.W           R8, R10, #0xC
21B060:  MOV             R4, R1
21B062:  ADD             R0, PC; __stack_chk_guard_ptr
21B064:  MOV             R1, SP
21B066:  LDR             R0, [R0]; __stack_chk_guard
21B068:  LDR             R0, [R0]
21B06A:  STR             R0, [SP,#0x28+var_20]
21B06C:  LDR             R0, =(aW7+6 - 0x21B072); ">" ...
21B06E:  ADD             R0, PC; ">"
21B070:  STR             R0, [SP,#0x28+var_28]
21B072:  ADD.W           R9, R0, #1
21B076:  STR.W           R9, [SP,#0x28+var_24]
21B07A:  MOV             R11, R0
21B07C:  MOV             R0, R8
21B07E:  BL              sub_21B154
21B082:  LDR             R5, =(aQjk+6 - 0x21B088); "(" ...
21B084:  ADD             R5, PC; "("
21B086:  CBZ             R0, loc_21B092
21B088:  ADDS            R2, R5, #1
21B08A:  MOV             R0, R4
21B08C:  MOV             R1, R5
21B08E:  BL              sub_216F98
21B092:  LDR             R6, =(sub_216F98+1 - 0x21B09E)
21B094:  ADDS            R2, R5, #1
21B096:  MOV             R0, R4
21B098:  MOV             R1, R5
21B09A:  ADD             R6, PC; sub_216F98
21B09C:  BLX             R6; sub_216F98
21B09E:  LDR.W           R0, [R10,#8]
21B0A2:  MOV             R1, R4
21B0A4:  BL              sub_2154CC
21B0A8:  LDR             R1, =(asc_91975 - 0x21B0B0); ") " ...
21B0AA:  MOV             R0, R4
21B0AC:  ADD             R1, PC; ") "
21B0AE:  ADDS            R2, R1, #2
21B0B0:  BLX             R6; sub_216F98
21B0B2:  LDRD.W          R1, R2, [R10,#0xC]
21B0B6:  MOV             R0, R4
21B0B8:  BLX             R6; sub_216F98
21B0BA:  LDR             R1, =(asc_898D5 - 0x21B0C2); " (" ...
21B0BC:  MOV             R0, R4
21B0BE:  ADD             R1, PC; " ("
21B0C0:  ADDS            R2, R1, #2
21B0C2:  BLX             R6; sub_216F98
21B0C4:  LDR.W           R0, [R10,#0x14]
21B0C8:  MOV             R1, R4
21B0CA:  BL              sub_2154CC
21B0CE:  LDR             R5, =(unk_901C1 - 0x21B0D6)
21B0D0:  MOV             R0, R4
21B0D2:  ADD             R5, PC; unk_901C1
21B0D4:  ADD.W           R10, R5, #1
21B0D8:  MOV             R1, R5
21B0DA:  MOV             R2, R10
21B0DC:  BLX             R6; sub_216F98
21B0DE:  MOV             R1, SP
21B0E0:  MOV             R0, R8
21B0E2:  STRD.W          R11, R9, [SP,#0x28+var_28]
21B0E6:  BL              sub_21B154
21B0EA:  CBZ             R0, loc_21B112
21B0EC:  LDR             R0, [SP,#0x28+var_20]
21B0EE:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B0F4)
21B0F0:  ADD             R1, PC; __stack_chk_guard_ptr
21B0F2:  LDR             R1, [R1]; __stack_chk_guard
21B0F4:  LDR             R1, [R1]
21B0F6:  CMP             R1, R0
21B0F8:  ITTTT EQ
21B0FA:  MOVEQ           R0, R4
21B0FC:  MOVEQ           R1, R5
21B0FE:  MOVEQ           R2, R10
21B100:  ADDEQ           SP, SP, #0xC
21B102:  ITTT EQ
21B104:  POPEQ.W         {R8-R11}
21B108:  POPEQ.W         {R4-R7,LR}
21B10C:  BEQ.W           sub_216F98
21B110:  B               loc_21B126
21B112:  LDR             R0, [SP,#0x28+var_20]
21B114:  LDR             R1, =(__stack_chk_guard_ptr - 0x21B11A)
21B116:  ADD             R1, PC; __stack_chk_guard_ptr
21B118:  LDR             R1, [R1]; __stack_chk_guard
21B11A:  LDR             R1, [R1]
21B11C:  CMP             R1, R0
21B11E:  ITT EQ
21B120:  POPEQ.W         {R1-R3,R8-R11}
21B124:  POPEQ           {R4-R7,PC}
21B126:  BLX             __stack_chk_fail
