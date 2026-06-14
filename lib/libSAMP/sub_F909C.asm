; =========================================================
; Game Engine Function: sub_F909C
; Address            : 0xF909C - 0xF90FE
; =========================================================

F909C:  PUSH            {R4-R7,LR}
F909E:  ADD             R7, SP, #0xC
F90A0:  PUSH.W          {R8}
F90A4:  MOV             R6, R0
F90A6:  LDR             R0, [R0,#4]
F90A8:  CBZ             R0, loc_F90F6
F90AA:  MOV             R5, R1
F90AC:  LDR             R1, =(off_23494C - 0xF90B8)
F90AE:  MOVW            R3, #0x7D24
F90B2:  MOV             R8, R2
F90B4:  ADD             R1, PC; off_23494C
F90B6:  LDR             R2, [R0]
F90B8:  MOVT            R3, #0x66 ; 'f'
F90BC:  LDR             R4, [R1]; dword_23DF24
F90BE:  LDR             R1, [R4]
F90C0:  ADD             R1, R3
F90C2:  CMP             R2, R1
F90C4:  BEQ             loc_F90F6
F90C6:  LDRH            R0, [R0,#0x26]
F90C8:  BL              sub_108E24
F90CC:  VMOV            S0, R0
F90D0:  VCMP.F32        S0, #0.0
F90D4:  VMRS            APSR_nzcv, FPSCR
F90D8:  BLS             loc_F90F6
F90DA:  MOVW            R1, #:lower16:unk_2DEAE1
F90DE:  LDR             R0, [R4]
F90E0:  MOVT            R1, #:upper16:unk_2DEAE1
F90E4:  LDR             R2, [R6,#4]
F90E6:  ADDS            R3, R0, R1
F90E8:  MOV             R0, R5
F90EA:  MOV             R1, R8
F90EC:  POP.W           {R8}
F90F0:  POP.W           {R4-R7,LR}
F90F4:  BX              R3
F90F6:  MOVS            R0, #0
F90F8:  POP.W           {R8}
F90FC:  POP             {R4-R7,PC}
