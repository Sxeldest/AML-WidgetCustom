; =========================================================
; Game Engine Function: sub_11FBE8
; Address            : 0x11FBE8 - 0x11FCC6
; =========================================================

11FBE8:  PUSH            {R4-R7,LR}
11FBEA:  ADD             R7, SP, #0xC
11FBEC:  PUSH.W          {R8,R9,R11}
11FBF0:  VPUSH           {D8}
11FBF4:  SUB             SP, SP, #8
11FBF6:  LDR             R5, [R7,#arg_4]
11FBF8:  MOV             R8, R3
11FBFA:  VLDR            S16, [R7,#arg_0]
11FBFE:  MOV             R9, R2
11FC00:  MOV             R6, R1
11FC02:  MOV             R4, R0
11FC04:  CBZ             R5, loc_11FC22
11FC06:  VMOV            R3, S16
11FC0A:  LDR             R4, [R4]
11FC0C:  MOV             R0, R6
11FC0E:  MOV             R1, R9
11FC10:  MOV             R2, R8
11FC12:  STR             R5, [SP,#0x28+var_28]
11FC14:  BLX             R4
11FC16:  ADD             SP, SP, #8
11FC18:  VPOP            {D8}
11FC1C:  POP.W           {R8,R9,R11}
11FC20:  POP             {R4-R7,PC}
11FC22:  ADD.W           R0, R6, #0x20 ; ' '
11FC26:  BL              sub_163DB0
11FC2A:  CMP             R0, #0
11FC2C:  BEQ             loc_11FC06
11FC2E:  LDR             R0, [R6,#0xC]
11FC30:  CBZ             R0, loc_11FC62
11FC32:  LDR             R1, [R0]
11FC34:  CBZ             R1, loc_11FC7C
11FC36:  LDR             R0, [R6,#0x10]
11FC38:  CBZ             R0, loc_11FC3E
11FC3A:  LDR             R1, [R0]
11FC3C:  CBZ             R1, loc_11FC8A
11FC3E:  LDR             R1, [R6,#0x14]
11FC40:  CBZ             R1, loc_11FC46
11FC42:  LDR             R0, [R1]
11FC44:  CBZ             R0, loc_11FCA8
11FC46:  LDR             R1, [R6,#0x18]
11FC48:  CBZ             R1, loc_11FC4E
11FC4A:  LDR             R0, [R1]
11FC4C:  CBZ             R0, loc_11FCAE
11FC4E:  VMOV            R3, S16
11FC52:  LDR             R5, [R4]
11FC54:  MOVS            R0, #0
11FC56:  MOV             R1, R9
11FC58:  STR             R0, [SP,#0x28+var_28]
11FC5A:  MOV             R0, R6
11FC5C:  MOV             R2, R8
11FC5E:  BLX             R5
11FC60:  B               loc_11FC16
11FC62:  LDR             R1, =(aFixfxemitterbp - 0x11FC6C); "FixFxEmitterBP_c::Render: Missed raster"... ...
11FC64:  MOVS            R0, #2; int
11FC66:  MOVS            R2, #0x38 ; '8'
11FC68:  ADD             R1, PC; "FixFxEmitterBP_c::Render: Missed raster"...
11FC6A:  ADD             SP, SP, #8
11FC6C:  VPOP            {D8}
11FC70:  POP.W           {R8,R9,R11}
11FC74:  POP.W           {R4-R7,LR}
11FC78:  B.W             sub_ED4F8
11FC7C:  LDR             R1, =(aFixfxemitterbp_0 - 0x11FC8A); "FixFxEmitterBP_c::Render: Missed raster"... ...
11FC7E:  ADD.W           R3, R0, #0x10
11FC82:  MOVS            R0, #2
11FC84:  MOVS            R2, #0x3F ; '?'
11FC86:  ADD             R1, PC; "FixFxEmitterBP_c::Render: Missed raster"...
11FC88:  B               loc_11FC96
11FC8A:  LDR             R1, =(aFixfxemitterbp_1 - 0x11FC98); "FixFxEmitterBP_c::Render: Missed raster"... ...
11FC8C:  ADD.W           R3, R0, #0x10
11FC90:  MOVS            R0, #2
11FC92:  MOVS            R2, #0x3D ; '='
11FC94:  ADD             R1, PC; "FixFxEmitterBP_c::Render: Missed raster"...
11FC96:  ADD             SP, SP, #8
11FC98:  VPOP            {D8}
11FC9C:  POP.W           {R8,R9,R11}
11FCA0:  POP.W           {R4-R7,LR}
11FCA4:  B.W             sub_1200F0
11FCA8:  LDR             R0, =(aFixfxemitterbp_2 - 0x11FCAE); "FixFxEmitterBP_c::Render: Missed raster"... ...
11FCAA:  ADD             R0, PC; "FixFxEmitterBP_c::Render: Missed raster"...
11FCAC:  B               loc_11FCB2
11FCAE:  LDR             R0, =(aFixfxemitterbp_3 - 0x11FCB4); "FixFxEmitterBP_c::Render: Missed raster"... ...
11FCB0:  ADD             R0, PC; "FixFxEmitterBP_c::Render: Missed raster"...
11FCB2:  ADDS            R1, #0x10
11FCB4:  ADD             SP, SP, #8
11FCB6:  VPOP            {D8}
11FCBA:  POP.W           {R8,R9,R11}
11FCBE:  POP.W           {R4-R7,LR}
11FCC2:  B.W             sub_11FD44
