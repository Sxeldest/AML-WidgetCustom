; =========================================================
; Game Engine Function: _Z9load_filePKc
; Address            : 0x2799C4 - 0x279A86
; =========================================================

2799C4:  PUSH            {R4-R7,LR}
2799C6:  ADD             R7, SP, #0xC
2799C8:  PUSH.W          {R8-R10}
2799CC:  MOV             R1, R0; char *
2799CE:  LDR             R0, =(byte_61CD7E - 0x2799D8)
2799D0:  MOVS            R2, #0; bool
2799D2:  MOVS            R3, #1; bool
2799D4:  ADD             R0, PC; byte_61CD7E ; char *
2799D6:  BLX             j__Z7NvFOpenPKcS0_bb; NvFOpen(char const*,char const*,bool,bool)
2799DA:  MOV             R8, R0
2799DC:  LDR.W           R0, [R8]
2799E0:  CMP             R0, #1
2799E2:  BNE             loc_279A2E
2799E4:  LDR.W           R4, [R8,#4]
2799E8:  MOV             R0, R4; stream
2799EA:  BLX             ftell
2799EE:  MOV             R6, R0
2799F0:  MOV             R0, R4; stream
2799F2:  MOVS            R1, #0; off
2799F4:  MOVS            R2, #2; whence
2799F6:  BLX             fseek
2799FA:  MOV             R0, R4; stream
2799FC:  BLX             ftell
279A00:  MOV             R5, R0
279A02:  MOV             R0, R4; stream
279A04:  MOV             R1, R6; off
279A06:  MOVS            R2, #0; whence
279A08:  BLX             fseek
279A0C:  ADDS            R0, R5, #1; unsigned int
279A0E:  BLX             _Znaj; operator new[](uint)
279A12:  MOVS            R1, #1; size
279A14:  MOV             R2, R5; n
279A16:  MOV             R3, R4; stream
279A18:  MOV             R6, R0
279A1A:  BLX             fread
279A1E:  LDRD.W          R0, R4, [R8]
279A22:  CMP             R0, #1
279A24:  BNE             loc_279A6E
279A26:  MOV             R0, R4; stream
279A28:  BLX             fclose
279A2C:  B               loc_279A74
279A2E:  LDR.W           R4, [R8,#4]
279A32:  MOV             R0, R4; asset
279A34:  BLX             AAsset_getLength
279A38:  MOV             R5, R0
279A3A:  ADDS            R0, R5, #1; unsigned int
279A3C:  BLX             _Znaj; operator new[](uint)
279A40:  MOV             R6, R0
279A42:  MOV             R0, R4; asset
279A44:  BLX             AAsset_getLength
279A48:  MOV             R9, R0
279A4A:  MOV             R0, R4; asset
279A4C:  BLX             AAsset_getLength
279A50:  MOV             R10, R0
279A52:  MOV             R0, R4; asset
279A54:  BLX             AAsset_getRemainingLength
279A58:  SUB.W           R0, R0, R10
279A5C:  MOV             R1, R6; buf
279A5E:  ADD.W           R2, R0, R9
279A62:  MOV             R0, R4; asset
279A64:  CMP             R5, R2
279A66:  IT LE
279A68:  MOVLE           R2, R5; count
279A6A:  BLX             AAsset_read
279A6E:  MOV             R0, R4; asset
279A70:  BLX             AAsset_close
279A74:  MOV             R0, R8; p
279A76:  BLX             free
279A7A:  MOVS            R0, #0
279A7C:  STRB            R0, [R6,R5]
279A7E:  MOV             R0, R6
279A80:  POP.W           {R8-R10}
279A84:  POP             {R4-R7,PC}
