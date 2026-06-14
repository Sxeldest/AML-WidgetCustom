; =========================================================
; Game Engine Function: _ZN10CPhoneInfo26SetPhoneMessage_RepeatedlyEiPtS0_S0_S0_S0_S0_
; Address            : 0x31CEB8 - 0x31CEEE
; =========================================================

31CEB8:  CBZ             R2, loc_31CEEC
31CEBA:  PUSH            {R4-R7,LR}
31CEBC:  ADD             R7, SP, #0xC
31CEBE:  PUSH.W          {R11}
31CEC2:  MOVS            R6, #0x34 ; '4'
31CEC4:  LDRD.W          LR, R12, [R7,#arg_8]
31CEC8:  MLA.W           R6, R1, R6, R0
31CECC:  LDRD.W          R5, R4, [R7,#arg_0]
31CED0:  ADD.W           R11, R6, #0x14
31CED4:  STM.W           R11, {R2,R3,R5}
31CED8:  MOVS            R2, #5
31CEDA:  STRD.W          R4, LR, [R6,#0x20]
31CEDE:  STR.W           R12, [R6,#0x28]
31CEE2:  POP.W           {R11}
31CEE6:  POP.W           {R4-R7,LR}
31CEEA:  B               sub_31CEEE
31CEEC:  MOVS            R2, #3
