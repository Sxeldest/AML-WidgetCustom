; =========================================================
; Game Engine Function: _Z24RQ_Command_rqDrawIndexedRPc
; Address            : 0x1CBEBC - 0x1CC0A8
; =========================================================

1CBEBC:  PUSH            {R4-R7,LR}
1CBEBE:  ADD             R7, SP, #0xC
1CBEC0:  PUSH.W          {R8-R10}
1CBEC4:  SUB             SP, SP, #8
1CBEC6:  LDR             R1, =(_ZN14ES2IndexBuffer12curCPUBufferE_ptr - 0x1CBECE)
1CBEC8:  LDR             R2, [R0]
1CBECA:  ADD             R1, PC; _ZN14ES2IndexBuffer12curCPUBufferE_ptr
1CBECC:  ADDS            R3, R2, #4
1CBECE:  LDR             R5, [R1]; ES2IndexBuffer::curCPUBuffer ...
1CBED0:  MOV             R1, R2
1CBED2:  LDR.W           R10, [R1],#0xC
1CBED6:  STR             R3, [R0]
1CBED8:  ADD.W           R3, R2, #8
1CBEDC:  LDR.W           R9, [R2,#4]
1CBEE0:  STR             R3, [R0]
1CBEE2:  LDR             R4, [R2,#8]
1CBEE4:  STR             R1, [R0]
1CBEE6:  LDR             R6, [R5]; ES2IndexBuffer::curCPUBuffer
1CBEE8:  BLX             j__Z21ES2BindActiveTexturesv; ES2BindActiveTextures(void)
1CBEEC:  ADD.W           R8, R6, R4
1CBEF0:  CMP.W           R10, #1
1CBEF4:  BNE.W           loc_1CC048
1CBEF8:  LDR             R0, [R5]; ES2IndexBuffer::curCPUBuffer
1CBEFA:  CMP             R0, #0
1CBEFC:  BEQ.W           loc_1CC048
1CBF00:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CBF06)
1CBF02:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CBF04:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CBF06:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer
1CBF08:  CMP             R0, #0
1CBF0A:  BEQ.W           loc_1CC048
1CBF0E:  LDR             R1, =(RQCaps_ptr - 0x1CBF14)
1CBF10:  ADD             R1, PC; RQCaps_ptr
1CBF12:  LDR             R1, [R1]; RQCaps
1CBF14:  LDRB            R1, [R1,#(byte_6B8BA9 - 0x6B8B9C)]
1CBF16:  CMP             R1, #0
1CBF18:  BEQ.W           loc_1CC05C; jumptable 001CC04E case 1
1CBF1C:  LDR             R1, =(activeDesc_ptr - 0x1CBF22)
1CBF1E:  ADD             R1, PC; activeDesc_ptr
1CBF20:  LDR             R1, [R1]; activeDesc
1CBF22:  LDR             R6, [R1,#(dword_6B8B18 - 0x6B8B10)]
1CBF24:  LDRB            R1, [R1]
1CBF26:  CBNZ            R1, loc_1CBF40
1CBF28:  STRD.W          R6, R0, [SP,#0x20+var_20]
1CBF2C:  MOVS            R0, #0
1CBF2E:  MOVS            R1, #3
1CBF30:  MOVW            R2, #0x1406
1CBF34:  MOVS            R3, #0
1CBF36:  BLX             glVertexAttribPointer
1CBF3A:  MOVS            R0, #0
1CBF3C:  BLX             glDisableVertexAttribArray
1CBF40:  LDR             R0, =(activeDesc_ptr - 0x1CBF46)
1CBF42:  ADD             R0, PC; activeDesc_ptr
1CBF44:  LDR             R0, [R0]; activeDesc
1CBF46:  LDRB            R0, [R0,#(byte_6B8B24 - 0x6B8B10)]
1CBF48:  CBNZ            R0, loc_1CBF6A
1CBF4A:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CBF58)
1CBF4C:  MOVS            R1, #3
1CBF4E:  MOVW            R2, #0x1406
1CBF52:  MOVS            R3, #0
1CBF54:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CBF56:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CBF58:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer
1CBF5A:  STRD.W          R6, R0, [SP,#0x20+var_20]
1CBF5E:  MOVS            R0, #1
1CBF60:  BLX             glVertexAttribPointer
1CBF64:  MOVS            R0, #1
1CBF66:  BLX             glDisableVertexAttribArray
1CBF6A:  LDR             R0, =(activeDesc_ptr - 0x1CBF70)
1CBF6C:  ADD             R0, PC; activeDesc_ptr
1CBF6E:  LDR             R0, [R0]; activeDesc
1CBF70:  LDRB.W          R0, [R0,#(byte_6B8B38 - 0x6B8B10)]
1CBF74:  CBNZ            R0, loc_1CBF96
1CBF76:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CBF84)
1CBF78:  MOVS            R1, #3
1CBF7A:  MOVW            R2, #0x1406
1CBF7E:  MOVS            R3, #0
1CBF80:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CBF82:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CBF84:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer
1CBF86:  STRD.W          R6, R0, [SP,#0x20+var_20]
1CBF8A:  MOVS            R0, #2
1CBF8C:  BLX             glVertexAttribPointer
1CBF90:  MOVS            R0, #2
1CBF92:  BLX             glDisableVertexAttribArray
1CBF96:  LDR             R0, =(activeDesc_ptr - 0x1CBF9C)
1CBF98:  ADD             R0, PC; activeDesc_ptr
1CBF9A:  LDR             R0, [R0]; activeDesc
1CBF9C:  LDRB.W          R0, [R0,#(byte_6B8B4C - 0x6B8B10)]
1CBFA0:  CBNZ            R0, loc_1CBFC2
1CBFA2:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CBFB0)
1CBFA4:  MOVS            R1, #3
1CBFA6:  MOVW            R2, #0x1406
1CBFAA:  MOVS            R3, #0
1CBFAC:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CBFAE:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CBFB0:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer
1CBFB2:  STRD.W          R6, R0, [SP,#0x20+var_20]
1CBFB6:  MOVS            R0, #3
1CBFB8:  BLX             glVertexAttribPointer
1CBFBC:  MOVS            R0, #3
1CBFBE:  BLX             glDisableVertexAttribArray
1CBFC2:  LDR             R0, =(activeDesc_ptr - 0x1CBFC8)
1CBFC4:  ADD             R0, PC; activeDesc_ptr
1CBFC6:  LDR             R0, [R0]; activeDesc
1CBFC8:  LDRB.W          R0, [R0,#(byte_6B8B60 - 0x6B8B10)]
1CBFCC:  CBNZ            R0, loc_1CBFEE
1CBFCE:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CBFDC)
1CBFD0:  MOVS            R1, #3
1CBFD2:  MOVW            R2, #0x1406
1CBFD6:  MOVS            R3, #0
1CBFD8:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CBFDA:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CBFDC:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer
1CBFDE:  STRD.W          R6, R0, [SP,#0x20+var_20]
1CBFE2:  MOVS            R0, #4
1CBFE4:  BLX             glVertexAttribPointer
1CBFE8:  MOVS            R0, #4
1CBFEA:  BLX             glDisableVertexAttribArray
1CBFEE:  LDR             R0, =(activeDesc_ptr - 0x1CBFF4)
1CBFF0:  ADD             R0, PC; activeDesc_ptr
1CBFF2:  LDR             R0, [R0]; activeDesc
1CBFF4:  LDRB.W          R0, [R0,#(byte_6B8B74 - 0x6B8B10)]
1CBFF8:  CBNZ            R0, loc_1CC01A
1CBFFA:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CC008)
1CBFFC:  MOVS            R1, #3
1CBFFE:  MOVW            R2, #0x1406
1CC002:  MOVS            R3, #0
1CC004:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CC006:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CC008:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer
1CC00A:  STRD.W          R6, R0, [SP,#0x20+var_20]
1CC00E:  MOVS            R0, #5
1CC010:  BLX             glVertexAttribPointer
1CC014:  MOVS            R0, #5
1CC016:  BLX             glDisableVertexAttribArray
1CC01A:  LDR             R0, =(activeDesc_ptr - 0x1CC020)
1CC01C:  ADD             R0, PC; activeDesc_ptr
1CC01E:  LDR             R0, [R0]; activeDesc
1CC020:  LDRB.W          R0, [R0,#(byte_6B8B88 - 0x6B8B10)]
1CC024:  CBNZ            R0, loc_1CC05C; jumptable 001CC04E case 1
1CC026:  LDR             R0, =(_ZN15ES2VertexBuffer12curCPUBufferE_ptr - 0x1CC034)
1CC028:  MOVS            R1, #3
1CC02A:  MOVW            R2, #0x1406
1CC02E:  MOVS            R3, #0
1CC030:  ADD             R0, PC; _ZN15ES2VertexBuffer12curCPUBufferE_ptr
1CC032:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer ...
1CC034:  LDR             R0, [R0]; ES2VertexBuffer::curCPUBuffer
1CC036:  STRD.W          R6, R0, [SP,#0x20+var_20]
1CC03A:  MOVS            R0, #6
1CC03C:  BLX             glVertexAttribPointer
1CC040:  MOVS            R0, #6
1CC042:  BLX             glDisableVertexAttribArray
1CC046:  B               loc_1CC05C; jumptable 001CC04E case 1
1CC048:  CMP.W           R10, #5; switch 6 cases
1CC04C:  BHI             def_1CC04E; jumptable 001CC04E default case
1CC04E:  TBB.W           [PC,R10]; switch jump
1CC052:  DCB 3; jump table for switch statement
1CC053:  DCB 5
1CC054:  DCB 0x11
1CC055:  DCB 0x13
1CC056:  DCB 0x27
1CC057:  DCB 0x29
1CC058:  MOVS            R0, #4; jumptable 001CC04E case 0
1CC05A:  B               loc_1CC05E
1CC05C:  MOVS            R0, #5; jumptable 001CC04E case 1
1CC05E:  MOV             R1, R9; count
1CC060:  MOVW            R2, #0x1403; type
1CC064:  MOV             R3, R8; indices
1CC066:  ADD             SP, SP, #8
1CC068:  POP.W           {R8-R10}
1CC06C:  POP.W           {R4-R7,LR}
1CC070:  B.W             j_glDrawElements
1CC074:  MOVS            R0, #6; jumptable 001CC04E case 2
1CC076:  B               loc_1CC05E
1CC078:  CMP.W           R9, #0; jumptable 001CC04E case 3
1CC07C:  BEQ             def_1CC04E; jumptable 001CC04E default case
1CC07E:  ADD.W           R5, R8, R9
1CC082:  MOVS            R6, #0
1CC084:  MOVS            R0, #6; mode
1CC086:  MOVS            R1, #4; count
1CC088:  MOVW            R2, #0x1403; type
1CC08C:  MOV             R3, R5; indices
1CC08E:  BLX             glDrawElements
1CC092:  ADDS            R6, #4
1CC094:  CMP             R6, R9
1CC096:  BCC             loc_1CC084
1CC098:  ADD             SP, SP, #8; jumptable 001CC04E default case
1CC09A:  POP.W           {R8-R10}
1CC09E:  POP             {R4-R7,PC}
1CC0A0:  MOVS            R0, #1; jumptable 001CC04E case 4
1CC0A2:  B               loc_1CC05E
1CC0A4:  MOVS            R0, #3; jumptable 001CC04E case 5
1CC0A6:  B               loc_1CC05E
