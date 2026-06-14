; =========================================================
; Game Engine Function: _ZN6CRadar12SetCoordBlipE9eBlipType7CVectorj12eBlipDisplayPc
; Address            : 0x442720 - 0x4427C8
; =========================================================

442720:  PUSH            {R4-R7,LR}
442722:  ADD             R7, SP, #0xC
442724:  PUSH.W          {R8-R10}
442728:  LDR             R5, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442736)
44272A:  MOV.W           LR, #0xFFFFFFFF
44272E:  LDR.W           R8, [R7,#arg_4]
442732:  ADD             R5, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442734:  LDR             R5, [R5]; CRadar::ms_RadarTrace ...
442736:  SUB.W           R12, R5, #0x28 ; '('
44273A:  LDRH.W          R5, [R12,#0x4D]
44273E:  ADD.W           LR, LR, #1
442742:  ADD.W           R12, R12, #0x28 ; '('
442746:  CMP.W           LR, #0xF9
44274A:  BHI             loc_442752
44274C:  ANDS.W          R6, R5, #2
442750:  BNE             loc_44273A
442752:  CMP.W           LR, #0xF9
442756:  BHI             loc_4427BE
442758:  MOV.W           R6, #0x3F800000
44275C:  MOV.W           R10, #0
442760:  STR.W           R6, [R12,#0x18]
442764:  MOVS            R6, #1
442766:  STRH.W          R6, [R12,#0x1C]
44276A:  MOV.W           R9, #8
44276E:  STRB.W          R10, [R12,#0x24]
442772:  STR.W           R10, [R12,#0x20]
442776:  LDRH.W          R4, [R12,#0x14]
44277A:  STRD.W          R9, R10, [R12]
44277E:  ADD.W           R9, R12, #8
442782:  STM.W           R9, {R1-R3}
442786:  MOV.W           R2, #0x3C00
44278A:  MOV.W           R1, #0x300
44278E:  AND.W           R0, R2, R0,LSL#10
442792:  AND.W           R2, R5, #0xC000
442796:  AND.W           R1, R1, R8,LSL#8
44279A:  ORRS            R0, R2
44279C:  ORRS            R0, R1
44279E:  ORR.W           R0, R0, #3
4427A2:  STRH.W          R0, [R12,#0x25]
4427A6:  MOVW            R0, #0xFFFE
4427AA:  CMP             R4, R0
4427AC:  IT CC
4427AE:  ADDCC           R6, R4, #1
4427B0:  STRH.W          R6, [R12,#0x14]
4427B4:  ORR.W           R0, LR, R6,LSL#16
4427B8:  POP.W           {R8-R10}
4427BC:  POP             {R4-R7,PC}
4427BE:  MOV.W           R0, #0xFFFFFFFF
4427C2:  POP.W           {R8-R10}
4427C6:  POP             {R4-R7,PC}
