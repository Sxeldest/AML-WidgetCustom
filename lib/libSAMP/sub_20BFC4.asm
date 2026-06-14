; =========================================================
; Game Engine Function: sub_20BFC4
; Address            : 0x20BFC4 - 0x20C19A
; =========================================================

20BFC4:  PUSH            {R4-R7,LR}
20BFC6:  ADD             R7, SP, #0xC
20BFC8:  PUSH.W          {R8-R11}
20BFCC:  SUB             SP, SP, #0x8C
20BFCE:  STRD.W          R1, R0, [SP,#0xA8+var_9C]
20BFD2:  MOVS            R1, #0xC
20BFD4:  LDR             R0, =(__stack_chk_guard_ptr - 0x20BFDC)
20BFD6:  MOV             R10, R3
20BFD8:  ADD             R0, PC; __stack_chk_guard_ptr
20BFDA:  LDR             R0, [R0]; __stack_chk_guard
20BFDC:  LDR             R0, [R0]
20BFDE:  STR             R0, [SP,#0xA8+var_20]
20BFE0:  LDR             R0, =(free_ptr - 0x20BFE8)
20BFE2:  STR             R2, [SP,#0xA8+var_A8]
20BFE4:  ADD             R0, PC; free_ptr
20BFE6:  LDR             R0, [R0]; __imp_free
20BFE8:  STR             R0, [SP,#0xA8+var_88]
20BFEA:  MOVS            R0, #0
20BFEC:  STR             R0, [SP,#0xA8+var_8C]
20BFEE:  SUBS            R0, R3, R2
20BFF0:  BLX             sub_220A40
20BFF4:  MOV             R4, R0
20BFF6:  CMP             R0, #0x65 ; 'e'
20BFF8:  BCC             loc_20C016
20BFFA:  MOV             R0, R4; size
20BFFC:  MOV             R5, R4
20BFFE:  BLX             malloc
20C002:  CMP             R0, #0
20C004:  BEQ.W           loc_20C196
20C008:  MOV             R11, R0
20C00A:  ADD             R0, SP, #0xA8+var_8C
20C00C:  MOV             R1, R11
20C00E:  BL              sub_20E6D6
20C012:  MOV             R4, R5
20C014:  B               loc_20C01A
20C016:  ADD.W           R11, SP, #0xA8+var_84
20C01A:  LDR             R6, [SP,#0xA8+var_A8]
20C01C:  MOV.W           R9, #0
20C020:  MOV.W           R8, #1
20C024:  MOV             R5, R11
20C026:  CMP             R6, R10
20C028:  BEQ             loc_20C048
20C02A:  MOV             R0, R6
20C02C:  BL              sub_2046D8
20C030:  CBZ             R0, loc_20C03E
20C032:  ADD.W           R9, R9, #1
20C036:  SUBS            R4, #1
20C038:  MOVS            R0, #2
20C03A:  STRB            R0, [R5]
20C03C:  B               loc_20C042
20C03E:  STRB.W          R8, [R5]
20C042:  ADDS            R5, #1
20C044:  ADDS            R6, #0xC
20C046:  B               loc_20C026
20C048:  LDR             R0, [SP,#0xA8+var_A8]
20C04A:  MOVS            R6, #0
20C04C:  STR.W           R11, [SP,#0xA8+var_A4]
20C050:  ADDS            R0, #4
20C052:  STR             R0, [SP,#0xA8+var_A0]
20C054:  LDR             R0, [SP,#0xA8+var_98]
20C056:  LDR             R1, [SP,#0xA8+var_9C]
20C058:  LDR             R0, [R0]
20C05A:  CMP             R0, R1
20C05C:  IT NE
20C05E:  CMPNE           R4, #0
20C060:  BEQ             loc_20C140
20C062:  LDR.W           R8, [R0]
20C066:  LDR             R0, [R7,#arg_8]
20C068:  STR.W           R9, [SP,#0xA8+var_90]
20C06C:  CBNZ            R0, loc_20C07A
20C06E:  LDR             R0, [R7,#arg_0]
20C070:  LDR             R1, [R0]
20C072:  LDR             R2, [R1,#0x1C]
20C074:  MOV             R1, R8
20C076:  BLX             R2
20C078:  MOV             R8, R0
20C07A:  LDR.W           R9, [SP,#0xA8+var_A0]
20C07E:  ADDS            R5, R6, #1
20C080:  MOVS            R0, #0
20C082:  STR             R0, [SP,#0xA8+var_94]
20C084:  SUB.W           R0, R9, #4
20C088:  CMP             R0, R10
20C08A:  BEQ             loc_20C0F0
20C08C:  LDRB.W          R0, [R11]
20C090:  CMP             R0, #1
20C092:  BNE             loc_20C0E6
20C094:  LDRB.W          R1, [R9,#-4]
20C098:  LDR.W           R0, [R9,#4]
20C09C:  LSLS            R1, R1, #0x1F
20C09E:  IT EQ
20C0A0:  MOVEQ           R0, R9
20C0A2:  LDR.W           R1, [R0,R6,LSL#2]
20C0A6:  LDR             R0, [R7,#arg_8]
20C0A8:  CBNZ            R0, loc_20C0B4
20C0AA:  LDR             R0, [R7,#arg_0]
20C0AC:  LDR             R2, [R0]
20C0AE:  LDR             R2, [R2,#0x1C]
20C0B0:  BLX             R2
20C0B2:  MOV             R1, R0
20C0B4:  CMP             R8, R1
20C0B6:  BNE             loc_20C0DE
20C0B8:  LDRB.W          R1, [R9,#-4]
20C0BC:  LDR.W           R0, [R9]
20C0C0:  LSLS            R2, R1, #0x1F
20C0C2:  IT EQ
20C0C4:  LSREQ           R0, R1, #1
20C0C6:  CMP             R0, R5
20C0C8:  BNE             loc_20C0D8
20C0CA:  MOVS            R0, #2
20C0CC:  SUBS            R4, #1
20C0CE:  STRB.W          R0, [R11]
20C0D2:  LDR             R0, [SP,#0xA8+var_90]
20C0D4:  ADDS            R0, #1
20C0D6:  STR             R0, [SP,#0xA8+var_90]
20C0D8:  MOVS            R0, #1
20C0DA:  STR             R0, [SP,#0xA8+var_94]
20C0DC:  B               loc_20C0E6
20C0DE:  SUBS            R4, #1
20C0E0:  MOVS            R0, #0
20C0E2:  STRB.W          R0, [R11]
20C0E6:  ADD.W           R9, R9, #0xC
20C0EA:  ADD.W           R11, R11, #1
20C0EE:  B               loc_20C084
20C0F0:  LDR             R0, [SP,#0xA8+var_94]
20C0F2:  MOV             R6, R5
20C0F4:  LDR.W           R11, [SP,#0xA8+var_A4]
20C0F8:  LDR.W           R9, [SP,#0xA8+var_90]
20C0FC:  LSLS            R0, R0, #0x1F
20C0FE:  BEQ             loc_20C054
20C100:  LDR             R1, [SP,#0xA8+var_98]
20C102:  MOV             R6, R5
20C104:  LDR             R0, [R1]
20C106:  ADDS            R0, #4
20C108:  STR             R0, [R1]
20C10A:  ADD.W           R0, R9, R4
20C10E:  CMP             R0, #2
20C110:  BCC             loc_20C054
20C112:  LDR             R1, [SP,#0xA8+var_A8]
20C114:  MOV             R0, R11
20C116:  CMP             R1, R10
20C118:  BEQ             loc_20C13C
20C11A:  LDRB            R2, [R0]
20C11C:  CMP             R2, #2
20C11E:  BNE             loc_20C136
20C120:  LDRB            R3, [R1]
20C122:  LDR             R2, [R1,#4]
20C124:  LSLS            R6, R3, #0x1F
20C126:  IT EQ
20C128:  LSREQ           R2, R3, #1
20C12A:  CMP             R2, R5
20C12C:  ITTT NE
20C12E:  MOVNE           R2, #0
20C130:  STRBNE          R2, [R0]
20C132:  SUBNE.W         R9, R9, #1
20C136:  ADDS            R0, #1
20C138:  ADDS            R1, #0xC
20C13A:  B               loc_20C116
20C13C:  MOV             R6, R5
20C13E:  B               loc_20C054
20C140:  LDR             R1, [SP,#0xA8+var_9C]
20C142:  CMP             R0, R1
20C144:  BNE             loc_20C150
20C146:  LDR             R1, [R7,#arg_4]
20C148:  LDR             R0, [R1]
20C14A:  ORR.W           R0, R0, #2
20C14E:  STR             R0, [R1]
20C150:  LDR             R1, [SP,#0xA8+var_A8]
20C152:  CMP             R1, R10
20C154:  BEQ             loc_20C166
20C156:  LDRB.W          R0, [R11]
20C15A:  CMP             R0, #2
20C15C:  BEQ             loc_20C172
20C15E:  ADD.W           R11, R11, #1
20C162:  ADDS            R1, #0xC
20C164:  B               loc_20C152
20C166:  LDR             R1, [R7,#arg_4]
20C168:  LDR             R0, [R1]
20C16A:  ORR.W           R0, R0, #4
20C16E:  STR             R0, [R1]
20C170:  B               loc_20C174
20C172:  MOV             R10, R1
20C174:  ADD             R0, SP, #0xA8+var_8C
20C176:  BL              sub_20E6EC
20C17A:  LDR             R0, [SP,#0xA8+var_20]
20C17C:  LDR             R1, =(__stack_chk_guard_ptr - 0x20C182)
20C17E:  ADD             R1, PC; __stack_chk_guard_ptr
20C180:  LDR             R1, [R1]; __stack_chk_guard
20C182:  LDR             R1, [R1]
20C184:  CMP             R1, R0
20C186:  ITTTT EQ
20C188:  MOVEQ           R0, R10
20C18A:  ADDEQ           SP, SP, #0x8C
20C18C:  POPEQ.W         {R8-R11}
20C190:  POPEQ           {R4-R7,PC}
20C192:  BLX             __stack_chk_fail
20C196:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
