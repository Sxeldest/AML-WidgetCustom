; =========================================================
; Game Engine Function: _ZN10CStreaming18DeleteAllRwObjectsEv
; Address            : 0x2CFDBC - 0x2CFE74
; =========================================================

2CFDBC:  PUSH            {R4-R7,LR}
2CFDBE:  ADD             R7, SP, #0xC
2CFDC0:  PUSH.W          {R8-R11}
2CFDC4:  SUB             SP, SP, #0xC
2CFDC6:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2CFDD0)
2CFDC8:  MOV.W           R9, #0
2CFDCC:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2CFDCE:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2CFDD0:  STR             R0, [SP,#0x28+var_20]
2CFDD2:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2CFDD8)
2CFDD4:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2CFDD6:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2CFDD8:  STR             R0, [SP,#0x28+var_24]
2CFDDA:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2CFDE0)
2CFDDC:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2CFDDE:  LDR.W           R10, [R0]; CWorld::ms_aSectors ...
2CFDE2:  AND.W           R11, R9, #0xF
2CFDE6:  MOVS            R5, #0
2CFDE8:  RSB.W           R0, R5, R5,LSL#4
2CFDEC:  ADD.W           R6, R9, R0,LSL#3
2CFDF0:  LDR             R0, [SP,#0x28+var_20]
2CFDF2:  LDR.W           R8, [R0,R6,LSL#3]
2CFDF6:  B               loc_2CFDFE
2CFDF8:  LDR             R1, [R0]
2CFDFA:  LDR             R1, [R1,#0x24]
2CFDFC:  BLX             R1
2CFDFE:  CMP.W           R8, #0
2CFE02:  BEQ             loc_2CFE12
2CFE04:  LDRD.W          R0, R8, [R8]
2CFE08:  LDRB            R1, [R0,#0x1D]
2CFE0A:  TST.W           R1, #0x24
2CFE0E:  BNE             loc_2CFDFE
2CFE10:  B               loc_2CFDF8
2CFE12:  LSLS            R0, R5, #4
2CFE14:  LDR             R1, [SP,#0x28+var_24]
2CFE16:  UXTB            R0, R0
2CFE18:  ORR.W           R0, R0, R11
2CFE1C:  ADD.W           R0, R0, R0,LSL#1
2CFE20:  ADD.W           R0, R1, R0,LSL#2
2CFE24:  LDR             R4, [R0,#8]
2CFE26:  B               loc_2CFE2E
2CFE28:  LDR             R1, [R0]
2CFE2A:  LDR             R1, [R1,#0x24]
2CFE2C:  BLX             R1
2CFE2E:  CBZ             R4, loc_2CFE3E
2CFE30:  LDRD.W          R0, R4, [R4]
2CFE34:  LDRB            R1, [R0,#0x1D]
2CFE36:  TST.W           R1, #0x24
2CFE3A:  BNE             loc_2CFE2E
2CFE3C:  B               loc_2CFE28
2CFE3E:  ADD.W           R0, R10, R6,LSL#3
2CFE42:  LDR             R4, [R0,#4]
2CFE44:  B               loc_2CFE4C
2CFE46:  LDR             R1, [R0]
2CFE48:  LDR             R1, [R1,#0x24]
2CFE4A:  BLX             R1
2CFE4C:  CBZ             R4, loc_2CFE5C
2CFE4E:  LDRD.W          R0, R4, [R4]
2CFE52:  LDRB            R1, [R0,#0x1D]
2CFE54:  TST.W           R1, #0x24
2CFE58:  BNE             loc_2CFE4C
2CFE5A:  B               loc_2CFE46
2CFE5C:  ADDS            R5, #1
2CFE5E:  CMP             R5, #0x78 ; 'x'
2CFE60:  BNE             loc_2CFDE8
2CFE62:  ADD.W           R9, R9, #1
2CFE66:  CMP.W           R9, #0x78 ; 'x'
2CFE6A:  BNE             loc_2CFDE2
2CFE6C:  ADD             SP, SP, #0xC
2CFE6E:  POP.W           {R8-R11}
2CFE72:  POP             {R4-R7,PC}
