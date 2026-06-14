; =========================================================
; Game Engine Function: sub_13D66C
; Address            : 0x13D66C - 0x13D6C0
; =========================================================

13D66C:  PUSH            {R4-R7,LR}
13D66E:  ADD             R7, SP, #0xC
13D670:  PUSH.W          {R8}
13D674:  SUB             SP, SP, #0x10
13D676:  MOV             R5, R3
13D678:  MOV             R6, R2
13D67A:  MOV             R4, R1
13D67C:  MOV             R8, R0
13D67E:  BL              sub_167F4C
13D682:  LDR.W           R0, [R0,#0x8C]
13D686:  MOVW            R3, #0xFFFF
13D68A:  VLDR            S0, [R4,#0x74]
13D68E:  MOVT            R3, #0x7F7F; int
13D692:  LDR             R0, [R0,#0x3C]
13D694:  VCMP.F32        S0, #0.0
13D698:  VMRS            APSR_nzcv, FPSCR
13D69C:  LDR             R1, [R0]; int
13D69E:  IT EQ
13D6A0:  VLDREQ          S0, [R1,#0x10]
13D6A4:  VMOV            R2, S0; int
13D6A8:  MOVS            R0, #0
13D6AA:  STRD.W          R0, R6, [SP,#0x20+var_20]; float
13D6AE:  STRD.W          R5, R0, [SP,#0x20+var_18]; int
13D6B2:  MOV             R0, R8; int
13D6B4:  BL              sub_178B18
13D6B8:  ADD             SP, SP, #0x10
13D6BA:  POP.W           {R8}
13D6BE:  POP             {R4-R7,PC}
