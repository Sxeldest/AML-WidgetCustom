; =========================================================
; Game Engine Function: sub_111F74
; Address            : 0x111F74 - 0x111FB6
; =========================================================

111F74:  PUSH            {R4-R7,LR}
111F76:  ADD             R7, SP, #0xC
111F78:  PUSH.W          {R11}
111F7C:  MOV             R4, R0
111F7E:  MOVS            R0, #0
111F80:  MOV             R6, R2
111F82:  MOV             R5, R1
111F84:  STRD.W          R0, R3, [R4,#0xC]
111F88:  CBZ             R1, loc_111F96
111F8A:  CMP.W           R5, #0x20000000
111F8E:  BCS             loc_111FAE
111F90:  LSLS            R0, R5, #3; unsigned int
111F92:  BLX             j__Znwj; operator new(uint)
111F96:  ADD.W           R1, R0, R6,LSL#3
111F9A:  ADD.W           R2, R0, R5,LSL#3
111F9E:  STRD.W          R0, R1, [R4]
111FA2:  MOV             R0, R4
111FA4:  STRD.W          R1, R2, [R4,#8]
111FA8:  POP.W           {R11}
111FAC:  POP             {R4-R7,PC}
111FAE:  LDR             R0, =(aAllocatorTAllo - 0x111FB4); "allocator<T>::allocate(size_t n) 'n' ex"... ...
111FB0:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
111FB2:  BL              sub_DC8D4
