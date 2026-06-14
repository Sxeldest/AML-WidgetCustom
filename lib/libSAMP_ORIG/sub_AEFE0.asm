; =========================================================
; Game Engine Function: sub_AEFE0
; Address            : 0xAEFE0 - 0xAF142
; =========================================================

AEFE0:  PUSH            {R4-R7,LR}
AEFE2:  ADD             R7, SP, #0xC
AEFE4:  PUSH.W          {R8-R11}
AEFE8:  SUB             SP, SP, #4
AEFEA:  MOV             R4, R0
AEFEC:  MOVW            R0, #0x3E7
AEFF0:  STR.W           R0, [R4,#0xE08]
AEFF4:  MOV             R9, R1
AEFF6:  LDRH.W          R0, [R4,#0xDFE]
AEFFA:  MOVS            R1, #0x63 ; 'c'
AEFFC:  MOV             R8, R3
AEFFE:  MOV             R5, R2
AF000:  CMP             R0, #0x63 ; 'c'
AF002:  STRH.W          R1, [R4,#0xE00]
AF006:  BEQ             loc_AF01A
AF008:  CMP.W           R5, #0x3E8
AF00C:  BLT             loc_AF076
AF00E:  MOVS            R0, #0
AF010:  STR.W           R0, [R4,#0xE04]
AF014:  STRH.W          R0, [R4,#0xDFE]
AF018:  B               loc_AF13A
AF01A:  LDR             R0, [R4,#0xC]
AF01C:  CMP             R0, #0
AF01E:  BMI             loc_AF05A
AF020:  LDR             R6, [R4,#4]
AF022:  LDR.W           R0, [R4,#0xE04]
AF026:  SUBS            R2, R0, R6
AF028:  ADD.W           R0, R4, #0x630; dest
AF02C:  ADD.W           R1, R0, R6,LSL#1; src
AF030:  STR.W           R2, [R4,#0xE04]
AF034:  LSLS            R2, R2, #1; n
AF036:  BLX             j_memmove
AF03A:  LDRSH.W         R0, [R4,#0xDFE]
AF03E:  CMP             R0, #1
AF040:  BLT             loc_AF05C
AF042:  ADD.W           R1, R4, #0xC
AF046:  MOV             R2, R0
AF048:  LDR             R3, [R1]
AF04A:  CMP             R3, #0
AF04C:  ITT PL
AF04E:  SUBPL           R3, R3, R6
AF050:  STRPL           R3, [R1]
AF052:  ADDS            R1, #0x10
AF054:  SUBS            R2, #1
AF056:  BNE             loc_AF048
AF058:  B               loc_AF05C
AF05A:  MOVS            R0, #0x63 ; 'c'
AF05C:  SUBS            R0, #1
AF05E:  STRH.W          R0, [R4,#0xDFE]
AF062:  ADD.W           R1, R4, #0x10; src
AF066:  SXTH            R0, R0
AF068:  LSLS            R2, R0, #4; n
AF06A:  MOV             R0, R4; dest
AF06C:  BLX             j_memmove
AF070:  CMP.W           R5, #0x3E8
AF074:  BGE             loc_AF00E
AF076:  LDR.W           R0, [R4,#0xE04]
AF07A:  STR.W           R8, [SP,#0x20+var_20]
AF07E:  ADDS            R1, R0, R5
AF080:  CMP.W           R1, #0x3E8
AF084:  BLT             loc_AF0FC
AF086:  ADD.W           R6, R4, #0x10
AF08A:  ADD.W           R10, R4, #0x630
AF08E:  ADD.W           R11, R4, #0xC
AF092:  B               loc_AF0B2
AF094:  SUBS            R0, R1, #1
AF096:  STRH.W          R0, [R4,#0xDFE]
AF09A:  MOV             R1, R6; src
AF09C:  SXTH            R0, R0
AF09E:  LSLS            R2, R0, #4; n
AF0A0:  MOV             R0, R4; dest
AF0A2:  BLX             j_memmove
AF0A6:  LDR.W           R0, [R4,#0xE04]
AF0AA:  ADDS            R1, R0, R5
AF0AC:  CMP.W           R1, #0x3E8
AF0B0:  BLT             loc_AF0FC
AF0B2:  LDRSH.W         R1, [R4,#0xDFE]
AF0B6:  CMP             R1, #1
AF0B8:  BLT             loc_AF0AA
AF0BA:  LDR             R2, [R4,#0xC]
AF0BC:  CMP             R2, #0
AF0BE:  BMI             loc_AF094
AF0C0:  LDR.W           R8, [R4,#4]
AF0C4:  SUB.W           R0, R0, R8
AF0C8:  STR.W           R0, [R4,#0xE04]
AF0CC:  ADD.W           R1, R4, R8,LSL#1
AF0D0:  ADD.W           R1, R1, #0x630; src
AF0D4:  LSLS            R2, R0, #1; n
AF0D6:  MOV             R0, R10; dest
AF0D8:  BLX             j_memmove
AF0DC:  LDRSH.W         R1, [R4,#0xDFE]
AF0E0:  CMP             R1, #1
AF0E2:  BLT             loc_AF094
AF0E4:  MOV             R0, R11
AF0E6:  MOV             R2, R1
AF0E8:  LDR             R3, [R0]
AF0EA:  CMP             R3, #0
AF0EC:  ITT PL
AF0EE:  SUBPL.W         R3, R3, R8
AF0F2:  STRPL           R3, [R0]
AF0F4:  ADDS            R0, #0x10
AF0F6:  SUBS            R2, #1
AF0F8:  BNE             loc_AF0E8
AF0FA:  B               loc_AF094
AF0FC:  LDRSH.W         R1, [R4,#0xDFE]
AF100:  MOV.W           R2, R1,LSL#4
AF104:  STR.W           R9, [R4,R2]
AF108:  ADD.W           R2, R1, #1
AF10C:  ADD.W           R1, R4, R1,LSL#4
AF110:  STRH.W          R2, [R4,#0xDFE]
AF114:  LDR             R2, [SP,#0x20+var_20]
AF116:  STR             R5, [R1,#4]
AF118:  STR             R2, [R1,#8]
AF11A:  ADD.W           R1, R1, #0xC
AF11E:  CBZ             R5, loc_AF132
AF120:  ADDS            R2, R0, R5
AF122:  STR             R0, [R1]
AF124:  ADD.W           R0, R4, R0,LSL#1
AF128:  STR.W           R2, [R4,#0xE04]
AF12C:  ADD.W           R0, R0, #0x630
AF130:  B               loc_AF13A
AF132:  MOV.W           R0, #0xFFFFFFFF
AF136:  STR             R0, [R1]
AF138:  MOVS            R0, #0
AF13A:  ADD             SP, SP, #4
AF13C:  POP.W           {R8-R11}
AF140:  POP             {R4-R7,PC}
