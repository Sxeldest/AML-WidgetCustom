; =========================================================
; Game Engine Function: _ZN5CBoat12AddWakePointE7CVector
; Address            : 0x56CB18 - 0x56CC5C
; =========================================================

56CB18:  PUSH            {R4-R7,LR}
56CB1A:  ADD             R7, SP, #0xC
56CB1C:  PUSH.W          {R8-R10}
56CB20:  VLDR            S0, [R0,#0x48]
56CB24:  ADDW            LR, R0, #0x75C
56CB28:  VLDR            S2, [R0,#0x4C]
56CB2C:  VMUL.F32        S0, S0, S0
56CB30:  VLDR            S4, [R0,#0x50]
56CB34:  VMUL.F32        S2, S2, S2
56CB38:  VMUL.F32        S4, S4, S4
56CB3C:  VADD.F32        S0, S0, S2
56CB40:  VLDR            S2, =100.0
56CB44:  VADD.F32        S0, S0, S4
56CB48:  VSQRT.F32       S0, S0
56CB4C:  VMUL.F32        S0, S0, S2
56CB50:  VCVT.U32.F32    S0, S0
56CB54:  VLDR            S2, [LR]
56CB58:  VCMPE.F32       S2, #0.0
56CB5C:  VMRS            APSR_nzcv, FPSCR
56CB60:  VMOV            R12, S0
56CB64:  BLE             loc_56CBB8
56CB66:  LDR             R5, [R0,#0x14]
56CB68:  ADDW            R9, R0, #0x65C
56CB6C:  LDR             R4, =(_ZN5CBoat17MIN_WAKE_INTERVALE_ptr - 0x56CB84)
56CB6E:  ADD.W           R6, R5, #0x30 ; '0'
56CB72:  CMP             R5, #0
56CB74:  VLDR            D16, [R9]
56CB78:  IT EQ
56CB7A:  ADDEQ           R6, R0, #4
56CB7C:  VLDR            D17, [R6]
56CB80:  ADD             R4, PC; _ZN5CBoat17MIN_WAKE_INTERVALE_ptr
56CB82:  VSUB.F32        D16, D17, D16
56CB86:  LDR             R4, [R4]; CBoat::MIN_WAKE_INTERVAL ...
56CB88:  VLDR            S0, [R4]
56CB8C:  VMUL.F32        D1, D16, D16
56CB90:  VMUL.F32        S0, S0, S0
56CB94:  VADD.F32        S2, S2, S3
56CB98:  VCMPE.F32       S2, S0
56CB9C:  VMRS            APSR_nzcv, FPSCR
56CBA0:  BLE             loc_56CC56
56CBA2:  LDRB.W          R4, [R0,#0x3A]
56CBA6:  CMP             R4, #7
56CBA8:  BHI             loc_56CBDC
56CBAA:  LDRH.W          R8, [R0,#0x658]
56CBAE:  CMP.W           R8, #0x1F
56CBB2:  BCC             loc_56CBF8
56CBB4:  MOVS            R4, #0x1F
56CBB6:  B               loc_56CC00
56CBB8:  LDR             R3, =(_ZN5CBoat13WAKE_LIFETIMEE_ptr - 0x56CBC2)
56CBBA:  STR.W           R1, [R0,#0x65C]
56CBBE:  ADD             R3, PC; _ZN5CBoat13WAKE_LIFETIMEE_ptr
56CBC0:  STR.W           R2, [R0,#0x660]
56CBC4:  STRB.W          R12, [R0,#0x7DC]
56CBC8:  MOVS            R2, #1
56CBCA:  LDR             R1, [R3]; CBoat::WAKE_LIFETIME ...
56CBCC:  LDR             R1, [R1]; CBoat::WAKE_LIFETIME
56CBCE:  STRH.W          R2, [R0,#0x658]
56CBD2:  STR.W           R1, [R0,#0x75C]
56CBD6:  POP.W           {R8-R10}
56CBDA:  POP             {R4-R7,PC}
56CBDC:  LDRB.W          R4, [R0,#0x4A8]
56CBE0:  LDRH.W          R8, [R0,#0x658]
56CBE4:  CMP             R4, #2
56CBE6:  BNE             loc_56CBF2
56CBE8:  CMP.W           R8, #0x14
56CBEC:  BCC             loc_56CBF8
56CBEE:  MOVS            R4, #0x14
56CBF0:  B               loc_56CC00
56CBF2:  CMP.W           R8, #0xE
56CBF6:  BHI             loc_56CBFE
56CBF8:  MOV             R4, R8
56CBFA:  CBNZ            R4, loc_56CC00
56CBFC:  B               loc_56CC34
56CBFE:  MOVS            R4, #0xF
56CC00:  MOV             R6, R4
56CC02:  SUBS            R5, R6, #1
56CC04:  ADD.W           R10, R9, R6,LSL#3
56CC08:  SUBS            R4, #1
56CC0A:  LDR.W           R3, [R9,R5,LSL#3]
56CC0E:  STR.W           R3, [R9,R6,LSL#3]
56CC12:  ADD.W           R3, R9, R5,LSL#3
56CC16:  LDR             R3, [R3,#4]
56CC18:  STR.W           R3, [R10,#4]
56CC1C:  LDR.W           R3, [LR,R5,LSL#2]
56CC20:  STR.W           R3, [LR,R6,LSL#2]
56CC24:  ADDW            R3, R0, #0x7DC
56CC28:  LDRB            R5, [R3,R5]
56CC2A:  STRB            R5, [R3,R6]
56CC2C:  UXTH            R6, R4
56CC2E:  CMP             R6, #0
56CC30:  BNE             loc_56CC02
56CC32:  MOV             R4, R8
56CC34:  LDR             R3, =(_ZN5CBoat13WAKE_LIFETIMEE_ptr - 0x56CC40)
56CC36:  CMP             R4, #0x1F
56CC38:  STR.W           R1, [R0,#0x65C]
56CC3C:  ADD             R3, PC; _ZN5CBoat13WAKE_LIFETIMEE_ptr
56CC3E:  STR.W           R2, [R0,#0x660]
56CC42:  LDR             R3, [R3]; CBoat::WAKE_LIFETIME ...
56CC44:  LDR             R1, [R3]; CBoat::WAKE_LIFETIME
56CC46:  STRB.W          R12, [R0,#0x7DC]
56CC4A:  STR.W           R1, [R0,#0x75C]
56CC4E:  ITT LS
56CC50:  ADDLS           R1, R4, #1
56CC52:  STRHLS.W        R1, [R0,#0x658]
56CC56:  POP.W           {R8-R10}
56CC5A:  POP             {R4-R7,PC}
