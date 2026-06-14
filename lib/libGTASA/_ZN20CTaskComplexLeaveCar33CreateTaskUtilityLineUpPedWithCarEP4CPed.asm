; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCar33CreateTaskUtilityLineUpPedWithCarEP4CPed
; Address            : 0x4F937E - 0x4F93A8
; =========================================================

4F937E:  PUSH            {R4,R6,R7,LR}
4F9380:  ADD             R7, SP, #8
4F9382:  SUB             SP, SP, #0x10
4F9384:  MOV             R4, R0
4F9386:  MOVS            R0, #0
4F9388:  STRD.W          R0, R0, [SP,#0x18+var_14]
4F938C:  STR             R0, [SP,#0x18+var_C]
4F938E:  MOVS            R0, #0x1C; unsigned int
4F9390:  BLX             _Znwj; operator new(uint)
4F9394:  LDR             R1, [R4,#0x10]
4F9396:  MOVS            R2, #0; int
4F9398:  STR             R1, [SP,#0x18+var_18]; int
4F939A:  ADD             R1, SP, #0x18+var_14; CVector *
4F939C:  MOVS            R3, #0; int
4F939E:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
4F93A2:  STR             R0, [R4,#0x1C]
4F93A4:  ADD             SP, SP, #0x10
4F93A6:  POP             {R4,R6,R7,PC}
