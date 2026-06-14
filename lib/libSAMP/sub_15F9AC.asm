; =========================================================
; Game Engine Function: sub_15F9AC
; Address            : 0x15F9AC - 0x15FAE0
; =========================================================

15F9AC:  PUSH            {R4-R7,LR}
15F9AE:  ADD             R7, SP, #0xC
15F9B0:  PUSH.W          {R8-R11}
15F9B4:  SUB             SP, SP, #4
15F9B6:  MOV             R4, R0
15F9B8:  CMP             R1, #0
15F9BA:  BEQ             loc_15FA3A
15F9BC:  MOV             R10, R1
15F9BE:  CMP.W           R1, #0x40000000
15F9C2:  BCS.W           loc_15FAD8
15F9C6:  MOV.W           R0, R10,LSL#2; unsigned int
15F9CA:  BLX             j__Znwj; operator new(uint)
15F9CE:  MOV             R1, R0
15F9D0:  LDR             R0, [R4]; void *
15F9D2:  STR             R1, [R4]
15F9D4:  CBZ             R0, loc_15F9DA
15F9D6:  BLX             j__ZdlPv; operator delete(void *)
15F9DA:  MOVS            R0, #0
15F9DC:  MOVS            R1, #0
15F9DE:  STR.W           R10, [R4,#4]
15F9E2:  LDR             R2, [R4]
15F9E4:  STR.W           R0, [R2,R1,LSL#2]
15F9E8:  ADDS            R1, #1
15F9EA:  CMP             R10, R1
15F9EC:  BNE             loc_15F9E2
15F9EE:  MOV             R6, R4
15F9F0:  LDR.W           R11, [R6,#8]!
15F9F4:  CMP.W           R11, #0
15F9F8:  BEQ             loc_15FAD0
15F9FA:  MOV.W           R0, #0x55555555
15F9FE:  MOV.W           R1, #0x33333333
15FA02:  AND.W           R0, R0, R10,LSR#1
15FA06:  LDR.W           R8, [R11,#4]
15FA0A:  SUB.W           R0, R10, R0
15FA0E:  AND.W           R1, R1, R0,LSR#2
15FA12:  BIC.W           R0, R0, #0xCCCCCCCC
15FA16:  ADD             R0, R1
15FA18:  MOV.W           R1, #0x1010101
15FA1C:  ADD.W           R0, R0, R0,LSR#4
15FA20:  BIC.W           R0, R0, #0xF0F0F0F0
15FA24:  MULS            R0, R1
15FA26:  MOV.W           R9, R0,LSR#24
15FA2A:  CMP.W           R9, #1
15FA2E:  BHI             loc_15FA4A
15FA30:  SUB.W           R0, R10, #1
15FA34:  AND.W           R8, R8, R0
15FA38:  B               loc_15FA58
15FA3A:  LDR             R0, [R4]; void *
15FA3C:  MOVS            R5, #0
15FA3E:  STR             R5, [R4]
15FA40:  CBZ             R0, loc_15FA46
15FA42:  BLX             j__ZdlPv; operator delete(void *)
15FA46:  STR             R5, [R4,#4]
15FA48:  B               loc_15FAD0
15FA4A:  CMP             R8, R10
15FA4C:  BCC             loc_15FA58
15FA4E:  MOV             R0, R8
15FA50:  MOV             R1, R10
15FA52:  BLX             sub_221798
15FA56:  MOV             R8, R1
15FA58:  LDR             R0, [R4]
15FA5A:  STR.W           R6, [R0,R8,LSL#2]
15FA5E:  LDR.W           R6, [R11]
15FA62:  CBZ             R6, loc_15FAD0
15FA64:  SUB.W           R12, R10, #1
15FA68:  LDR             R0, [R6,#4]
15FA6A:  CMP.W           R9, #1
15FA6E:  BHI             loc_15FA76
15FA70:  AND.W           R0, R0, R12
15FA74:  B               loc_15FA86
15FA76:  CMP             R0, R10
15FA78:  BCC             loc_15FA86
15FA7A:  MOV             R1, R10
15FA7C:  MOV             R5, R12
15FA7E:  BLX             sub_221798
15FA82:  MOV             R12, R5
15FA84:  MOV             R0, R1
15FA86:  CMP             R0, R8
15FA88:  BNE             loc_15FA8E
15FA8A:  MOV             R11, R6
15FA8C:  B               loc_15FAC8
15FA8E:  LDR             R1, [R4]
15FA90:  LDR.W           R2, [R1,R0,LSL#2]
15FA94:  CMP             R2, #0
15FA96:  MOV             R2, R6
15FA98:  BEQ             loc_15FAC0
15FA9A:  MOV             R1, R2
15FA9C:  LDR             R2, [R2]
15FA9E:  CBZ             R2, loc_15FAA8
15FAA0:  LDR             R3, [R2,#8]
15FAA2:  LDR             R5, [R6,#8]
15FAA4:  CMP             R5, R3
15FAA6:  BEQ             loc_15FA9A
15FAA8:  STR.W           R2, [R11]
15FAAC:  LDR             R2, [R4]
15FAAE:  LDR.W           R2, [R2,R0,LSL#2]
15FAB2:  LDR             R2, [R2]
15FAB4:  STR             R2, [R1]
15FAB6:  LDR             R1, [R4]
15FAB8:  LDR.W           R0, [R1,R0,LSL#2]
15FABC:  STR             R6, [R0]
15FABE:  B               loc_15FAC8
15FAC0:  STR.W           R11, [R1,R0,LSL#2]
15FAC4:  MOV             R11, R6
15FAC6:  MOV             R8, R0
15FAC8:  LDR.W           R6, [R11]
15FACC:  CMP             R6, #0
15FACE:  BNE             loc_15FA68
15FAD0:  ADD             SP, SP, #4
15FAD2:  POP.W           {R8-R11}
15FAD6:  POP             {R4-R7,PC}
15FAD8:  LDR             R0, =(aAllocatorTAllo - 0x15FADE); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15FADA:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15FADC:  BL              sub_DC8D4
