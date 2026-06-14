; =========================================================
; Game Engine Function: _ZN7CCamera23GetArrPosForVehicleTypeEiRi
; Address            : 0x3D4908 - 0x3D4920
; =========================================================

3D4908:  SUBS            R0, R1, #1
3D490A:  CMP             R0, #4
3D490C:  ITT HI
3D490E:  MOVHI           R0, #0
3D4910:  BXHI            LR
3D4912:  LDR             R1, =(unk_616AE0 - 0x3D4918)
3D4914:  ADD             R1, PC; unk_616AE0
3D4916:  LDR.W           R0, [R1,R0,LSL#2]
3D491A:  STR             R0, [R2]
3D491C:  MOVS            R0, #1
3D491E:  BX              LR
