; =========================================================
; Game Engine Function: _ZN20CTaskComplexEnterCar31ComputeTargetDoorOppositeToFlagEv
; Address            : 0x4F64AC - 0x4F64C2
; =========================================================

4F64AC:  LDRB            R1, [R0,#0x10]
4F64AE:  LSLS            R1, R1, #0x1F
4F64B0:  ITT EQ
4F64B2:  MOVEQ           R0, #0
4F64B4:  BXEQ            LR
4F64B6:  LDR             R1, [R0,#0x14]
4F64B8:  MOVS            R0, #0
4F64BA:  CMP             R1, #8
4F64BC:  IT EQ
4F64BE:  MOVEQ           R0, #0xA
4F64C0:  BX              LR
