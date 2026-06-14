; =========================================================
; Game Engine Function: sub_101A1C
; Address            : 0x101A1C - 0x101AF6
; =========================================================

101A1C:  PUSH            {R4-R7,LR}
101A1E:  ADD             R7, SP, #0xC
101A20:  PUSH.W          {R8,R9,R11}
101A24:  LDR             R1, =(word_25B202 - 0x101A30)
101A26:  MOV             R8, R0
101A28:  LDR             R2, =(_ZTV7CObject - 0x101A32); `vtable for'CObject ...
101A2A:  LDR             R0, [R0,#8]
101A2C:  ADD             R1, PC; word_25B202
101A2E:  ADD             R2, PC; `vtable for'CObject
101A30:  LDR.W           R3, [R8,#0x2C0]
101A34:  ADDS            R2, #8
101A36:  STR.W           R2, [R8]
101A3A:  STRH            R3, [R1]
101A3C:  BL              sub_108324
101A40:  LDR             R1, =(off_234970 - 0x101A4A)
101A42:  STR.W           R0, [R8,#4]
101A46:  ADD             R1, PC; off_234970
101A48:  LDR             R4, [R1]; dword_23DEF0
101A4A:  LDR             R1, [R4]
101A4C:  LDR             R1, [R1,#4]
101A4E:  CBZ             R1, loc_101A68
101A50:  MOV             R0, R1
101A52:  BL              sub_F88F4
101A56:  CMP             R0, R8
101A58:  BNE             loc_101A64
101A5A:  LDR             R0, [R4]
101A5C:  LDR             R0, [R0,#4]
101A5E:  MOVS            R1, #0
101A60:  BL              sub_F885C
101A64:  LDR.W           R0, [R8,#4]
101A68:  CBZ             R0, loc_101ABA
101A6A:  LDR             R1, =(off_23494C - 0x101A7A)
101A6C:  MOVW            R2, #0x7D24
101A70:  LDR             R0, [R0]
101A72:  MOVT            R2, #0x66 ; 'f'
101A76:  ADD             R1, PC; off_23494C
101A78:  LDR             R1, [R1]; dword_23DF24
101A7A:  LDR             R1, [R1]
101A7C:  ADD             R1, R2
101A7E:  CMP             R0, R1
101A80:  BEQ             loc_101ABA
101A82:  MOV             R0, R8
101A84:  BL              sub_F8E0E
101A88:  CBZ             R0, loc_101A9A
101A8A:  LDR.W           R0, [R8,#4]
101A8E:  CBZ             R0, loc_101A9A
101A90:  LDR             R1, [R0,#0x18]
101A92:  CBZ             R1, loc_101A9A
101A94:  LDR             R1, [R0]
101A96:  LDR             R1, [R1,#0x24]
101A98:  BLX             R1
101A9A:  LDR.W           R1, [R8,#8]
101A9E:  LDR             R0, =(unk_B340A - 0x101AA4)
101AA0:  ADD             R0, PC; unk_B340A
101AA2:  BL              sub_107188
101AA6:  LDR.W           R0, [R8,#0x2C0]
101AAA:  BL              sub_108454
101AAE:  CBNZ            R0, loc_101ABA
101AB0:  LDR.W           R0, [R8,#0x2C0]
101AB4:  MOVS            R1, #0
101AB6:  BL              sub_F9D44
101ABA:  LDR             R6, =(dword_25B204 - 0x101AC6)
101ABC:  MOV.W           R9, #0
101AC0:  MOVS            R4, #0
101AC2:  ADD             R6, PC; dword_25B204
101AC4:  ADD.W           R5, R8, R4,LSL#2
101AC8:  LDR             R0, [R5,#0x2C]
101ACA:  CBZ             R0, loc_101ADA
101ACC:  LDR             R1, [R6]
101ACE:  CMP             R0, R1
101AD0:  BEQ             loc_101ADA
101AD2:  BL              sub_108CB8
101AD6:  STR.W           R9, [R5,#0x2C]
101ADA:  LDR.W           R0, [R5,#0xF0]; void *
101ADE:  CBZ             R0, loc_101AE8
101AE0:  BLX             j__ZdlPv; operator delete(void *)
101AE4:  STR.W           R9, [R5,#0xF0]
101AE8:  ADDS            R4, #1
101AEA:  CMP             R4, #0x10
101AEC:  BNE             loc_101AC4
101AEE:  MOV             R0, R8
101AF0:  POP.W           {R8,R9,R11}
101AF4:  POP             {R4-R7,PC}
