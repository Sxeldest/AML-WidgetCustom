; =========================================================
; Game Engine Function: sub_159938
; Address            : 0x159938 - 0x159A6C
; =========================================================

159938:  PUSH            {R4-R7,LR}
15993A:  ADD             R7, SP, #0xC
15993C:  PUSH.W          {R8-R11}
159940:  SUB             SP, SP, #4
159942:  MOV             R4, R0
159944:  CMP             R1, #0
159946:  BEQ             loc_1599C6
159948:  MOV             R10, R1
15994A:  CMP.W           R1, #0x40000000
15994E:  BCS.W           loc_159A64
159952:  MOV.W           R0, R10,LSL#2; unsigned int
159956:  BLX             j__Znwj; operator new(uint)
15995A:  MOV             R1, R0
15995C:  LDR             R0, [R4]; void *
15995E:  STR             R1, [R4]
159960:  CBZ             R0, loc_159966
159962:  BLX             j__ZdlPv; operator delete(void *)
159966:  MOVS            R0, #0
159968:  MOVS            R1, #0
15996A:  STR.W           R10, [R4,#4]
15996E:  LDR             R2, [R4]
159970:  STR.W           R0, [R2,R1,LSL#2]
159974:  ADDS            R1, #1
159976:  CMP             R10, R1
159978:  BNE             loc_15996E
15997A:  MOV             R6, R4
15997C:  LDR.W           R11, [R6,#8]!
159980:  CMP.W           R11, #0
159984:  BEQ             loc_159A5C
159986:  MOV.W           R0, #0x55555555
15998A:  MOV.W           R1, #0x33333333
15998E:  AND.W           R0, R0, R10,LSR#1
159992:  LDR.W           R8, [R11,#4]
159996:  SUB.W           R0, R10, R0
15999A:  AND.W           R1, R1, R0,LSR#2
15999E:  BIC.W           R0, R0, #0xCCCCCCCC
1599A2:  ADD             R0, R1
1599A4:  MOV.W           R1, #0x1010101
1599A8:  ADD.W           R0, R0, R0,LSR#4
1599AC:  BIC.W           R0, R0, #0xF0F0F0F0
1599B0:  MULS            R0, R1
1599B2:  MOV.W           R9, R0,LSR#24
1599B6:  CMP.W           R9, #1
1599BA:  BHI             loc_1599D6
1599BC:  SUB.W           R0, R10, #1
1599C0:  AND.W           R8, R8, R0
1599C4:  B               loc_1599E4
1599C6:  LDR             R0, [R4]; void *
1599C8:  MOVS            R5, #0
1599CA:  STR             R5, [R4]
1599CC:  CBZ             R0, loc_1599D2
1599CE:  BLX             j__ZdlPv; operator delete(void *)
1599D2:  STR             R5, [R4,#4]
1599D4:  B               loc_159A5C
1599D6:  CMP             R8, R10
1599D8:  BCC             loc_1599E4
1599DA:  MOV             R0, R8
1599DC:  MOV             R1, R10
1599DE:  BLX             sub_221798
1599E2:  MOV             R8, R1
1599E4:  LDR             R0, [R4]
1599E6:  STR.W           R6, [R0,R8,LSL#2]
1599EA:  LDR.W           R6, [R11]
1599EE:  CBZ             R6, loc_159A5C
1599F0:  SUB.W           R12, R10, #1
1599F4:  LDR             R0, [R6,#4]
1599F6:  CMP.W           R9, #1
1599FA:  BHI             loc_159A02
1599FC:  AND.W           R0, R0, R12
159A00:  B               loc_159A12
159A02:  CMP             R0, R10
159A04:  BCC             loc_159A12
159A06:  MOV             R1, R10
159A08:  MOV             R5, R12
159A0A:  BLX             sub_221798
159A0E:  MOV             R12, R5
159A10:  MOV             R0, R1
159A12:  CMP             R0, R8
159A14:  BNE             loc_159A1A
159A16:  MOV             R11, R6
159A18:  B               loc_159A54
159A1A:  LDR             R1, [R4]
159A1C:  LDR.W           R2, [R1,R0,LSL#2]
159A20:  CMP             R2, #0
159A22:  MOV             R2, R6
159A24:  BEQ             loc_159A4C
159A26:  MOV             R1, R2
159A28:  LDR             R2, [R2]
159A2A:  CBZ             R2, loc_159A34
159A2C:  LDR             R3, [R2,#8]
159A2E:  LDR             R5, [R6,#8]
159A30:  CMP             R5, R3
159A32:  BEQ             loc_159A26
159A34:  STR.W           R2, [R11]
159A38:  LDR             R2, [R4]
159A3A:  LDR.W           R2, [R2,R0,LSL#2]
159A3E:  LDR             R2, [R2]
159A40:  STR             R2, [R1]
159A42:  LDR             R1, [R4]
159A44:  LDR.W           R0, [R1,R0,LSL#2]
159A48:  STR             R6, [R0]
159A4A:  B               loc_159A54
159A4C:  STR.W           R11, [R1,R0,LSL#2]
159A50:  MOV             R11, R6
159A52:  MOV             R8, R0
159A54:  LDR.W           R6, [R11]
159A58:  CMP             R6, #0
159A5A:  BNE             loc_1599F4
159A5C:  ADD             SP, SP, #4
159A5E:  POP.W           {R8-R11}
159A62:  POP             {R4-R7,PC}
159A64:  LDR             R0, =(aAllocatorTAllo - 0x159A6A); "allocator<T>::allocate(size_t n) 'n' ex"... ...
159A66:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
159A68:  BL              sub_DC8D4
