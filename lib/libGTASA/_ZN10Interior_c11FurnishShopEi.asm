; =========================================================
; Game Engine Function: _ZN10Interior_c11FurnishShopEi
; Address            : 0x44D9F4 - 0x44DA8E
; =========================================================

44D9F4:  PUSH            {R4-R7,LR}
44D9F6:  ADD             R7, SP, #0xC
44D9F8:  PUSH.W          {R8}
44D9FC:  SUB             SP, SP, #0x10
44D9FE:  MOV             R4, R0
44DA00:  LDR             R0, [R4,#0x14]
44DA02:  STRB.W          R1, [R4,#0x790]
44DA06:  LDRSB.W         R1, [R0,#5]
44DA0A:  CMP             R1, #6
44DA0C:  ITTT LE
44DA0E:  LDRBLE          R0, [R0,#2]
44DA10:  SUBLE           R0, R0, R1
44DA12:  CMPLE           R0, #6
44DA14:  BGE             loc_44DA1E
44DA16:  ADD             SP, SP, #0x10
44DA18:  POP.W           {R8}
44DA1C:  POP             {R4-R7,PC}; int
44DA1E:  MOV.W           R8, #0
44DA22:  MOVS            R6, #2
44DA24:  MOVS            R5, #1
44DA26:  MOV             R0, R4; this
44DA28:  MOVS            R1, #0; int
44DA2A:  MOVS            R2, #0; int
44DA2C:  MOVS            R3, #1; int
44DA2E:  STMEA.W         SP, {R5,R6,R8}
44DA32:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DA36:  LDR             R0, [R4,#0x14]
44DA38:  MOVS            R1, #0; int
44DA3A:  MOVS            R3, #1; int
44DA3C:  LDRB            R0, [R0,#3]
44DA3E:  STMEA.W         SP, {R5,R6,R8}
44DA42:  SUBS            R2, R0, #1; int
44DA44:  MOV             R0, R4; this
44DA46:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DA4A:  LDR             R0, [R4,#0x14]
44DA4C:  MOVS            R2, #0; int
44DA4E:  MOVS            R3, #1; int
44DA50:  LDRB            R0, [R0,#2]
44DA52:  STMEA.W         SP, {R5,R6,R8}
44DA56:  SUBS            R1, R0, #1; int
44DA58:  MOV             R0, R4; this
44DA5A:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DA5E:  LDR             R0, [R4,#0x14]
44DA60:  MOVS            R3, #1; int
44DA62:  LDRB            R1, [R0,#2]
44DA64:  LDRB            R0, [R0,#3]
44DA66:  SUBS            R1, #1; int
44DA68:  STMEA.W         SP, {R5,R6,R8}
44DA6C:  SUBS            R2, R0, #1; int
44DA6E:  MOV             R0, R4; this
44DA70:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DA74:  MOV             R0, R4; this
44DA76:  BLX             j__ZN10Interior_c20Shop_PlaceFixedUnitsEv; Interior_c::Shop_PlaceFixedUnits(void)
44DA7A:  MOV             R0, R4; this
44DA7C:  BLX             j__ZN10Interior_c17Shop_FurnishEdgesEv; Interior_c::Shop_FurnishEdges(void)
44DA80:  MOV             R0, R4; this
44DA82:  ADD             SP, SP, #0x10
44DA84:  POP.W           {R8}
44DA88:  POP.W           {R4-R7,LR}
44DA8C:  B               _ZN10Interior_c18Shop_FurnishAislesEv; Interior_c::Shop_FurnishAisles(void)
