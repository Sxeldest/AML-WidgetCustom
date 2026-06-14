; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_onDialogResponse
; Address            : 0x17D054 - 0x17D108
; =========================================================

17D054:  PUSH            {R4-R7,LR}
17D056:  ADD             R7, SP, #0xC
17D058:  PUSH.W          {R8-R11}
17D05C:  SUB             SP, SP, #0x14
17D05E:  MOV             R6, R0
17D060:  LDR             R0, =(dword_381BF4 - 0x17D066)
17D062:  ADD             R0, PC; dword_381BF4
17D064:  LDR             R0, [R0]
17D066:  CMP             R0, #0
17D068:  BEQ             loc_17D100
17D06A:  LDR             R0, =(off_23496C - 0x17D070)
17D06C:  ADD             R0, PC; off_23496C
17D06E:  LDR.W           R11, [R0]; dword_23DEF4
17D072:  LDR.W           R0, [R11]
17D076:  CMP             R0, #0
17D078:  BEQ             loc_17D100
17D07A:  LDR             R0, [R6]
17D07C:  MOV             R9, R2
17D07E:  LDR.W           R10, [R7,#arg_4]
17D082:  MOV             R8, R3
17D084:  LDR.W           R2, [R0,#0x2AC]
17D088:  MOV             R0, R6
17D08A:  MOV             R1, R10
17D08C:  BLX             R2
17D08E:  CMP             R0, #1
17D090:  BLT             loc_17D0AC
17D092:  MOV             R4, R0
17D094:  LDR             R0, [R6]
17D096:  MOV             R1, R10
17D098:  MOVS            R2, #0
17D09A:  MOVS            R5, #0
17D09C:  LDR.W           R3, [R0,#0x2E0]
17D0A0:  MOV             R0, R6
17D0A2:  BLX             R3
17D0A4:  CBZ             R0, loc_17D0B4
17D0A6:  MOV             R1, R0
17D0A8:  MOV             R5, R4
17D0AA:  B               loc_17D0B8
17D0AC:  LDR             R1, =(byte_8F794 - 0x17D0B4)
17D0AE:  MOVS            R5, #0
17D0B0:  ADD             R1, PC; byte_8F794
17D0B2:  B               loc_17D0B8
17D0B4:  LDR             R1, =(byte_8F794 - 0x17D0BA)
17D0B6:  ADD             R1, PC; byte_8F794 ; int
17D0B8:  ADD             R6, SP, #0x30+var_28
17D0BA:  MOV             R2, R5; n
17D0BC:  LDR.W           R4, [R11]
17D0C0:  MOV             R0, R6; int
17D0C2:  BL              sub_164DB4
17D0C6:  LDRB.W          R1, [SP,#0x30+var_28]
17D0CA:  LDR             R0, [SP,#0x30+var_24]
17D0CC:  LDR             R2, [SP,#0x30+var_20]
17D0CE:  ANDS.W          R3, R1, #1
17D0D2:  IT EQ
17D0D4:  LSREQ           R0, R1, #1
17D0D6:  CMP             R3, #0
17D0D8:  IT EQ
17D0DA:  ADDEQ           R2, R6, #1
17D0DC:  STRD.W          R2, R0, [SP,#0x30+var_30]
17D0E0:  UXTH.W          R1, R9
17D0E4:  LDR             R0, [R7,#arg_0]
17D0E6:  UXTB.W          R2, R8
17D0EA:  UXTH            R3, R0
17D0EC:  MOV             R0, R4
17D0EE:  BL              sub_144284
17D0F2:  LDRB.W          R0, [SP,#0x30+var_28]
17D0F6:  LSLS            R0, R0, #0x1F
17D0F8:  ITT NE
17D0FA:  LDRNE           R0, [SP,#0x30+var_20]; void *
17D0FC:  BLXNE           j__ZdlPv; operator delete(void *)
17D100:  ADD             SP, SP, #0x14
17D102:  POP.W           {R8-R11}
17D106:  POP             {R4-R7,PC}
