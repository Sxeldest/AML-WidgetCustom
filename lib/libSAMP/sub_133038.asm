; =========================================================
; Game Engine Function: sub_133038
; Address            : 0x133038 - 0x13309E
; =========================================================

133038:  PUSH            {R4-R7,LR}
13303A:  ADD             R7, SP, #0xC
13303C:  PUSH.W          {R8-R11}
133040:  SUB             SP, SP, #4
133042:  MOV             R8, R0
133044:  LDR             R0, =(off_234BA8 - 0x13304E)
133046:  MOV             R10, R1
133048:  LDR             R1, =(_ZTIN14KeyboardLayout3Row4BindE - 0x133054); `typeinfo for'KeyboardLayout::Row::Bind ...
13304A:  ADD             R0, PC; off_234BA8
13304C:  MOV.W           R9, #0
133050:  ADD             R1, PC; `typeinfo for'KeyboardLayout::Row::Bind
133052:  LDR             R5, [R0]; `typeinfo for'Widget ...
133054:  MOV             R11, R1
133056:  ADD.W           R0, R8, R9,LSL#2
13305A:  LDR             R0, [R0,#0x6C]
13305C:  LDRD.W          R4, R0, [R0,#0x44]
133060:  SUBS            R0, R0, R4
133062:  CMP             R0, #1
133064:  BLT             loc_13308A
133066:  MOVS            R6, #1
133068:  LSRS            R1, R0, #2
13306A:  CMP             R1, #1
13306C:  IT GT
13306E:  LSRGT           R6, R0, #2
133070:  LDR             R0, [R4]; lpsrc
133072:  CBZ             R0, loc_133084
133074:  MOV             R1, R5; lpstype
133076:  MOV             R2, R11; lpdtype
133078:  MOVS            R3, #0; s2d
13307A:  BLX             j___dynamic_cast
13307E:  LDR             R1, [R0,#0x70]
133080:  CMP             R1, R10
133082:  BEQ             loc_133096
133084:  ADDS            R4, #4
133086:  SUBS            R6, #1
133088:  BNE             loc_133070
13308A:  ADD.W           R9, R9, #1
13308E:  CMP.W           R9, #3
133092:  BNE             loc_133056
133094:  MOVS            R0, #0
133096:  ADD             SP, SP, #4
133098:  POP.W           {R8-R11}
13309C:  POP             {R4-R7,PC}
