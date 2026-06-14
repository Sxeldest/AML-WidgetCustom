; =========================================================
; Game Engine Function: sub_17CAF8
; Address            : 0x17CAF8 - 0x17CBA8
; =========================================================

17CAF8:  PUSH            {R4-R7,LR}
17CAFA:  ADD             R7, SP, #0xC
17CAFC:  PUSH.W          {R8,R9,R11}
17CB00:  SUB             SP, SP, #0x18
17CB02:  MOV             R6, R3
17CB04:  MOV             R9, R2
17CB06:  MOV             R8, R1
17CB08:  MOV             R5, R0
17CB0A:  BL              sub_17C080
17CB0E:  CMP             R0, #0
17CB10:  BEQ             loc_17CB90
17CB12:  MOV             R4, R0
17CB14:  LDRB            R0, [R6]
17CB16:  LDRD.W          R2, R1, [R6,#4]
17CB1A:  ANDS.W          R3, R0, #1
17CB1E:  ITT EQ
17CB20:  ADDEQ           R1, R6, #1
17CB22:  LSREQ           R2, R0, #1
17CB24:  ADD             R6, SP, #0x30+var_24
17CB26:  MOV             R0, R6
17CB28:  BL              sub_164D04
17CB2C:  LDR             R0, [R4]
17CB2E:  LDRB.W          R2, [SP,#0x30+var_24]
17CB32:  LDR             R1, [SP,#0x30+var_1C]
17CB34:  LDR.W           R3, [R0,#0x29C]
17CB38:  LSLS            R0, R2, #0x1F
17CB3A:  IT EQ
17CB3C:  ADDEQ           R1, R6, #1
17CB3E:  MOV             R0, R4
17CB40:  BLX             R3
17CB42:  LDR             R1, [R5]
17CB44:  MOV             R6, R0
17CB46:  LDR             R2, [R5,#0x30]
17CB48:  STRD.W          R9, R0, [SP,#0x30+var_30]
17CB4C:  MOV             R0, R4
17CB4E:  MOV             R3, R8
17CB50:  BL              sub_17C1B8
17CB54:  LDR             R0, [R4]
17CB56:  LDR             R2, [R0,#0x5C]
17CB58:  MOV             R0, R4
17CB5A:  MOV             R1, R6
17CB5C:  BLX             R2
17CB5E:  LDR             R0, [R4]
17CB60:  LDR.W           R1, [R0,#0x390]
17CB64:  MOV             R0, R4
17CB66:  BLX             R1
17CB68:  CBZ             R0, loc_17CB7A
17CB6A:  LDR             R0, [R4]
17CB6C:  LDR             R1, [R0,#0x40]
17CB6E:  MOV             R0, R4
17CB70:  BLX             R1
17CB72:  LDR             R0, [R4]
17CB74:  LDR             R1, [R0,#0x44]
17CB76:  MOV             R0, R4
17CB78:  BLX             R1
17CB7A:  LDRB.W          R0, [SP,#0x30+var_24]
17CB7E:  LSLS            R0, R0, #0x1F
17CB80:  ITT NE
17CB82:  LDRNE           R0, [SP,#0x30+var_1C]; void *
17CB84:  BLXNE           j__ZdlPv; operator delete(void *)
17CB88:  ADD             SP, SP, #0x18
17CB8A:  POP.W           {R8,R9,R11}
17CB8E:  POP             {R4-R7,PC}
17CB90:  LDR             R1, =(aAxl - 0x17CB9A); "AXL" ...
17CB92:  MOVS            R0, #4
17CB94:  LDR             R2, =(aEnvNotLoadedSe_7 - 0x17CB9C); "Env not loaded. (SendFrontendMessage)" ...
17CB96:  ADD             R1, PC; "AXL"
17CB98:  ADD             R2, PC; "Env not loaded. (SendFrontendMessage)"
17CB9A:  ADD             SP, SP, #0x18
17CB9C:  POP.W           {R8,R9,R11}
17CBA0:  POP.W           {R4-R7,LR}
17CBA4:  B.W             sub_2242C8
