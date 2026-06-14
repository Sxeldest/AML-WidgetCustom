; =========================================================
; Game Engine Function: deflateReset
; Address            : 0x20AD08 - 0x20ADBA
; =========================================================

20AD08:  PUSH            {R4-R7,LR}
20AD0A:  ADD             R7, SP, #0xC
20AD0C:  PUSH.W          {R11}
20AD10:  CMP             R0, #0
20AD12:  BEQ             loc_20ADAE
20AD14:  LDR             R5, [R0,#0x1C]
20AD16:  CMP             R5, #0
20AD18:  BEQ             loc_20ADAE
20AD1A:  LDR             R1, [R0,#0x20]
20AD1C:  CMP             R1, #0
20AD1E:  BEQ             loc_20ADAE
20AD20:  LDR             R1, [R0,#0x24]
20AD22:  CMP             R1, #0
20AD24:  BEQ             loc_20ADAE
20AD26:  MOVS            R4, #0
20AD28:  MOVS            R6, #2
20AD2A:  STR             R4, [R0,#8]
20AD2C:  STRD.W          R4, R4, [R0,#0x14]
20AD30:  STR             R6, [R0,#0x2C]
20AD32:  LDR             R1, [R5,#0x18]
20AD34:  LDR             R2, [R5,#8]
20AD36:  CMP.W           R1, #0xFFFFFFFF
20AD3A:  STRD.W          R2, R4, [R5,#0x10]
20AD3E:  ITT LE
20AD40:  STRLE           R4, [R5,#0x18]
20AD42:  MOVLE           R1, #0
20AD44:  MOVS            R2, #0x2A ; '*'
20AD46:  CMP             R1, #0
20AD48:  MOV.W           R1, #1
20AD4C:  IT NE
20AD4E:  MOVNE           R2, #0x71 ; 'q'
20AD50:  STR             R2, [R5,#4]
20AD52:  STR             R1, [R0,#0x30]
20AD54:  MOV             R0, R5
20AD56:  STR             R4, [R5,#0x20]
20AD58:  BLX             j__tr_init
20AD5C:  LDR             R0, [R5,#0x24]
20AD5E:  LDR             R2, [R5,#0x44]
20AD60:  LDR             R1, [R5,#0x3C]
20AD62:  LSLS            R0, R0, #1
20AD64:  STR             R0, [R5,#0x34]
20AD66:  ADD.W           R0, R1, R2,LSL#1
20AD6A:  MOV             R2, #0xFFFFFFFE
20AD6E:  STRH.W          R4, [R0,#-2]
20AD72:  LDR             R1, [R5,#0x44]
20AD74:  LDR             R0, [R5,#0x3C]
20AD76:  ADD.W           R1, R2, R1,LSL#1
20AD7A:  BLX             j___aeabi_memclr8_1
20AD7E:  LDR             R0, [R5,#0x7C]
20AD80:  LDR             R1, =(unk_660978 - 0x20AD88)
20AD82:  STR             R4, [R5,#0x64]
20AD84:  ADD             R1, PC; unk_660978
20AD86:  ADD.W           R0, R0, R0,LSL#1
20AD8A:  STR             R4, [R5,#0x54]
20AD8C:  LDRH.W          R2, [R1,R0,LSL#2]
20AD90:  ADD.W           R0, R1, R0,LSL#2
20AD94:  STR             R4, [R5,#0x6C]
20AD96:  LDRH            R1, [R0,#6]
20AD98:  LDRH            R3, [R0,#4]
20AD9A:  LDRH            R0, [R0,#2]
20AD9C:  STR             R6, [R5,#0x58]
20AD9E:  STR             R4, [R5,#0x60]
20ADA0:  STR             R4, [R5,#0x40]
20ADA2:  STR             R0, [R5,#0x78]
20ADA4:  STRD.W          R2, R3, [R5,#0x84]
20ADA8:  STRD.W          R6, R1, [R5,#0x70]
20ADAC:  B               loc_20ADB2
20ADAE:  MOV             R4, #0xFFFFFFFE
20ADB2:  MOV             R0, R4
20ADB4:  POP.W           {R11}
20ADB8:  POP             {R4-R7,PC}
