; =========================================================
; Game Engine Function: sub_E2768
; Address            : 0xE2768 - 0xE27E6
; =========================================================

E2768:  PUSH            {R4-R7,LR}
E276A:  ADD             R7, SP, #0xC
E276C:  PUSH.W          {R8-R10}
E2770:  SUB             SP, SP, #0x18
E2772:  MOV             R9, R1
E2774:  MOV             R8, R0
E2776:  LDRD.W          R0, R1, [R3]
E277A:  CMP             R1, R2
E277C:  LDRB.W          R10, [R3,#8]
E2780:  MOV             R6, R2
E2782:  IT CC
E2784:  MOVCC           R6, R1
E2786:  CMP.W           R1, #0xFFFFFFFF
E278A:  IT LE
E278C:  MOVLE           R6, R2
E278E:  MOV             R4, R3
E2790:  MOV             R5, R2
E2792:  CBZ             R0, loc_E27A8
E2794:  MOVS            R0, #0
E2796:  CMP.W           R10, #0x12
E279A:  BNE             loc_E27AC
E279C:  MOV             R1, R9
E279E:  MOV             R2, R5
E27A0:  BL              sub_E27E6
E27A4:  MOV             R3, R0
E27A6:  B               loc_E27BA
E27A8:  MOVS            R3, #0
E27AA:  B               loc_E27BA
E27AC:  ADD             R2, SP, #0x30+var_2C
E27AE:  STR             R0, [SP,#0x30+var_2C]
E27B0:  MOV             R0, R9
E27B2:  MOV             R1, R6
E27B4:  BL              sub_E2B90
E27B8:  LDR             R3, [SP,#0x30+var_2C]
E27BA:  SUB.W           R0, R10, #0x12
E27BE:  MOV             R1, R4
E27C0:  CLZ.W           R0, R0
E27C4:  MOV             R2, R6
E27C6:  STRD.W          R9, R6, [SP,#0x30+var_20]
E27CA:  LSRS            R0, R0, #5
E27CC:  STRD.W          R9, R5, [SP,#0x30+var_28]
E27D0:  STRB.W          R0, [SP,#0x30+var_2C]
E27D4:  ADD             R0, SP, #0x30+var_2C
E27D6:  STR             R0, [SP,#0x30+var_30]
E27D8:  MOV             R0, R8
E27DA:  BL              sub_E284C
E27DE:  ADD             SP, SP, #0x18
E27E0:  POP.W           {R8-R10}
E27E4:  POP             {R4-R7,PC}
