; =========================================================
; Game Engine Function: sub_17DC88
; Address            : 0x17DC88 - 0x17DDAC
; =========================================================

17DC88:  PUSH            {R4-R7,LR}
17DC8A:  ADD             R7, SP, #0xC
17DC8C:  PUSH.W          {R8-R10}
17DC90:  SUB.W           SP, SP, #0x620
17DC94:  MOVS            R4, #0
17DC96:  MOV             R5, R1
17DC98:  MOV             R9, R0
17DC9A:  STR             R4, [SP,#0x638+var_41C]
17DC9C:  STRD.W          R4, R4, [SP,#0x638+var_424]
17DCA0:  BL              sub_17DAF0
17DCA4:  ADD.W           R8, SP, #0x638+var_418
17DCA8:  ADD.W           R10, SP, #0x638+var_424
17DCAC:  MOVS            R6, #0
17DCAE:  MOVS            R0, #0x14; unsigned int
17DCB0:  BLX             j__Znwj; operator new(uint)
17DCB4:  LDR.W           R1, [R5,R6,LSL#2]
17DCB8:  STR.W           R0, [R8,R6,LSL#2]
17DCBC:  STRB            R6, [R0]
17DCBE:  CMP             R1, #0
17DCC0:  IT EQ
17DCC2:  MOVEQ           R1, #1
17DCC4:  STRD.W          R1, R4, [R0,#4]
17DCC8:  STR             R4, [R0,#0xC]
17DCCA:  MOV             R1, R0
17DCCC:  MOV             R2, R10
17DCCE:  BL              sub_17DDCE
17DCD2:  ADDS            R6, #1
17DCD4:  CMP.W           R6, #0x100
17DCD8:  BNE             loc_17DCAE
17DCDA:  ADD             R5, SP, #0x638+var_424
17DCDC:  LDR             R0, [SP,#0x638+var_420]
17DCDE:  CMP             R0, #0
17DCE0:  ITE NE
17DCE2:  STRNE           R0, [SP,#0x638+var_41C]
17DCE4:  LDREQ           R0, [SP,#0x638+var_41C]
17DCE6:  LDR             R4, [R0]
17DCE8:  MOV             R0, R5
17DCEA:  BL              sub_17E070
17DCEE:  LDR             R0, [SP,#0x638+var_41C]
17DCF0:  LDR             R6, [R0]
17DCF2:  MOV             R0, R5
17DCF4:  BL              sub_17E070
17DCF8:  MOVS            R0, #0x14; unsigned int
17DCFA:  BLX             j__Znwj; operator new(uint)
17DCFE:  LDR             R1, [SP,#0x638+var_424]
17DD00:  LDR             R3, [R6,#4]
17DD02:  LDR             R2, [R4,#4]
17DD04:  STR             R0, [R4,#0x10]
17DD06:  STRD.W          R4, R6, [R0,#8]
17DD0A:  ADD             R2, R3
17DD0C:  STR             R0, [R6,#0x10]
17DD0E:  STR             R2, [R0,#4]
17DD10:  CBZ             R1, loc_17DD1C
17DD12:  MOV             R1, R0
17DD14:  MOV             R2, R5
17DD16:  BL              sub_17DDCE
17DD1A:  B               loc_17DCDC
17DD1C:  MOVS            R1, #0
17DD1E:  STR.W           R0, [R9]
17DD22:  STR             R1, [R0,#0x10]
17DD24:  MOV             R0, SP
17DD26:  BL              sub_17D4A8
17DD2A:  ADD             R4, SP, #0x638+var_524
17DD2C:  MOV.W           R10, #0
17DD30:  MOV             R5, SP
17DD32:  LDR.W           R3, [R8,R10,LSL#2]
17DD36:  MOVS            R2, #0
17DD38:  LDR.W           R0, [R9]
17DD3C:  LDR             R1, [R3,#0x10]
17DD3E:  LDR             R6, [R1,#8]
17DD40:  SUBS            R3, R6, R3
17DD42:  UXTH            R6, R2
17DD44:  IT NE
17DD46:  MOVNE           R3, #1
17DD48:  ADDS            R2, #1
17DD4A:  STRB            R3, [R4,R6]
17DD4C:  CMP             R1, R0
17DD4E:  MOV             R3, R1
17DD50:  BNE             loc_17DD3C
17DD52:  LSLS            R0, R2, #0x10
17DD54:  BEQ             loc_17DD6E
17DD56:  LDRB            R0, [R4,R6]
17DD58:  CBZ             R0, loc_17DD62
17DD5A:  MOV             R0, R5
17DD5C:  BL              sub_17D84A
17DD60:  B               loc_17DD68
17DD62:  MOV             R0, R5
17DD64:  BL              sub_17D828
17DD68:  SUBS            R6, #1
17DD6A:  ADDS            R0, R6, #1
17DD6C:  BNE             loc_17DD56
17DD6E:  ADD.W           R6, R9, R10,LSL#3
17DD72:  ADDS            R1, R6, #4
17DD74:  MOV             R0, R5
17DD76:  BL              sub_17DA6A
17DD7A:  UXTB            R0, R0
17DD7C:  STRH            R0, [R6,#8]
17DD7E:  MOV             R0, R5
17DD80:  BL              sub_17D55E
17DD84:  ADD.W           R10, R10, #1
17DD88:  CMP.W           R10, #0x100
17DD8C:  BNE             loc_17DD32
17DD8E:  MOV             R0, SP
17DD90:  BL              sub_17D542
17DD94:  ADD             R4, SP, #0x638+var_424
17DD96:  MOV             R0, R4
17DD98:  BL              sub_17E03E
17DD9C:  MOV             R0, R4
17DD9E:  BL              sub_17E03E
17DDA2:  ADD.W           SP, SP, #0x620
17DDA6:  POP.W           {R8-R10}
17DDAA:  POP             {R4-R7,PC}
