; =========================================================
; Game Engine Function: _ZN11CWeaponInfo17GetSkillStatIndexE11eWeaponType
; Address            : 0x5E42C8 - 0x5E42E4
; =========================================================

5E42C8:  SUB.W           R1, R0, #0x16
5E42CC:  CMP             R1, #0xA
5E42CE:  ITT HI
5E42D0:  MOVHI.W         R0, #0xFFFFFFFF
5E42D4:  BXHI            LR
5E42D6:  ADD.W           R1, R0, #0x2F ; '/'
5E42DA:  CMP             R0, #0x1F
5E42DC:  IT GT
5E42DE:  MOVGT           R1, #0x4B ; 'K'
5E42E0:  MOV             R0, R1
5E42E2:  BX              LR
