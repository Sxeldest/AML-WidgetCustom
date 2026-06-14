; =========================================================
; Game Engine Function: sub_F60B0
; Address            : 0xF60B0 - 0xF60FC
; =========================================================

F60B0:  PUSH            {R4,R5,R7,LR}
F60B2:  ADD             R7, SP, #8
F60B4:  MOV             R4, R0
F60B6:  LDR             R0, =(off_234A68 - 0xF60BC)
F60B8:  ADD             R0, PC; off_234A68
F60BA:  LDR             R0, [R0]; dword_23FCE0
F60BC:  LDR             R5, [R0]
F60BE:  MOV             R0, R5
F60C0:  BL              sub_163C02
F60C4:  CBZ             R0, loc_F60E2
F60C6:  VLDR            S0, [R5,#0xAC]
F60CA:  VCMP.F32        S0, #0.0
F60CE:  VMRS            APSR_nzcv, FPSCR
F60D2:  ITTT NE
F60D4:  VLDRNE          S0, [R5,#0xB4]
F60D8:  VCMPNE.F32      S0, #0.0
F60DC:  VMRSNE          APSR_nzcv, FPSCR
F60E0:  BNE             loc_F60EE
F60E2:  MOVS            R1, #0
F60E4:  MOV             R0, R4
F60E6:  POP.W           {R4,R5,R7,LR}
F60EA:  B.W             sub_163C08
F60EE:  LDR             R0, =(byte_237998 - 0xF60F4)
F60F0:  ADD             R0, PC; byte_237998
F60F2:  LDRB            R0, [R0]
F60F4:  CMP             R0, #0
F60F6:  BEQ             loc_F60E2
F60F8:  MOVS            R1, #1
F60FA:  B               loc_F60E4
