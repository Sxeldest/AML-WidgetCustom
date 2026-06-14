; =========================================================
; Game Engine Function: _ZN10CGameLogic9ClearSkipEb
; Address            : 0x309A00 - 0x309A5A
; =========================================================

309A00:  LDR             R1, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309A06)
309A02:  ADD             R1, PC; _ZN10CGameLogic9SkipStateE_ptr
309A04:  LDR             R1, [R1]; CGameLogic::SkipState ...
309A06:  LDR             R1, [R1]; CGameLogic::SkipState
309A08:  CMP             R1, #4
309A0A:  BNE             loc_309A12
309A0C:  CMP             R0, #0
309A0E:  IT NE
309A10:  BXNE            LR
309A12:  PUSH            {R4,R6,R7,LR}
309A14:  ADD             R7, SP, #0x10+var_8
309A16:  CMP             R1, #2
309A18:  BNE             loc_309A38
309A1A:  LDR             R0, =(TheCamera_ptr - 0x309A26)
309A1C:  MOVS            R1, #0; unsigned __int8
309A1E:  MOVS            R2, #0; unsigned __int8
309A20:  MOVS            R3, #0; unsigned __int8
309A22:  ADD             R0, PC; TheCamera_ptr
309A24:  LDR             R4, [R0]; TheCamera
309A26:  MOV             R0, R4; this
309A28:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
309A2C:  MOV             R0, R4; this
309A2E:  MOV.W           R1, #0x3F000000; float
309A32:  MOVS            R2, #1; __int16
309A34:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
309A38:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309A40)
309A3A:  MOVS            R1, #0; int
309A3C:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309A3E:  LDR             R0, [R0]; CGameLogic::SkipState ...
309A40:  STR             R1, [R0]; CGameLogic::SkipState
309A42:  MOVS            R0, #0; this
309A44:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
309A48:  LDRH.W          R1, [R0,#0x110]
309A4C:  BIC.W           R1, R1, #0x100
309A50:  STRH.W          R1, [R0,#0x110]
309A54:  POP.W           {R4,R6,R7,LR}
309A58:  BX              LR
