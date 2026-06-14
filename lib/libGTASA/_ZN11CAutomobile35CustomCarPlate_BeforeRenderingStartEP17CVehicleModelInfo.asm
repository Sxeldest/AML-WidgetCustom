; =========================================================
; Game Engine Function: _ZN11CAutomobile35CustomCarPlate_BeforeRenderingStartEP17CVehicleModelInfo
; Address            : 0x55BE50 - 0x55BE70
; =========================================================

55BE50:  MOV             R2, R0
55BE52:  LDR             R0, [R1,#0x3C]
55BE54:  CMP             R0, #0
55BE56:  IT EQ
55BE58:  BXEQ            LR
55BE5A:  LDR             R1, =(dword_A01CF8 - 0x55BE62)
55BE5C:  LDR             R3, [R0]
55BE5E:  ADD             R1, PC; dword_A01CF8
55BE60:  STR             R3, [R1]
55BE62:  LDR             R1, [R3,#0x54]
55BE64:  ADDS            R1, #1
55BE66:  STR             R1, [R3,#0x54]
55BE68:  LDR.W           R1, [R2,#0x598]
55BE6C:  B.W             sub_189E70
