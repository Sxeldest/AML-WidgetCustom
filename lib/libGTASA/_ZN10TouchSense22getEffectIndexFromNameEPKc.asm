; =========================================================
; Game Engine Function: _ZN10TouchSense22getEffectIndexFromNameEPKc
; Address            : 0x270AF4 - 0x270B32
; =========================================================

270AF4:  PUSH            {R4,R5,R7,LR}
270AF6:  ADD             R7, SP, #8
270AF8:  SUB             SP, SP, #8
270AFA:  MOV             R5, R0
270AFC:  LDR             R0, =(UseTouchSense_ptr - 0x270B04)
270AFE:  MOV             R4, R1
270B00:  ADD             R0, PC; UseTouchSense_ptr
270B02:  LDR             R0, [R0]; UseTouchSense
270B04:  LDRB            R0, [R0]
270B06:  CBZ             R0, loc_270B2C
270B08:  LDRB            R0, [R5,#4]
270B0A:  CBNZ            R0, loc_270B16
270B0C:  LDR             R1, =(aGta3Ivt - 0x270B14); "gta3.ivt"
270B0E:  MOV             R0, R5; this
270B10:  ADD             R1, PC; "gta3.ivt"
270B12:  BLX             j__ZN10TouchSense10setIVTFileEPKc; TouchSense::setIVTFile(char const*)
270B16:  MOV.W           R0, #0xFFFFFFFF
270B1A:  ADD             R2, SP, #0x10+var_C
270B1C:  STR             R0, [SP,#0x10+var_C]
270B1E:  MOV             R1, R4
270B20:  LDR             R0, [R5,#0x20]
270B22:  BLX             ImmVibeGetIVTEffectIndexFromName
270B26:  LDR             R0, [SP,#0x10+var_C]
270B28:  ADD             SP, SP, #8
270B2A:  POP             {R4,R5,R7,PC}
270B2C:  MOVS            R0, #1
270B2E:  ADD             SP, SP, #8
270B30:  POP             {R4,R5,R7,PC}
