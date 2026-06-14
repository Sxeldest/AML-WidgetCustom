; =========================================================
; Game Engine Function: sub_153A6C
; Address            : 0x153A6C - 0x153BA0
; =========================================================

153A6C:  PUSH            {R4-R7,LR}
153A6E:  ADD             R7, SP, #0xC
153A70:  PUSH.W          {R8-R11}
153A74:  SUB             SP, SP, #4
153A76:  MOV             R4, R0
153A78:  CMP             R1, #0
153A7A:  BEQ             loc_153AFA
153A7C:  MOV             R10, R1
153A7E:  CMP.W           R1, #0x40000000
153A82:  BCS.W           loc_153B98
153A86:  MOV.W           R0, R10,LSL#2; unsigned int
153A8A:  BLX             j__Znwj; operator new(uint)
153A8E:  MOV             R1, R0
153A90:  LDR             R0, [R4]; void *
153A92:  STR             R1, [R4]
153A94:  CBZ             R0, loc_153A9A
153A96:  BLX             j__ZdlPv; operator delete(void *)
153A9A:  MOVS            R0, #0
153A9C:  MOVS            R1, #0
153A9E:  STR.W           R10, [R4,#4]
153AA2:  LDR             R2, [R4]
153AA4:  STR.W           R0, [R2,R1,LSL#2]
153AA8:  ADDS            R1, #1
153AAA:  CMP             R10, R1
153AAC:  BNE             loc_153AA2
153AAE:  MOV             R6, R4
153AB0:  LDR.W           R11, [R6,#8]!
153AB4:  CMP.W           R11, #0
153AB8:  BEQ             loc_153B90
153ABA:  MOV.W           R0, #0x55555555
153ABE:  MOV.W           R1, #0x33333333
153AC2:  AND.W           R0, R0, R10,LSR#1
153AC6:  LDR.W           R8, [R11,#4]
153ACA:  SUB.W           R0, R10, R0
153ACE:  AND.W           R1, R1, R0,LSR#2
153AD2:  BIC.W           R0, R0, #0xCCCCCCCC
153AD6:  ADD             R0, R1
153AD8:  MOV.W           R1, #0x1010101
153ADC:  ADD.W           R0, R0, R0,LSR#4
153AE0:  BIC.W           R0, R0, #0xF0F0F0F0
153AE4:  MULS            R0, R1
153AE6:  MOV.W           R9, R0,LSR#24
153AEA:  CMP.W           R9, #1
153AEE:  BHI             loc_153B0A
153AF0:  SUB.W           R0, R10, #1
153AF4:  AND.W           R8, R8, R0
153AF8:  B               loc_153B18
153AFA:  LDR             R0, [R4]; void *
153AFC:  MOVS            R5, #0
153AFE:  STR             R5, [R4]
153B00:  CBZ             R0, loc_153B06
153B02:  BLX             j__ZdlPv; operator delete(void *)
153B06:  STR             R5, [R4,#4]
153B08:  B               loc_153B90
153B0A:  CMP             R8, R10
153B0C:  BCC             loc_153B18
153B0E:  MOV             R0, R8
153B10:  MOV             R1, R10
153B12:  BLX             sub_221798
153B16:  MOV             R8, R1
153B18:  LDR             R0, [R4]
153B1A:  STR.W           R6, [R0,R8,LSL#2]
153B1E:  LDR.W           R6, [R11]
153B22:  CBZ             R6, loc_153B90
153B24:  SUB.W           R12, R10, #1
153B28:  LDR             R0, [R6,#4]
153B2A:  CMP.W           R9, #1
153B2E:  BHI             loc_153B36
153B30:  AND.W           R0, R0, R12
153B34:  B               loc_153B46
153B36:  CMP             R0, R10
153B38:  BCC             loc_153B46
153B3A:  MOV             R1, R10
153B3C:  MOV             R5, R12
153B3E:  BLX             sub_221798
153B42:  MOV             R12, R5
153B44:  MOV             R0, R1
153B46:  CMP             R0, R8
153B48:  BNE             loc_153B4E
153B4A:  MOV             R11, R6
153B4C:  B               loc_153B88
153B4E:  LDR             R1, [R4]
153B50:  LDR.W           R2, [R1,R0,LSL#2]
153B54:  CMP             R2, #0
153B56:  MOV             R2, R6
153B58:  BEQ             loc_153B80
153B5A:  MOV             R1, R2
153B5C:  LDR             R2, [R2]
153B5E:  CBZ             R2, loc_153B68
153B60:  LDRH            R3, [R2,#8]
153B62:  LDRH            R5, [R6,#8]
153B64:  CMP             R5, R3
153B66:  BEQ             loc_153B5A
153B68:  STR.W           R2, [R11]
153B6C:  LDR             R2, [R4]
153B6E:  LDR.W           R2, [R2,R0,LSL#2]
153B72:  LDR             R2, [R2]
153B74:  STR             R2, [R1]
153B76:  LDR             R1, [R4]
153B78:  LDR.W           R0, [R1,R0,LSL#2]
153B7C:  STR             R6, [R0]
153B7E:  B               loc_153B88
153B80:  STR.W           R11, [R1,R0,LSL#2]
153B84:  MOV             R11, R6
153B86:  MOV             R8, R0
153B88:  LDR.W           R6, [R11]
153B8C:  CMP             R6, #0
153B8E:  BNE             loc_153B28
153B90:  ADD             SP, SP, #4
153B92:  POP.W           {R8-R11}
153B96:  POP             {R4-R7,PC}
153B98:  LDR             R0, =(aAllocatorTAllo - 0x153B9E); "allocator<T>::allocate(size_t n) 'n' ex"... ...
153B9A:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
153B9C:  BL              sub_DC8D4
