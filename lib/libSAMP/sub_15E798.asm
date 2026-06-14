; =========================================================
; Game Engine Function: sub_15E798
; Address            : 0x15E798 - 0x15E7CC
; =========================================================

15E798:  PUSH            {R4,R5,R7,LR}
15E79A:  ADD             R7, SP, #8
15E79C:  MOV             R5, R0
15E79E:  LDR             R0, [R0]
15E7A0:  MOV             R4, R1
15E7A2:  CBNZ            R0, loc_15E7C2
15E7A4:  MOVS            R0, #0x14; unsigned int
15E7A6:  BLX             j__Znwj; operator new(uint)
15E7AA:  VMOV.I32        Q8, #0
15E7AE:  MOV             R1, R0
15E7B0:  MOV.W           R2, #0x3F800000
15E7B4:  VST1.32         {D16-D17}, [R0]!
15E7B8:  STR             R2, [R0]
15E7BA:  MOV             R0, R5
15E7BC:  BL              sub_F6246
15E7C0:  LDR             R0, [R5]
15E7C2:  MOV             R1, R4
15E7C4:  POP.W           {R4,R5,R7,LR}
15E7C8:  B.W             sub_15E7CC
