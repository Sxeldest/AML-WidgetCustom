; =========================================================
; Game Engine Function: _ZN14CCollisionDataC2Ev
; Address            : 0x2E1140 - 0x2E116A
; =========================================================

2E1140:  VMOV.I32        Q8, #0; Alternative name is 'CCollisionData::CCollisionData(void)'
2E1144:  MOVS            R1, #0
2E1146:  ADD.W           R3, R0, #0x18
2E114A:  STRB            R1, [R0,#6]
2E114C:  STRH            R1, [R0,#4]
2E114E:  STR             R1, [R0]
2E1150:  STR             R1, [R0,#0x2C]
2E1152:  LDRB            R2, [R0,#7]
2E1154:  VST1.32         {D16-D17}, [R3]
2E1158:  ADD.W           R3, R0, #8
2E115C:  VST1.32         {D16-D17}, [R3]
2E1160:  STR             R1, [R0,#0x28]
2E1162:  AND.W           R1, R2, #0xF8
2E1166:  STRB            R1, [R0,#7]
2E1168:  BX              LR
