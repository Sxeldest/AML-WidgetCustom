; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD22RestoreButtonPositionsEv
; Address            : 0x285CA4 - 0x285DD6
; =========================================================

285CA4:  ADD.W           R1, R0, #0x360
285CA8:  VLD1.32         {D16-D17}, [R1]
285CAC:  ADD.W           R1, R0, #0x380
285CB0:  VLD1.32         {D18-D19}, [R1]
285CB4:  ADD.W           R1, R0, #0x390
285CB8:  VLD1.32         {D20-D21}, [R1]
285CBC:  ADD.W           R1, R0, #0x3A0
285CC0:  VLD1.32         {D22-D23}, [R1]
285CC4:  ADD.W           R1, R0, #0x3B0
285CC8:  VLD1.32         {D24-D25}, [R1]
285CCC:  ADD.W           R1, R0, #0x370
285CD0:  VLD1.32         {D26-D27}, [R1]
285CD4:  ADD.W           R1, R0, #0x98
285CD8:  VST1.32         {D26-D27}, [R1]
285CDC:  ADD.W           R1, R0, #0x70 ; 'p'
285CE0:  VST1.32         {D16-D17}, [R1]
285CE4:  ADD.W           R1, R0, #0xC0
285CE8:  VST1.32         {D18-D19}, [R1]
285CEC:  ADD.W           R1, R0, #0xE8
285CF0:  VST1.32         {D20-D21}, [R1]
285CF4:  ADD.W           R1, R0, #0x110
285CF8:  VST1.32         {D22-D23}, [R1]
285CFC:  ADD.W           R1, R0, #0x138
285D00:  VST1.32         {D24-D25}, [R1]
285D04:  ADD.W           R1, R0, #0x3C0
285D08:  VLD1.32         {D16-D17}, [R1]
285D0C:  ADD.W           R1, R0, #0x160
285D10:  VST1.32         {D16-D17}, [R1]
285D14:  ADD.W           R1, R0, #0x3D0
285D18:  VLD1.32         {D16-D17}, [R1]
285D1C:  ADD.W           R1, R0, #0x188
285D20:  VST1.32         {D16-D17}, [R1]
285D24:  ADD.W           R1, R0, #0x3E0
285D28:  VLD1.32         {D16-D17}, [R1]
285D2C:  ADD.W           R1, R0, #0x1B0
285D30:  VST1.32         {D16-D17}, [R1]
285D34:  ADD.W           R1, R0, #0x3F0
285D38:  VLD1.32         {D16-D17}, [R1]
285D3C:  ADD.W           R1, R0, #0x1D8
285D40:  VST1.32         {D16-D17}, [R1]
285D44:  ADD.W           R1, R0, #0x400
285D48:  VLD1.32         {D16-D17}, [R1]
285D4C:  ADD.W           R1, R0, #0x200
285D50:  VST1.32         {D16-D17}, [R1]
285D54:  ADD.W           R1, R0, #0x410
285D58:  VLD1.32         {D16-D17}, [R1]
285D5C:  ADD.W           R1, R0, #0x228
285D60:  VST1.32         {D16-D17}, [R1]
285D64:  ADD.W           R1, R0, #0x420
285D68:  VLD1.32         {D16-D17}, [R1]
285D6C:  ADD.W           R1, R0, #0x250
285D70:  VST1.32         {D16-D17}, [R1]
285D74:  ADD.W           R1, R0, #0x430
285D78:  VLD1.32         {D16-D17}, [R1]
285D7C:  ADD.W           R1, R0, #0x278
285D80:  VST1.32         {D16-D17}, [R1]
285D84:  ADD.W           R1, R0, #0x440
285D88:  VLD1.32         {D16-D17}, [R1]
285D8C:  ADD.W           R1, R0, #0x2A0
285D90:  VST1.32         {D16-D17}, [R1]
285D94:  ADD.W           R1, R0, #0x450
285D98:  VLD1.32         {D16-D17}, [R1]
285D9C:  ADD.W           R1, R0, #0x2C8
285DA0:  VST1.32         {D16-D17}, [R1]
285DA4:  ADD.W           R1, R0, #0x460
285DA8:  VLD1.32         {D16-D17}, [R1]
285DAC:  ADD.W           R1, R0, #0x2F0
285DB0:  VST1.32         {D16-D17}, [R1]
285DB4:  ADD.W           R1, R0, #0x470
285DB8:  VLD1.32         {D16-D17}, [R1]
285DBC:  ADD.W           R1, R0, #0x318
285DC0:  VST1.32         {D16-D17}, [R1]
285DC4:  ADD.W           R1, R0, #0x480
285DC8:  ADD.W           R0, R0, #0x340
285DCC:  VLD1.32         {D16-D17}, [R1]
285DD0:  VST1.32         {D16-D17}, [R0]
285DD4:  BX              LR
