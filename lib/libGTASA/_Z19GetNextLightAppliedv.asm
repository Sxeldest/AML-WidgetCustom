; =========================================================
; Game Engine Function: _Z19GetNextLightAppliedv
; Address            : 0x221BD0 - 0x221C40
; =========================================================

221BD0:  LDR             R0, =(openglLightApplied_ptr - 0x221BD6)
221BD2:  ADD             R0, PC; openglLightApplied_ptr
221BD4:  LDR             R0, [R0]; openglLightApplied
221BD6:  LDR             R0, [R0,#(dword_6BD6B4 - 0x6BD6B0)]
221BD8:  CMP             R0, #0
221BDA:  ITT EQ
221BDC:  MOVEQ           R0, #1
221BDE:  BXEQ            LR
221BE0:  LDR             R0, =(openglLightApplied_ptr - 0x221BE6)
221BE2:  ADD             R0, PC; openglLightApplied_ptr
221BE4:  LDR             R0, [R0]; openglLightApplied
221BE6:  LDR             R0, [R0,#(dword_6BD6B8 - 0x6BD6B0)]
221BE8:  CMP             R0, #0
221BEA:  ITT EQ
221BEC:  MOVEQ           R0, #2
221BEE:  BXEQ            LR
221BF0:  LDR             R0, =(openglLightApplied_ptr - 0x221BF6)
221BF2:  ADD             R0, PC; openglLightApplied_ptr
221BF4:  LDR             R0, [R0]; openglLightApplied
221BF6:  LDR             R0, [R0,#(dword_6BD6BC - 0x6BD6B0)]
221BF8:  CBZ             R0, loc_221C38
221BFA:  LDR             R0, =(openglLightApplied_ptr - 0x221C00)
221BFC:  ADD             R0, PC; openglLightApplied_ptr
221BFE:  LDR             R0, [R0]; openglLightApplied
221C00:  LDR             R0, [R0,#(dword_6BD6C0 - 0x6BD6B0)]
221C02:  CMP             R0, #0
221C04:  ITT EQ
221C06:  MOVEQ           R0, #4
221C08:  BXEQ            LR
221C0A:  LDR             R0, =(openglLightApplied_ptr - 0x221C10)
221C0C:  ADD             R0, PC; openglLightApplied_ptr
221C0E:  LDR             R0, [R0]; openglLightApplied
221C10:  LDR             R0, [R0,#(dword_6BD6C4 - 0x6BD6B0)]
221C12:  CBZ             R0, loc_221C3C
221C14:  LDR             R0, =(openglLightApplied_ptr - 0x221C1A)
221C16:  ADD             R0, PC; openglLightApplied_ptr
221C18:  LDR             R0, [R0]; openglLightApplied
221C1A:  LDR             R0, [R0,#(dword_6BD6C8 - 0x6BD6B0)]
221C1C:  CMP             R0, #0
221C1E:  ITT EQ
221C20:  MOVEQ           R0, #6
221C22:  BXEQ            LR
221C24:  LDR             R0, =(openglLightApplied_ptr - 0x221C2A)
221C26:  ADD             R0, PC; openglLightApplied_ptr
221C28:  LDR             R0, [R0]; openglLightApplied
221C2A:  LDR             R1, [R0,#(dword_6BD6CC - 0x6BD6B0)]
221C2C:  MOV.W           R0, #0xFFFFFFFF
221C30:  CMP             R1, #0
221C32:  IT EQ
221C34:  MOVEQ           R0, #7
221C36:  BX              LR
221C38:  MOVS            R0, #3
221C3A:  BX              LR
221C3C:  MOVS            R0, #5
221C3E:  BX              LR
