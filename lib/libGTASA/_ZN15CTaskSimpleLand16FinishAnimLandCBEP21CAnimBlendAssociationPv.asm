; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLand16FinishAnimLandCBEP21CAnimBlendAssociationPv
; Address            : 0x52CE0C - 0x52CE38
; =========================================================

52CE0C:  CMP             R1, #0
52CE0E:  ITTTT NE
52CE10:  LDRBNE          R2, [R1,#0x10]
52CE12:  MOVNE           R3, #0
52CE14:  STRNE           R3, [R1,#8]
52CE16:  ORRNE.W         R2, R2, #1
52CE1A:  IT NE
52CE1C:  STRBNE          R2, [R1,#0x10]
52CE1E:  CBZ             R0, locret_52CE36
52CE20:  LDRSH.W         R1, [R0,#0x2C]
52CE24:  CMP             R1, #0x77 ; 'w'
52CE26:  ITT NE
52CE28:  CMPNE           R1, #0xA
52CE2A:  BXNE            LR
52CE2C:  MOV             R1, #0xC2C80000
52CE34:  STR             R1, [R0,#0x1C]
52CE36:  BX              LR
