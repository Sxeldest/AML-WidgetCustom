; =========================================================
; Game Engine Function: sub_17CBC4
; Address            : 0x17CBC4 - 0x17CC46
; =========================================================

17CBC4:  PUSH            {R4-R7,LR}
17CBC6:  ADD             R7, SP, #0xC
17CBC8:  PUSH.W          {R8-R10}
17CBCC:  SUB             SP, SP, #0x10
17CBCE:  CMP             R1, #0x1B
17CBD0:  BHI             loc_17CC26
17CBD2:  MOV             R6, R0
17CBD4:  ADD             R0, R1
17CBD6:  MOV             R5, R1
17CBD8:  LDRB.W          R0, [R0,#0x68]
17CBDC:  CBZ             R0, loc_17CC26
17CBDE:  MOV             R8, R3
17CBE0:  MOV             R9, R2
17CBE2:  LDR.W           R10, [R7,#arg_0]
17CBE6:  BL              sub_17C080
17CBEA:  CBZ             R0, loc_17CC2E
17CBEC:  LDR             R1, [R6]
17CBEE:  MOV             R3, R5
17CBF0:  LDR             R2, [R6,#0x14]
17CBF2:  MOV             R4, R0
17CBF4:  STRD.W          R9, R8, [SP,#0x28+var_28]
17CBF8:  STR.W           R10, [SP,#0x28+var_20]
17CBFC:  BL              sub_17C1B8
17CC00:  LDR             R0, [R4]
17CC02:  LDR.W           R1, [R0,#0x390]
17CC06:  MOV             R0, R4
17CC08:  BLX             R1
17CC0A:  CBZ             R0, loc_17CC26
17CC0C:  LDR             R0, [R4]
17CC0E:  LDR             R1, [R0,#0x40]
17CC10:  MOV             R0, R4
17CC12:  BLX             R1
17CC14:  LDR             R0, [R4]
17CC16:  LDR             R1, [R0,#0x44]
17CC18:  MOV             R0, R4
17CC1A:  ADD             SP, SP, #0x10
17CC1C:  POP.W           {R8-R10}
17CC20:  POP.W           {R4-R7,LR}
17CC24:  BX              R1
17CC26:  ADD             SP, SP, #0x10
17CC28:  POP.W           {R8-R10}
17CC2C:  POP             {R4-R7,PC}
17CC2E:  LDR             R1, =(aAxl - 0x17CC38); "AXL" ...
17CC30:  MOVS            R0, #4
17CC32:  LDR             R2, =(aEnvNotLoadedSe_0 - 0x17CC3A); "Env not loaded. (SetUIElementVisible)" ...
17CC34:  ADD             R1, PC; "AXL"
17CC36:  ADD             R2, PC; "Env not loaded. (SetUIElementVisible)"
17CC38:  ADD             SP, SP, #0x10
17CC3A:  POP.W           {R8-R10}
17CC3E:  POP.W           {R4-R7,LR}
17CC42:  B.W             sub_2242C8
