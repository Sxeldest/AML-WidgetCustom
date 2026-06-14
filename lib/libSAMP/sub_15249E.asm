; =========================================================
; Game Engine Function: sub_15249E
; Address            : 0x15249E - 0x1524F4
; =========================================================

15249E:  PUSH            {R4-R7,LR}
1524A0:  ADD             R7, SP, #0xC
1524A2:  PUSH.W          {R8}
1524A6:  LDRB            R5, [R0,#4]
1524A8:  MOV             R6, R1
1524AA:  MOV             R4, R0
1524AC:  CBZ             R5, loc_1524CC
1524AE:  CBZ             R6, loc_1524BA
1524B0:  MOV             R0, R5
1524B2:  BL              sub_15E4A0
1524B6:  LDRB            R5, [R4,#4]
1524B8:  CBNZ            R0, loc_1524EC
1524BA:  MOV             R0, R4
1524BC:  MOV             R1, R5
1524BE:  MOVS            R2, #0
1524C0:  MOV.W           R8, #0
1524C4:  BL              sub_1524F4
1524C8:  STRB.W          R8, [R4,#4]
1524CC:  CBZ             R6, loc_1524EA
1524CE:  BL              sub_15E484
1524D2:  CBZ             R0, loc_1524EA
1524D4:  BL              sub_15E468
1524D8:  MOV             R5, R0
1524DA:  STRB            R0, [R4,#5]
1524DC:  STRB            R0, [R4,#4]
1524DE:  MOV             R0, R4
1524E0:  MOV             R1, R5
1524E2:  MOVS            R2, #1
1524E4:  BL              sub_1524F4
1524E8:  B               loc_1524EC
1524EA:  MOVS            R5, #0
1524EC:  MOV             R0, R5
1524EE:  POP.W           {R8}
1524F2:  POP             {R4-R7,PC}
