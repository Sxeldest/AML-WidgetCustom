; =========================================================
; Game Engine Function: sub_17CA28
; Address            : 0x17CA28 - 0x17CA86
; =========================================================

17CA28:  PUSH            {R4-R7,LR}
17CA2A:  ADD             R7, SP, #0xC
17CA2C:  PUSH.W          {R11}
17CA30:  MOV             R5, R1
17CA32:  MOV             R6, R0
17CA34:  BL              sub_17C080
17CA38:  CBZ             R0, loc_17CA6A
17CA3A:  LDR             R1, [R6]
17CA3C:  MOV             R3, R5
17CA3E:  LDR             R2, [R6,#0x44]
17CA40:  MOV             R4, R0
17CA42:  BL              sub_17C1B8
17CA46:  LDR             R0, [R4]
17CA48:  LDR.W           R1, [R0,#0x390]
17CA4C:  MOV             R0, R4
17CA4E:  BLX             R1
17CA50:  CBZ             R0, loc_17CA80
17CA52:  LDR             R0, [R4]
17CA54:  LDR             R1, [R0,#0x40]
17CA56:  MOV             R0, R4
17CA58:  BLX             R1
17CA5A:  LDR             R0, [R4]
17CA5C:  LDR             R1, [R0,#0x44]
17CA5E:  MOV             R0, R4
17CA60:  POP.W           {R11}
17CA64:  POP.W           {R4-R7,LR}
17CA68:  BX              R1
17CA6A:  LDR             R1, =(aAxl - 0x17CA74); "AXL" ...
17CA6C:  MOVS            R0, #6
17CA6E:  LDR             R2, =(aEnvNotLoadedSe_5 - 0x17CA76); "Env not loaded (Settings_SetChatPrintTi"... ...
17CA70:  ADD             R1, PC; "AXL"
17CA72:  ADD             R2, PC; "Env not loaded (Settings_SetChatPrintTi"...
17CA74:  POP.W           {R11}
17CA78:  POP.W           {R4-R7,LR}
17CA7C:  B.W             sub_2242C8
17CA80:  POP.W           {R11}
17CA84:  POP             {R4-R7,PC}
