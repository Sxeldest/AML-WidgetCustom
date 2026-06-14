; =========================================================
; Game Engine Function: _ZN6CRadar22SetShortRangeCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc
; Address            : 0x4427CC - 0x4428A8
; =========================================================

4427CC:  PUSH            {R4-R7,LR}
4427CE:  ADD             R7, SP, #0xC
4427D0:  PUSH.W          {R8-R10}
4427D4:  LDR             R5, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x4427E2)
4427D6:  MOV.W           R12, #0xFFFFFFFF
4427DA:  LDR.W           R8, [R7,#arg_4]
4427DE:  ADD             R5, PC; _ZN6CRadar13ms_RadarTraceE_ptr
4427E0:  LDR             R5, [R5]; CRadar::ms_RadarTrace ...
4427E2:  SUB.W           LR, R5, #0x28 ; '('
4427E6:  LDRH.W          R5, [LR,#0x4D]
4427EA:  ADD.W           R12, R12, #1
4427EE:  ADD.W           LR, LR, #0x28 ; '('
4427F2:  CMP.W           R12, #0xF9
4427F6:  BHI             loc_4427FE
4427F8:  ANDS.W          R6, R5, #2
4427FC:  BNE             loc_4427E6
4427FE:  CMP.W           R12, #0xF9
442802:  BHI             loc_44287A
442804:  MOV.W           R6, #0x3F800000
442808:  MOV.W           R10, #0
44280C:  STR.W           R6, [LR,#0x18]
442810:  MOVS            R6, #1
442812:  STRH.W          R6, [LR,#0x1C]
442816:  MOV.W           R9, #8
44281A:  STRB.W          R10, [LR,#0x24]
44281E:  STR.W           R10, [LR,#0x20]
442822:  LDRH.W          R4, [LR,#0x14]
442826:  STRD.W          R9, R10, [LR]
44282A:  ADD.W           R9, LR, #8
44282E:  STM.W           R9, {R1-R3}
442832:  MOV.W           R1, #0x300
442836:  AND.W           R1, R1, R8,LSL#8
44283A:  BFI.W           R1, R0, #0xA, #4
44283E:  AND.W           R0, R5, #0xC000
442842:  ORRS            R0, R1
442844:  ORR.W           R0, R0, #3
442848:  STRH.W          R0, [LR,#0x25]
44284C:  MOVW            R0, #0xFFFE
442850:  CMP             R4, R0
442852:  IT CC
442854:  ADDCC           R6, R4, #1
442856:  ORR.W           R0, R12, R6,LSL#16
44285A:  STRH.W          R6, [LR,#0x14]
44285E:  ADDS            R1, R0, #1
442860:  BEQ             loc_44287A
442862:  LDRH.W          R1, [LR,#0x14]
442866:  CMP.W           R1, R0,LSR#16
44286A:  BNE             loc_442884
44286C:  LDRB.W          R1, [LR,#0x25]
442870:  LSLS            R1, R1, #0x1E
442872:  IT PL
442874:  MOVPL.W         R12, #0xFFFFFFFF
442878:  B               loc_442888
44287A:  MOV.W           R0, #0xFFFFFFFF
44287E:  POP.W           {R8-R10}
442882:  POP             {R4-R7,PC}
442884:  MOV.W           R12, #0xFFFFFFFF
442888:  LDR             R1, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442892)
44288A:  ADD.W           R2, R12, R12,LSL#2
44288E:  ADD             R1, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442890:  LDR             R1, [R1]; CRadar::ms_RadarTrace ...
442892:  ADD.W           R1, R1, R2,LSL#3
442896:  LDRH.W          R2, [R1,#(word_992691 - 0x99266C)]
44289A:  ORR.W           R2, R2, #4
44289E:  STRH.W          R2, [R1,#(word_992691 - 0x99266C)]
4428A2:  POP.W           {R8-R10}
4428A6:  POP             {R4-R7,PC}
