; =========================================================
; Game Engine Function: _ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc
; Address            : 0x4428B0 - 0x442938
; =========================================================

4428B0:  PUSH            {R4,R5,R7,LR}
4428B2:  ADD             R7, SP, #8
4428B4:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x4428BE)
4428B6:  MOV.W           R12, #0xFFFFFFFF
4428BA:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
4428BC:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
4428BE:  SUBS            R2, #0x28 ; '('
4428C0:  LDRH.W          LR, [R2,#0x4D]
4428C4:  ADD.W           R12, R12, #1
4428C8:  ADDS            R2, #0x28 ; '('
4428CA:  CMP.W           R12, #0xF9
4428CE:  BHI             loc_4428D6
4428D0:  ANDS.W          R4, LR, #2
4428D4:  BNE             loc_4428C0
4428D6:  CMP.W           R12, #0xF9
4428DA:  ITT HI
4428DC:  MOVHI.W         R0, #0xFFFFFFFF
4428E0:  POPHI           {R4,R5,R7,PC}
4428E2:  MOV.W           R4, #0x3F800000
4428E6:  SUBS            R5, R0, #1
4428E8:  STR             R4, [R2,#0x18]
4428EA:  MOVS            R4, #0
4428EC:  STR             R1, [R2,#4]
4428EE:  MOVS            R1, #1
4428F0:  STRH            R1, [R2,#0x1C]
4428F2:  CMP             R5, #2
4428F4:  STRB.W          R4, [R2,#0x24]
4428F8:  MOV.W           R5, #1
4428FC:  STR             R4, [R2,#0x20]
4428FE:  LDRH            R4, [R2,#0x14]
442900:  IT CC
442902:  MOVCC           R5, #7
442904:  STR             R5, [R2]
442906:  MOV.W           R5, #0x300
44290A:  AND.W           R3, R5, R3,LSL#8
44290E:  MOV.W           R5, #0x3C00
442912:  AND.W           R0, R5, R0,LSL#10
442916:  AND.W           R5, LR, #0xC000
44291A:  ORRS            R0, R5
44291C:  ORRS            R0, R3
44291E:  ORR.W           R0, R0, #3
442922:  STRH.W          R0, [R2,#0x25]
442926:  MOVW            R0, #0xFFFE
44292A:  CMP             R4, R0
44292C:  IT CC
44292E:  ADDCC           R1, R4, #1
442930:  ORR.W           R0, R12, R1,LSL#16
442934:  STRH            R1, [R2,#0x14]
442936:  POP             {R4,R5,R7,PC}
