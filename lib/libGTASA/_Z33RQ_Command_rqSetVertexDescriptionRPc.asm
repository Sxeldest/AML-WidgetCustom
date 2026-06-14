; =========================================================
; Game Engine Function: _Z33RQ_Command_rqSetVertexDescriptionRPc
; Address            : 0x1CBDA4 - 0x1CBE9C
; =========================================================

1CBDA4:  PUSH            {R4-R7,LR}
1CBDA6:  ADD             R7, SP, #0xC
1CBDA8:  PUSH.W          {R8-R11}
1CBDAC:  SUB             SP, SP, #0x24
1CBDAE:  LDR             R1, =(invalidateActiveAttribs_ptr - 0x1CBDBE)
1CBDB0:  MOV.W           R8, #0
1CBDB4:  LDR.W           R9, [R0]
1CBDB8:  MOVS            R5, #0
1CBDBA:  ADD             R1, PC; invalidateActiveAttribs_ptr
1CBDBC:  LDR             R1, [R1]; invalidateActiveAttribs
1CBDBE:  MOV             R2, R9
1CBDC0:  LDR.W           R3, [R2],#0x90
1CBDC4:  STR             R3, [SP,#0x40+var_20]
1CBDC6:  LDRB            R1, [R1]
1CBDC8:  STR             R2, [R0]
1CBDCA:  ADD.W           R0, R9, #4
1CBDCE:  STR             R0, [SP,#0x40+var_34]
1CBDD0:  NEGS            R0, R1
1CBDD2:  STR             R0, [SP,#0x40+var_24]
1CBDD4:  LDR             R0, =(activeDesc_ptr - 0x1CBDDA)
1CBDD6:  ADD             R0, PC; activeDesc_ptr
1CBDD8:  LDR.W           R10, [R0]; activeDesc
1CBDDC:  LDR             R0, =(invalidateActiveAttribs_ptr - 0x1CBDE2)
1CBDDE:  ADD             R0, PC; invalidateActiveAttribs_ptr
1CBDE0:  LDR             R0, [R0]; invalidateActiveAttribs
1CBDE2:  STR             R0, [SP,#0x40+var_30]
1CBDE4:  LDR             R0, =(invalidateActiveAttribs_ptr - 0x1CBDEA)
1CBDE6:  ADD             R0, PC; invalidateActiveAttribs_ptr
1CBDE8:  LDR             R0, [R0]; invalidateActiveAttribs
1CBDEA:  STR             R0, [SP,#0x40+var_2C]
1CBDEC:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CBDF2)
1CBDEE:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CBDF0:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CBDF2:  STR             R0, [SP,#0x40+var_28]
1CBDF4:  ADD.W           R11, R9, R8
1CBDF8:  LDRB.W          R0, [R10,R8]
1CBDFC:  MOV             R6, R11
1CBDFE:  LDRB.W          R1, [R6,#4]!
1CBE02:  CBZ             R1, loc_1CBE48
1CBE04:  ADD.W           R4, R10, R8
1CBE08:  CBZ             R0, loc_1CBE10
1CBE0A:  LDR             R0, [SP,#0x40+var_2C]
1CBE0C:  LDRB            R0, [R0]
1CBE0E:  CBZ             R0, loc_1CBE16
1CBE10:  MOV             R0, R5
1CBE12:  BLX             glEnableVertexAttribArray
1CBE16:  MOV             R0, R4; void *
1CBE18:  MOV             R1, R6; void *
1CBE1A:  MOVS            R2, #0x14; size_t
1CBE1C:  BLX             memcmp
1CBE20:  LDR             R1, [SP,#0x40+var_28]
1CBE22:  LDR             R6, [R1]
1CBE24:  LDRD.W          R2, R1, [SP,#0x40+var_24]
1CBE28:  CMP             R1, R2
1CBE2A:  IT EQ
1CBE2C:  CMPEQ           R0, #0
1CBE2E:  BNE             loc_1CBE32
1CBE30:  CBZ             R6, loc_1CBE70
1CBE32:  LDR.W           R0, [R11,#0x14]
1CBE36:  LDR.W           R1, [R11,#8]
1CBE3A:  CMP             R0, #4
1CBE3C:  BHI             loc_1CBE5A
1CBE3E:  LDR             R2, =(unk_5EA7A0 - 0x1CBE44)
1CBE40:  ADD             R2, PC; unk_5EA7A0
1CBE42:  LDR.W           R2, [R2,R0,LSL#2]
1CBE46:  B               loc_1CBE5C
1CBE48:  LDR             R1, [SP,#0x40+var_30]
1CBE4A:  LDRB            R1, [R1]
1CBE4C:  ORRS            R0, R1
1CBE4E:  LSLS            R0, R0, #0x18
1CBE50:  ITT NE
1CBE52:  MOVNE           R0, R5
1CBE54:  BLXNE           glDisableVertexAttribArray
1CBE58:  B               loc_1CBE70
1CBE5A:  MOVS            R2, #0
1CBE5C:  LDRD.W          R0, R4, [R11,#0xC]
1CBE60:  ADD             R6, R4
1CBE62:  LDRB.W          R3, [R11,#5]
1CBE66:  STRD.W          R0, R6, [SP,#0x40+var_40]
1CBE6A:  MOV             R0, R5
1CBE6C:  BLX             glVertexAttribPointer
1CBE70:  ADD.W           R8, R8, #0x14
1CBE74:  ADDS            R5, #1
1CBE76:  CMP.W           R8, #0x8C
1CBE7A:  BNE             loc_1CBDF4
1CBE7C:  LDR             R0, =(activeDesc_ptr - 0x1CBE86)
1CBE7E:  MOVS            R2, #0x8C; size_t
1CBE80:  LDR             R1, [SP,#0x40+var_34]; void *
1CBE82:  ADD             R0, PC; activeDesc_ptr
1CBE84:  LDR             R0, [R0]; activeDesc ; void *
1CBE86:  BLX             memcpy_0
1CBE8A:  LDR             R0, =(invalidateActiveAttribs_ptr - 0x1CBE92)
1CBE8C:  MOVS            R1, #0
1CBE8E:  ADD             R0, PC; invalidateActiveAttribs_ptr
1CBE90:  LDR             R0, [R0]; invalidateActiveAttribs
1CBE92:  STRB            R1, [R0]
1CBE94:  ADD             SP, SP, #0x24 ; '$'
1CBE96:  POP.W           {R8-R11}
1CBE9A:  POP             {R4-R7,PC}
