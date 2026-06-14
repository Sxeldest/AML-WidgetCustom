; =========================================================
; Game Engine Function: sub_EB63E
; Address            : 0xEB63E - 0xEB6FC
; =========================================================

EB63E:  PUSH            {R4-R7,LR}
EB640:  ADD             R7, SP, #0xC
EB642:  PUSH.W          {R8}
EB646:  SUB             SP, SP, #0x20
EB648:  MOV             R4, R0
EB64A:  LDRD.W          R2, R0, [R0,#4]
EB64E:  CMP             R2, R0
EB650:  BEQ             loc_EB670
EB652:  LDR.W           R0, [R0,#-4]
EB656:  LDRB            R2, [R0]
EB658:  CMP             R2, #2
EB65A:  BNE             loc_EB6B4
EB65C:  LDR             R0, [R0,#8]
EB65E:  BL              sub_EB6FC
EB662:  LDR             R0, [R4,#8]
EB664:  LDR.W           R0, [R0,#-4]
EB668:  LDR             R0, [R0,#8]
EB66A:  LDR             R0, [R0,#4]
EB66C:  SUBS            R0, #0x10
EB66E:  B               loc_EB6F4
EB670:  VLDR            D16, [R1]
EB674:  ADD.W           R8, SP, #0x30+var_20
EB678:  MOVS            R0, #0
EB67A:  VMOV            R2, R3, D16
EB67E:  STRD.W          R0, R0, [SP,#0x30+var_18]
EB682:  STRB.W          R0, [SP,#0x30+var_20]
EB686:  MOV             R0, R8
EB688:  BL              sub_EA660
EB68C:  LDR             R0, [R4]
EB68E:  LDRB.W          R1, [SP,#0x30+var_20]
EB692:  LDRD.W          R3, R5, [R0,#8]
EB696:  LDRB            R2, [R0]
EB698:  STRB            R1, [R0]
EB69A:  LDRD.W          R1, R6, [SP,#0x30+var_18]
EB69E:  STRD.W          R1, R6, [R0,#8]
EB6A2:  MOV             R0, R8
EB6A4:  STRB.W          R2, [SP,#0x30+var_20]
EB6A8:  STRD.W          R3, R5, [SP,#0x30+var_18]
EB6AC:  BL              sub_E3F7A
EB6B0:  LDR             R0, [R4]
EB6B2:  B               loc_EB6F4
EB6B4:  VLDR            D16, [R1]
EB6B8:  MOVS            R0, #0
EB6BA:  MOV             R8, SP
EB6BC:  STRD.W          R0, R0, [SP,#0x30+var_28]
EB6C0:  VMOV            R2, R3, D16
EB6C4:  STRB.W          R0, [SP,#0x30+var_30]
EB6C8:  MOV             R0, R8
EB6CA:  BL              sub_EA660
EB6CE:  LDR             R0, [R4,#0x10]
EB6D0:  LDRB.W          R1, [SP,#0x30+var_30]
EB6D4:  LDRD.W          R3, R6, [R0,#8]
EB6D8:  LDRB            R2, [R0]
EB6DA:  STRB            R1, [R0]
EB6DC:  LDRD.W          R1, R5, [SP,#0x30+var_28]
EB6E0:  STRD.W          R1, R5, [R0,#8]
EB6E4:  MOV             R0, R8
EB6E6:  STRB.W          R2, [SP,#0x30+var_30]
EB6EA:  STRD.W          R3, R6, [SP,#0x30+var_28]
EB6EE:  BL              sub_E3F7A
EB6F2:  LDR             R0, [R4,#0x10]
EB6F4:  ADD             SP, SP, #0x20 ; ' '
EB6F6:  POP.W           {R8}
EB6FA:  POP             {R4-R7,PC}
