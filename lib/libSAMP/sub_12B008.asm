; =========================================================
; Game Engine Function: sub_12B008
; Address            : 0x12B008 - 0x12B088
; =========================================================

12B008:  PUSH            {R4,R5,R7,LR}
12B00A:  ADD             R7, SP, #8
12B00C:  SUB             SP, SP, #0x10
12B00E:  SUBS            R0, R2, R1
12B010:  MOVS            R5, #0
12B012:  CMP             R0, #6
12B014:  BNE             loc_12B082
12B016:  SUB.W           R0, R7, #-dest; dest
12B01A:  MOVS            R2, #6; n
12B01C:  MOV             R4, R3
12B01E:  BLX             strncpy
12B022:  LDR             R1, =(aX_1 - 0x12B02E); "%x" ...
12B024:  ADD             R2, SP, #0x18+var_14
12B026:  STRB.W          R5, [R7,#var_9]
12B02A:  ADD             R1, PC; "%x" ; format
12B02C:  STR             R5, [SP,#0x18+var_14]
12B02E:  BLX             sscanf
12B032:  CMP             R0, #1
12B034:  BLT             loc_12B080
12B036:  LDR             R0, [SP,#0x18+var_14]
12B038:  MOVS            R5, #1
12B03A:  VLDR            S2, =255.0
12B03E:  UXTB            R1, R0
12B040:  VMOV            S0, R1
12B044:  UBFX.W          R1, R0, #8, #8
12B048:  UBFX.W          R0, R0, #0x10, #8
12B04C:  VMOV            S4, R1
12B050:  VMOV            S6, R0
12B054:  MOV.W           R0, #0x3F800000
12B058:  VCVT.F32.U32    S0, S0
12B05C:  STR             R0, [R4,#0xC]
12B05E:  VCVT.F32.U32    S4, S4
12B062:  VCVT.F32.U32    S6, S6
12B066:  VDIV.F32        S0, S0, S2
12B06A:  VDIV.F32        S4, S4, S2
12B06E:  VDIV.F32        S2, S6, S2
12B072:  VSTR            S2, [R4]
12B076:  VSTR            S4, [R4,#4]
12B07A:  VSTR            S0, [R4,#8]
12B07E:  B               loc_12B082
12B080:  MOVS            R5, #0
12B082:  MOV             R0, R5
12B084:  ADD             SP, SP, #0x10
12B086:  POP             {R4,R5,R7,PC}
