; =========================================================
; Game Engine Function: _ZN12CMenuManager21AdditionalOptionInputEPhS0_
; Address            : 0x432AB4 - 0x432B46
; =========================================================

432AB4:  PUSH            {R4-R7,LR}
432AB6:  ADD             R7, SP, #0xC
432AB8:  PUSH.W          {R11}
432ABC:  MOV             R5, R0
432ABE:  MOV             R4, R2
432AC0:  LDRB.W          R0, [R5,#0x121]
432AC4:  MOV             R6, R1
432AC6:  CMP             R0, #2
432AC8:  BNE             loc_432B2A
432ACA:  MOVS            R0, #0; this
432ACC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432AD0:  MOVS            R0, #0x4F ; 'O'
432AD2:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
432AD6:  CBZ             R0, loc_432AFC
432AD8:  LDRB            R0, [R5]
432ADA:  CMP             R0, #0x12
432ADC:  BHI             loc_432B0E
432ADE:  LDR             R1, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x432AE8)
432AE0:  ADD.W           R2, R0, R0,LSL#2
432AE4:  ADD             R1, PC; _ZN9CMessages14PreviousBriefsE_ptr
432AE6:  LDR             R1, [R1]; CMessages::PreviousBriefs ...
432AE8:  ADD.W           R1, R1, R2,LSL#3
432AEC:  LDR             R1, [R1,#0x30]
432AEE:  CMP             R1, #0
432AF0:  ITTTT NE
432AF2:  ADDNE           R0, #1
432AF4:  STRBNE          R0, [R5]
432AF6:  MOVNE           R0, #1
432AF8:  STRBNE          R0, [R6]
432AFA:  B               loc_432B0E
432AFC:  MOVS            R0, #0; this
432AFE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432B02:  LDRH            R1, [R0,#0x10]; int
432B04:  CBZ             R1, loc_432B0E
432B06:  LDRH.W          R0, [R0,#0x40]
432B0A:  CMP             R0, #0
432B0C:  BEQ             loc_432AD8
432B0E:  MOVS            R0, #0; this
432B10:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432B14:  MOVS            R0, #0x50 ; 'P'
432B16:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
432B1A:  CBZ             R0, loc_432B30
432B1C:  LDRB            R0, [R5]
432B1E:  CMP             R0, #4
432B20:  ITTTT CS
432B22:  SUBCS           R0, #1
432B24:  STRBCS          R0, [R5]
432B26:  MOVCS           R0, #1
432B28:  STRBCS          R0, [R4]
432B2A:  POP.W           {R11}
432B2E:  POP             {R4-R7,PC}
432B30:  MOVS            R0, #0; this
432B32:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
432B36:  LDRH            R1, [R0,#0x12]
432B38:  CMP             R1, #0
432B3A:  BEQ             loc_432B2A
432B3C:  LDRH.W          R0, [R0,#0x42]
432B40:  CMP             R0, #0
432B42:  BNE             loc_432B2A
432B44:  B               loc_432B1C
