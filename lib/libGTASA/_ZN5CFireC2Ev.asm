; =========================================================
; Game Engine Function: _ZN5CFireC2Ev
; Address            : 0x3F1060 - 0x3F1090
; =========================================================

3F1060:  MOVS            R1, #1
3F1062:  VMOV.I32        Q8, #0
3F1066:  STRH            R1, [R0,#2]
3F1068:  ADDS            R2, R0, #4
3F106A:  LDRB            R1, [R0]
3F106C:  MOV.W           R3, #0x3F800000
3F1070:  VST1.32         {D16-D17}, [R2]
3F1074:  MOVS            R2, #0
3F1076:  AND.W           R1, R1, #0xE0
3F107A:  STRD.W          R2, R2, [R0,#0x14]
3F107E:  ORR.W           R1, R1, #0x14
3F1082:  STR             R3, [R0,#0x1C]
3F1084:  STR             R2, [R0,#0x24]
3F1086:  MOVW            R2, #0x3C64
3F108A:  STRH            R2, [R0,#0x20]
3F108C:  STRB            R1, [R0]
3F108E:  BX              LR
