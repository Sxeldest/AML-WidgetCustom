; =========================================================
; Game Engine Function: sub_151AA8
; Address            : 0x151AA8 - 0x151B2E
; =========================================================

151AA8:  PUSH            {R4,R6,R7,LR}
151AAA:  ADD             R7, SP, #8
151AAC:  MOV             R4, R0
151AAE:  BL              sub_17E2E4
151AB2:  LDRB            R1, [R4,#0x13]
151AB4:  CBNZ            R1, loc_151B02
151AB6:  LDRD.W          R2, R1, [R4,#0x20]
151ABA:  SUBS            R0, R0, R1
151ABC:  ADD             R0, R2
151ABE:  LSRS            R1, R0, #3
151AC0:  CMP             R1, #0x7C ; '|'
151AC2:  BLS             loc_151B02
151AC4:  VMOV            S0, R0
151AC8:  VLDR            D17, =1000.0
151ACC:  VCVT.F64.U32    D16, S0
151AD0:  VDIV.F64        D16, D16, D17
151AD4:  VLDR            D17, [R4,#0x18]
151AD8:  VCMP.F64        D16, D17
151ADC:  VMRS            APSR_nzcv, FPSCR
151AE0:  BLT             loc_151AF6
151AE2:  LDRB            R0, [R4,#0x10]
151AE4:  CBZ             R0, loc_151B2A
151AE6:  VMOV            R0, R1, D16; x
151AEA:  VMOV            R2, R3, D17; y
151AEE:  BLX             fmod
151AF2:  VMOV            D16, R0, R1
151AF6:  VMOV            R2, R3, D16
151AFA:  LDR             R0, [R4,#4]
151AFC:  BL              sub_15DF60
151B00:  CBZ             R0, loc_151B26
151B02:  LDR             R0, [R4,#4]
151B04:  LDR             R1, [R0]
151B06:  LDR             R1, [R1,#8]
151B08:  BLX             R1
151B0A:  BL              sub_17E2E4
151B0E:  LDRB            R1, [R4,#0x11]
151B10:  STR             R0, [R4,#0x28]
151B12:  CBZ             R1, loc_151B20
151B14:  LDR             R0, [R4,#4]
151B16:  BL              sub_15DEFA
151B1A:  BL              sub_17E2E4
151B1E:  STR             R0, [R4,#0x2C]
151B20:  MOVS            R0, #1
151B22:  STRB            R0, [R4,#0x12]
151B24:  POP             {R4,R6,R7,PC}
151B26:  MOVS            R0, #1
151B28:  POP             {R4,R6,R7,PC}
151B2A:  MOVS            R0, #0
151B2C:  POP             {R4,R6,R7,PC}
