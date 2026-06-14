; =========================================================
; Game Engine Function: sub_103EF4
; Address            : 0x103EF4 - 0x103FDE
; =========================================================

103EF4:  PUSH            {R4,R6,R7,LR}
103EF6:  ADD             R7, SP, #8
103EF8:  SUB             SP, SP, #0x18
103EFA:  MOV             R4, R0
103EFC:  LDR             R0, =(_ZTV10CPlayerPed - 0x103F04); `vtable for'CPlayerPed ...
103EFE:  LDR             R1, =(aAxl - 0x103F0A); "AXL" ...
103F00:  ADD             R0, PC; `vtable for'CPlayerPed
103F02:  LDR             R2, =(aDestroyingPlay - 0x103F0C); "Destroying PlayerPed(%d)" ...
103F04:  ADDS            R0, #8
103F06:  ADD             R1, PC; "AXL"
103F08:  ADD             R2, PC; "Destroying PlayerPed(%d)"
103F0A:  LDRB.W          R3, [R4,#0x60]
103F0E:  STR             R0, [R4]
103F10:  MOVS            R0, #4; prio
103F12:  BLX             __android_log_print
103F16:  LDRB.W          R0, [R4,#0x60]
103F1A:  MOVS            R1, #0
103F1C:  BL              sub_108D34
103F20:  LDR             R0, [R4,#0x5C]
103F22:  CBZ             R0, loc_103F46
103F24:  LDR             R0, [R4,#8]
103F26:  BL              sub_1082F4
103F2A:  CBZ             R0, loc_103F46
103F2C:  LDR             R0, =(off_23494C - 0x103F3C)
103F2E:  MOVW            R2, #0x7D24
103F32:  LDR             R1, [R4,#0x5C]
103F34:  MOVT            R2, #0x66 ; 'f'
103F38:  ADD             R0, PC; off_23494C
103F3A:  LDR             R0, [R0]; dword_23DF24
103F3C:  LDR             R1, [R1]
103F3E:  LDR             R0, [R0]
103F40:  ADD             R0, R2
103F42:  CMP             R1, R0
103F44:  BNE             loc_103F58
103F46:  MOVS            R0, #0
103F48:  STR             R0, [R4,#8]
103F4A:  MOVS            R0, #0
103F4C:  STRD.W          R0, R0, [R4,#0x58]
103F50:  STR             R0, [R4,#4]
103F52:  MOV             R0, R4
103F54:  ADD             SP, SP, #0x18
103F56:  POP             {R4,R6,R7,PC}
103F58:  LDR             R1, [R4,#0x68]
103F5A:  CBZ             R1, loc_103F8A
103F5C:  LDR             R0, =(unk_B369A - 0x103F66)
103F5E:  VMOV.I32        D16, #0
103F62:  ADD             R0, PC; unk_B369A
103F64:  VMOV            R2, R3, D16
103F68:  MOV.W           R12, #0
103F6C:  STRD.W          R12, R12, [SP,#0x20+var_20]
103F70:  STRD.W          R12, R12, [SP,#0x20+var_18]
103F74:  STR.W           R12, [SP,#0x20+var_10]
103F78:  BL              sub_107188
103F7C:  LDR             R1, [R4,#0x68]
103F7E:  LDR             R0, =(unk_B36AE - 0x103F84)
103F80:  ADD             R0, PC; unk_B36AE
103F82:  BL              sub_107188
103F86:  MOVS            R0, #0
103F88:  STR             R0, [R4,#0x68]
103F8A:  LDRB.W          R0, [R4,#0x74]
103F8E:  CBNZ            R0, loc_103FA8
103F90:  ADD.W           R0, R4, #0x75 ; 'u'
103F94:  MOVS            R2, #0
103F96:  MOV             R1, R2
103F98:  CMP             R2, #9
103F9A:  BEQ             loc_103FA4
103F9C:  LDRB            R3, [R0,R1]
103F9E:  ADDS            R2, R1, #1
103FA0:  CMP             R3, #0
103FA2:  BEQ             loc_103F96
103FA4:  CMP             R1, #8
103FA6:  BHI             loc_103FAE
103FA8:  MOV             R0, R4
103FAA:  BL              sub_104026
103FAE:  LDR             R0, [R4,#0x5C]
103FB0:  LDRB.W          R1, [R0,#0x485]
103FB4:  LSLS            R1, R1, #0x1F
103FB6:  BEQ             loc_103FCE
103FB8:  MOVS            R1, #0
103FBA:  MOVS            R3, #0
103FBC:  MOVT            R1, #0x42C8
103FC0:  MOVT            R3, #0x41A0
103FC4:  MOV             R0, R4
103FC6:  MOV             R2, R1
103FC8:  BL              sub_104098
103FCC:  LDR             R0, [R4,#0x5C]
103FCE:  LDR.W           R1, [R0,#0x440]
103FD2:  MOVS            R2, #0
103FD4:  STR             R2, [R1,#0x4C]
103FD6:  LDR             R1, [R0]
103FD8:  LDR             R1, [R1,#4]
103FDA:  BLX             R1
103FDC:  B               loc_103F4A
