; =========================================================
; Game Engine Function: _ZN4CPed14SetWeaponSkillE11eWeaponTypea
; Address            : 0x4A5676 - 0x4A5684
; =========================================================

4A5676:  LDR.W           R1, [R0,#0x59C]
4A567A:  CMP             R1, #2
4A567C:  IT CS
4A567E:  STRBCS.W        R2, [R0,#0x734]
4A5682:  BX              LR
