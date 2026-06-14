; =========================================================
; Game Engine Function: sub_97058
; Address            : 0x97058 - 0x970E6
; =========================================================

97058:  PUSH            {R4,R5,R7,LR}
9705A:  ADD             R7, SP, #8
9705C:  LDR             R5, =(dword_1ACF68 - 0x97066)
9705E:  MOVW            R1, #0x2D20
97062:  ADD             R5, PC; dword_1ACF68
97064:  LDR             R0, [R5]
97066:  LDRB            R2, [R0,R1]
97068:  CBZ             R2, locret_970E4
9706A:  ADDS            R4, R0, R1
9706C:  LDR             R0, =(asc_4F02C - 0x97072); "\n" ...
9706E:  ADD             R0, PC; "\n"
97070:  BL              sub_99FEC
97074:  LDR             R0, [R4,#4]
97076:  CMP             R0, #4
97078:  BEQ             loc_9708A
9707A:  CMP             R0, #2
9707C:  BEQ             loc_970AC
9707E:  CMP             R0, #1
97080:  BNE             loc_970B2
97082:  LDR             R0, [R4,#8]; stream
97084:  BLX             fflush
97088:  B               loc_970B2
9708A:  LDR             R0, [R4,#0xC]
9708C:  CMP             R0, #2
9708E:  BLT             loc_970B2
97090:  LDR             R0, [R5]
97092:  LDR.W           R2, [R0,#0xCC]
97096:  CBZ             R2, loc_970B2
97098:  LDR             R3, [R4,#0x14]
9709A:  LDR             R1, =(unk_1ACF6C - 0x970A6)
9709C:  LDR.W           R0, [R0,#0xD0]
970A0:  CMP             R3, #0
970A2:  ADD             R1, PC; unk_1ACF6C
970A4:  IT NE
970A6:  MOVNE           R1, R3
970A8:  BLX             R2
970AA:  B               loc_970B2
970AC:  LDR             R0, [R4,#8]; stream
970AE:  BLX             fclose
970B2:  LDR             R0, [R4,#0x14]
970B4:  MOVS            R1, #0
970B6:  STRD.W          R1, R1, [R4,#4]
970BA:  STRB            R1, [R4]
970BC:  CBZ             R0, locret_970E4
970BE:  LDR             R2, [R5]
970C0:  STRD.W          R1, R1, [R4,#0xC]
970C4:  CMP             R2, #0
970C6:  ITTT NE
970C8:  LDRNE.W         R1, [R2,#0x370]
970CC:  SUBNE           R1, #1
970CE:  STRNE.W         R1, [R2,#0x370]
970D2:  LDR             R1, =(dword_1ACF70 - 0x970DA)
970D4:  LDR             R2, =(off_11724C - 0x970DC)
970D6:  ADD             R1, PC; dword_1ACF70
970D8:  ADD             R2, PC; off_11724C
970DA:  LDR             R1, [R1]
970DC:  LDR             R2, [R2]; j_opus_decoder_destroy_0
970DE:  BLX             R2; j_opus_decoder_destroy_0
970E0:  MOVS            R0, #0
970E2:  STR             R0, [R4,#0x14]
970E4:  POP             {R4,R5,R7,PC}
