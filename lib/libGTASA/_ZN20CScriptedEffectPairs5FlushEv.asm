; =========================================================
; Game Engine Function: _ZN20CScriptedEffectPairs5FlushEv
; Address            : 0x59C640 - 0x59C694
; =========================================================

59C640:  MOV.W           R1, #0xFFFFFFFF
59C644:  MOVS            R2, #0
59C646:  STR             R1, [R0,#0x20]
59C648:  STRD.W          R1, R1, [R0,#0x14]
59C64C:  STRD.W          R1, R1, [R0,#0xC]
59C650:  STRD.W          R1, R1, [R0,#4]
59C654:  STRB.W          R2, [R0,#0x24]
59C658:  STR             R1, [R0,#0x44]
59C65A:  STRD.W          R1, R1, [R0,#0x28]
59C65E:  STRD.W          R1, R1, [R0,#0x30]
59C662:  STRD.W          R1, R1, [R0,#0x38]
59C666:  STRB.W          R2, [R0,#0x48]
59C66A:  STR             R1, [R0,#0x68]
59C66C:  STRB.W          R2, [R0,#0x6C]
59C670:  STRD.W          R1, R1, [R0,#0x4C]
59C674:  STRD.W          R1, R1, [R0,#0x54]
59C678:  STRD.W          R1, R1, [R0,#0x5C]
59C67C:  STRB.W          R2, [R0,#0x90]
59C680:  STR.W           R1, [R0,#0x8C]
59C684:  STRD.W          R1, R1, [R0,#0x70]
59C688:  STRD.W          R1, R1, [R0,#0x78]
59C68C:  STRD.W          R1, R1, [R0,#0x80]
59C690:  STR             R2, [R0]
59C692:  BX              LR
