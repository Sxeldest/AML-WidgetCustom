; =========================================================
; Game Engine Function: sub_7ABA8
; Address            : 0x7ABA8 - 0x7AC5A
; =========================================================

7ABA8:  PUSH            {R4-R7,LR}
7ABAA:  ADD             R7, SP, #0xC
7ABAC:  PUSH.W          {R8}
7ABB0:  VPUSH           {D8}
7ABB4:  BL              sub_6C808
7ABB8:  CBZ             R0, loc_7ABD4
7ABBA:  LDR             R0, =(off_114AD8 - 0x7ABC0)
7ABBC:  ADD             R0, PC; off_114AD8
7ABBE:  LDR             R0, [R0]; dword_1A4434
7ABC0:  LDR             R0, [R0]
7ABC2:  CBZ             R0, loc_7ABD4
7ABC4:  LDR.W           R0, [R0,#0x3B0]
7ABC8:  LDR             R1, [R0]
7ABCA:  CMP             R1, #0
7ABCC:  ITT NE
7ABCE:  LDRNE           R6, [R0,#4]
7ABD0:  CMPNE           R6, #0
7ABD2:  BNE             loc_7ABE0
7ABD4:  MOVS            R0, #0
7ABD6:  VPOP            {D8}
7ABDA:  POP.W           {R8}
7ABDE:  POP             {R4-R7,PC}
7ABE0:  BL              sub_6C844
7ABE4:  LDR.W           R8, [R0,#8]
7ABE8:  CMP.W           R8, #0
7ABEC:  BNE             loc_7AC1E
7ABEE:  MOV             R5, R0
7ABF0:  MOV.W           R0, #0x2F0; unsigned int
7ABF4:  BLX             j__Znwj; operator new(uint)
7ABF8:  MOV             R8, R0
7ABFA:  LDR             R0, =(off_114AB0 - 0x7AC02)
7ABFC:  LDR             R1, =(_ZTV10CPlayerPed - 0x7AC04); `vtable for'CPlayerPed ...
7ABFE:  ADD             R0, PC; off_114AB0
7AC00:  ADD             R1, PC; `vtable for'CPlayerPed
7AC02:  LDR             R0, [R0]; dword_1A4408
7AC04:  ADDS            R1, #8
7AC06:  STR.W           R1, [R8]
7AC0A:  MOV             R1, #0x103B89
7AC12:  LDR             R0, [R0]
7AC14:  ADD             R1, R0
7AC16:  MOV             R0, R8
7AC18:  BLX             R1
7AC1A:  STR.W           R8, [R5,#8]
7AC1E:  VMOV.F32        S16, #5.0
7AC22:  MOVW            R0, #0x9C40
7AC26:  ADDS            R5, R6, R0
7AC28:  MOVS            R4, #0
7AC2A:  B               loc_7AC34
7AC2C:  ADDS            R4, #1
7AC2E:  CMP.W           R4, #0x7D0
7AC32:  BEQ             loc_7ABD4
7AC34:  LDRB            R0, [R5,R4]
7AC36:  CMP             R0, #0
7AC38:  ITT NE
7AC3A:  LDRNE.W         R1, [R6,R4,LSL#2]
7AC3E:  CMPNE           R1, #0
7AC40:  BEQ             loc_7AC2C
7AC42:  MOV             R0, R8
7AC44:  BL              sub_6284C
7AC48:  VMOV            S0, R0
7AC4C:  VCMP.F32        S0, S16
7AC50:  VMRS            APSR_nzcv, FPSCR
7AC54:  BPL             loc_7AC2C
7AC56:  MOVS            R0, #1
7AC58:  B               loc_7ABD6
