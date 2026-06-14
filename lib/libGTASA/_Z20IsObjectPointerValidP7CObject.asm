; =========================================================
; Game Engine Function: _Z20IsObjectPointerValidP7CObject
; Address            : 0x455F84 - 0x455FC8
; =========================================================

455F84:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x455F8A)
455F86:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
455F88:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
455F8A:  LDR             R1, [R1]; CPools::ms_pObjectPool
455F8C:  LDR             R2, [R1]
455F8E:  SUBS            R2, R0, R2
455F90:  CMP             R2, #0
455F92:  BLT             loc_455FC4
455F94:  MOVW            R3, #0x8FD9
455F98:  ASRS            R2, R2, #2
455F9A:  MOVT            R3, #0xD8FD
455F9E:  MULS            R2, R3
455FA0:  LDR             R3, [R1,#8]
455FA2:  CMP             R2, R3
455FA4:  BGE             loc_455FC4
455FA6:  LDR             R1, [R1,#4]
455FA8:  LDRSB           R1, [R1,R2]
455FAA:  CMP             R1, #0
455FAC:  BLT             loc_455FC4
455FAE:  LDRB            R1, [R0,#0x1D]
455FB0:  LSLS            R1, R1, #0x1F
455FB2:  ITT NE
455FB4:  MOVNE           R0, #1
455FB6:  BXNE            LR
455FB8:  LDR.W           R0, [R0,#0xB4]
455FBC:  CMP             R0, #0
455FBE:  IT NE
455FC0:  MOVNE           R0, #1
455FC2:  BX              LR
455FC4:  MOVS            R0, #0
455FC6:  BX              LR
