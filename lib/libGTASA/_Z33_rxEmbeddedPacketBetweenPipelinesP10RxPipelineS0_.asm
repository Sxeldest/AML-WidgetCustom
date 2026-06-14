; =========================================================
; Game Engine Function: _Z33_rxEmbeddedPacketBetweenPipelinesP10RxPipelineS0_
; Address            : 0x1DDF74 - 0x1DE0B0
; =========================================================

1DDF74:  PUSH            {R4-R7,LR}
1DDF76:  ADD             R7, SP, #0xC
1DDF78:  PUSH.W          {R8-R11}
1DDF7C:  SUB             SP, SP, #4
1DDF7E:  MOV             R10, R1
1DDF80:  LDR             R1, [R0,#0x10]
1DDF82:  CMP             R1, #2
1DDF84:  BLT.W           loc_1DE0A8
1DDF88:  LDRD.W          R8, R11, [R10,#0x14]
1DDF8C:  CMP.W           R11, #0
1DDF90:  LDR.W           R9, [R0,#0x14]
1DDF94:  BEQ             loc_1DE038
1DDF96:  ADD.W           LR, R9, #0x28 ; '('
1DDF9A:  MOVS            R2, #0
1DDF9C:  LDRH.W          R5, [R9,#2]
1DDFA0:  LDR.W           R1, [R10,#0x1C]
1DDFA4:  CBZ             R5, loc_1DDFCE
1DDFA6:  ADD.W           R0, R2, R2,LSL#1
1DDFAA:  MOVS            R6, #0
1DDFAC:  ADD.W           R4, R1, R0,LSL#2
1DDFB0:  MOV             R0, LR
1DDFB2:  LDR             R3, [R0]
1DDFB4:  CBZ             R3, loc_1DDFC0
1DDFB6:  LDR.W           R12, [R4]
1DDFBA:  LDR             R3, [R3]
1DDFBC:  CMP             R3, R12
1DDFBE:  BEQ             loc_1DDFC8
1DDFC0:  ADDS            R6, #1
1DDFC2:  ADDS            R0, #0x1C
1DDFC4:  CMP             R6, R5
1DDFC6:  BCC             loc_1DDFB2
1DDFC8:  CMP             R6, R5
1DDFCA:  BNE             loc_1DDFD6
1DDFCC:  B               loc_1DE032
1DDFCE:  MOVS            R5, #0
1DDFD0:  MOVS            R6, #0
1DDFD2:  CMP             R6, R5
1DDFD4:  BEQ             loc_1DE032
1DDFD6:  RSB.W           R0, R6, R6,LSL#3
1DDFDA:  ADD.W           R0, R9, R0,LSL#2
1DDFDE:  MOV             R6, R0
1DDFE0:  LDR.W           R3, [R6,#0x18]!
1DDFE4:  CBZ             R3, loc_1DE032
1DDFE6:  ADD.W           R5, R2, R2,LSL#1
1DDFEA:  ADD.W           R3, R0, #0x14
1DDFEE:  ADDS            R0, #0x20 ; ' '
1DDFF0:  VLD1.32         {D18-D19}, [R3]
1DDFF4:  ADD.W           R1, R1, R5,LSL#2
1DDFF8:  VLD1.32         {D16-D17}, [R0]
1DDFFC:  ADD.W           R0, R8, #0x14
1DE000:  LDR             R5, [R1,#8]
1DE002:  RSB.W           R3, R5, R5,LSL#3
1DE006:  ADD.W           R3, R0, R3,LSL#2
1DE00A:  VST1.32         {D18-D19}, [R3]
1DE00E:  ADDS            R3, #0xC
1DE010:  VST1.32         {D16-D17}, [R3]
1DE014:  LDR.W           R3, [R10,#8]
1DE018:  LDR             R1, [R1,#8]
1DE01A:  LDR             R3, [R3,#0xC]
1DE01C:  RSB.W           R5, R1, R1,LSL#3
1DE020:  ADD.W           R0, R0, R5,LSL#2
1DE024:  LDR.W           R1, [R3,R1,LSL#2]
1DE028:  STR             R1, [R0,#0x14]
1DE02A:  MOVS            R0, #0
1DE02C:  STR             R0, [R6]
1DE02E:  LDR.W           R11, [R10,#0x18]
1DE032:  ADDS            R2, #1
1DE034:  CMP             R2, R11
1DE036:  BCC             loc_1DDF9C
1DE038:  LDR.W           R0, [R9,#4]
1DE03C:  MOVS            R1, #1
1DE03E:  ADD.W           R5, R9, #0x28 ; '('
1DE042:  MOVS            R4, #0
1DE044:  STR             R1, [R0,#0x10]
1DE046:  LDRH.W          R0, [R9,#2]
1DE04A:  NEGS            R6, R0
1DE04C:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE052)
1DE04E:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE050:  LDR.W           R11, [R0]; _rxHeapGlobal
1DE054:  LDR             R0, [R5]
1DE056:  CBZ             R0, loc_1DE078
1DE058:  LDR.W           R1, [R5,#-0x10]
1DE05C:  CBZ             R1, loc_1DE06E
1DE05E:  LDRB.W          R0, [R5,#-0x14]
1DE062:  LSLS            R0, R0, #0x1E
1DE064:  ITT PL
1DE066:  LDRPL.W         R0, [R11]
1DE06A:  BLXPL           j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DE06E:  STRD.W          R4, R4, [R5,#-0x14]
1DE072:  STRD.W          R4, R4, [R5,#-8]
1DE076:  STR             R4, [R5]
1DE078:  ADDS            R5, #0x1C
1DE07A:  ADDS            R6, #1
1DE07C:  BNE             loc_1DE054
1DE07E:  MOVS            R0, #0
1DE080:  STRH.W          R0, [R9]
1DE084:  LDR.W           R0, [R10,#8]
1DE088:  LDR             R0, [R0,#0xC]
1DE08A:  STR.W           R0, [R8,#0x10]
1DE08E:  LDR.W           R0, [R10,#8]
1DE092:  LDR             R0, [R0,#0x18]
1DE094:  STR.W           R0, [R8,#8]
1DE098:  LDR.W           R0, [R10,#8]
1DE09C:  LDR             R0, [R0,#0x10]
1DE09E:  STR.W           R0, [R8,#0xC]
1DE0A2:  MOVS            R0, #3
1DE0A4:  STR.W           R0, [R10,#0x10]
1DE0A8:  ADD             SP, SP, #4
1DE0AA:  POP.W           {R8-R11}
1DE0AE:  POP             {R4-R7,PC}
